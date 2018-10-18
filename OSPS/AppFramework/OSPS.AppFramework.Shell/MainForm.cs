using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using OSPS.Device.HikSnap;
using System.IO;
using OSPS.AppFramework.Common;
using System.Threading;
using OSPS.AppFramework.AccessDatabase;
using OSPS.Business.CommonFormFunc;

namespace OSPS.AppFramework.Shell
{
    public partial class MainForm : Form
    {

        #region Filed
        private Thread _AlarmChanThread = null;
        private Thread _CallBackMsgThread = null;

        private Int32 _AlarmHandle = -1;     //布防结果
        private bool _InitSDK = false;
        private Int32 _DVRChannel = 1;       //车道号
        private int _UserLoginID = -1;       //设备登录结果
        private Int32 _RealHandle = -1;      //预览结果

        private string _IPAddress = "";     //设备IP
        private string _UserName = "";      //用户名
        private string _Password = "";      //密码
        private int _DVRPortNumber = 0;     //设备端口号

        private string _gateCtrlPort = "";  //道闸端口号
        private int _address = 1;           //道闸编号
        private int _OpenGate1Channel = -1;  //
        private int _CloseGate1Channel = -1;
        private bool _IsOpen = false;

        private bool _IsCapture = false;    //是否为抓拍机

        CHCNetSDK.MSGCallBack m_falarmData = null;

        private static string _ConfigureFile = "\\Configure\\CameraParamCfg.xml";
        private static string _RootSection = "CameraParam";

        private string _SavePictureFolder = "";     //保存抓拍图片文件夹
        private string _PictureFilePath = "";       //图片的完整路径

        #endregion 

        #region property
        private string _ErrorText = "";
        public string ErrorText
        {
            get
            {
                return _ErrorText;
            }
        }

        private string _trunkNo = "";
        public string TrunkNo
        {
            get
            {
                return _trunkNo;
            }
        }

        private string _EnterTime = "";
        public string EnterTime
        {
            get
            {
                return _EnterTime;
            }
        }

        private string _State = "";
        public string State
        {
            get
            {
                return _State;
            }
        }

        private string _ImageIndex = "";
        public string ImageIndex
        {
            get
            {
                return _ImageIndex;
            }
        }

        #endregion 

        public MainForm()
        {
            InitializeComponent();
            Init();
            
        }

        #region 控件方法

        private void MainForm_Load(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
            GetChannelParam(ref _gateCtrlPort, ref _OpenGate1Channel, ref _CloseGate1Channel);
            GetSavePictureFolder(ref _SavePictureFolder);
            StartCallBackMsgThread();   
            if (UserLogin())
            {
                if (!StartPreview())
                {
                    MessageBox.Show("预览失败，原因为：" + _ErrorText);
                    WriteLogFile("预览失败，原因为：" + _ErrorText);
                    return;
                }
                WriteLogFile("===========启动布防线程============");
                StartAlarmChanThread();
                WriteLogFile("==========布防完成线程============");
                WriteLogFile("启动网络抓拍");
                this.lbAgent.Text = "已登录";
            }
            else
            {

                MessageBox.Show("登陆设备失败，原因为：" + _ErrorText);
                WriteLogFile("登陆设备失败，原因为：" + _ErrorText);
            }         
            this.lbCurrTime.Text = DateTime.Now.ToString();
            lOrderState.Text = "没有车辆进场";
            RefreashData();
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            this.lbCurrTime.Text = DateTime.Now.ToString();

        }
        private void btnLogoff_Click(object sender, EventArgs e)
        {
            
        }
        private void btnClear_Click(object sender, EventArgs e)
        {
            this.txtLog.Clear();
        }
        private void btnOpen_Click(object sender, EventArgs e)
        {
            if(!_IsOpen)               
                SendGateCtrlCommand(_OpenGate1Channel);
        }
        private void btnClose_Click(object sender, EventArgs e)
        {
            if(_IsOpen)
                SendGateCtrlCommand(_CloseGate1Channel);
        }
        private void btnQuery_Click(object sender, EventArgs e)
        {
            if (txtTrunkNo.Text != "")
            {
                int state = OrderSet.GetOrderStateByTrunkNo(txtTrunkNo.Text.Trim());
                if (state != -1)
                {
                    string stateName = OrderStatesSet.GetStateNameForOrder(state);
                    lState.Text = stateName;
                }
                else
                {
                    lState.Text = "未查询到该车牌";
                }
            }
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            if (_AlarmHandle >= 0)
            {
                StopAlarmChan();
            }
            if (_RealHandle >= 0)
            {
                StopPreview();
            }
            if (_UserLoginID >= 0)
            {
                UserLogout();
            }
            CHCNetSDK.NET_DVR_Cleanup();
            this.Close();
        }
        private void btnRefreash_Click(object sender, EventArgs e)
        {
            txtTrunkNo.Clear();
            lEnterTime.Text = "";
            this.lTrunkNoColor.Text = "";
            this.lState.Text = "";
            lOrderState.Text = "没有车辆进场";
        }
        /// <summary>
        /// 每30s刷新一次，更新未过皮重但是停车场叫了号的车辆
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void timerRefreash_Tick(object sender, EventArgs e)
        {
            RefreashData();
        }
        #endregion 
      
        #region 读取配置参数
        /// <summary>
        /// 读取道闸参数
        /// </summary>
        /// <param name="szSection">父节点</param>
        /// <param name="szPort">串口号</param>
        /// <param name="szOpenGate1Channel">开启道闸</param>
        /// <param name="szCloseGate1Channel">关闭道闸</param>
        /// <returns></returns>
        private bool GetChannelParam(string szSection, ref string szPort, ref int szOpenGate1Channel, ref int szCloseGate1Channel)
        {
            bool bRet = false;
            try
            {
                string szFilename = System.AppDomain.CurrentDomain.BaseDirectory + _ConfigureFile;
                szPort = ConfigureProcess.GetXMLConfiguration(szFilename, _RootSection, szSection, "GateCtrlPort");
                string openGate1Channel = ConfigureProcess.GetXMLConfiguration(szFilename, _RootSection, szSection, "OpenGate1Channel");
                string closeGate1Channel = ConfigureProcess.GetXMLConfiguration(szFilename, _RootSection, szSection, "CloseGate1Channel");
                szOpenGate1Channel = CommonFunction.GetIntValue(openGate1Channel);
                szCloseGate1Channel = CommonFunction.GetIntValue(closeGate1Channel);
                bRet = true;
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return bRet;
        }

        private bool GetChannelParam(ref string szPort, ref int szOpenGate1Channel, ref int szCloseGate1Channel)
        {
            bool bRet = GetChannelParam("GateCtrlConfigure", ref szPort, ref szOpenGate1Channel, ref szCloseGate1Channel);
            return bRet;
        }

        /// <summary>
        /// 读取摄像机参数
        /// </summary>
        /// <param name="szSection">父节点</param>
        /// <param name="szDeviceIP">摄像机IP</param>
        /// <param name="szPortNumber">设备端口号</param>
        /// <param name="szUserName">设备用户名</param>
        /// <param name="szPassword">设备密码</param>
        /// <returns></returns>
        private bool GetCameraParam(string szSection, ref string szDeviceIP, ref int szPortNumber, ref string szUserName, ref string szPassword)
        {
            bool bRet = false;
            try
            {
                string szFilename = System.AppDomain.CurrentDomain.BaseDirectory + _ConfigureFile;
                szDeviceIP = ConfigureProcess.GetXMLConfiguration(szFilename, _RootSection, szSection, "DeviceIP");
                string portNumber = ConfigureProcess.GetXMLConfiguration(szFilename, _RootSection, szSection, "PortNumber");
                szUserName = ConfigureProcess.GetXMLConfiguration(szFilename, _RootSection, szSection, "UserName");
                szPassword = ConfigureProcess.GetXMLConfiguration(szFilename, _RootSection, szSection, "Password");
                szPortNumber = CommonFunction.GetIntValue(portNumber);
                bRet = true;
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return bRet;
        }
        private bool GetCameraParam(ref string szDeviceIP, ref int szPortNumber, ref string szUserName, ref string szPassword)
        {
            bool bRet = GetCameraParam("CameraConfigure", ref szDeviceIP, ref szPortNumber, ref szUserName, ref szPassword);
            return bRet;
        }

        private bool GetSavePictureFolder(ref string szFolder)
        {
            bool bRet = false;
            try
            {
                string szFilename = System.AppDomain.CurrentDomain.BaseDirectory + _ConfigureFile;
                szFolder = ConfigureProcess.GetXMLConfiguration(szFilename, _RootSection, "PicturePath", "SavePictureFolder");
                bRet = true;
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return bRet;
        }
        #endregion

        #region 启动布防线程
        private void StartAlarmChanThread()
        {
            try
            {
                _AlarmChanThread = new Thread(new ThreadStart(AlarmChanThread));
                _AlarmChanThread.IsBackground = false;
                _AlarmChanThread.Name = "AlarmChanThread";
                _AlarmChanThread.Start();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
        private void AlarmChanThread()
        {
            SetAlarmChanInvoke();
        }
        private delegate void SetAlarmChanDelegate();
        private void SetAlarmChanInvoke()
        {
            this.Invoke(new SetAlarmChanDelegate(this.SetAlarmChan));
        }
        private void SetAlarmChan()
        {
            if (StartAlarmChan())
            {
                WriteLogFile("启动布防成功");
                //SetPictureBoxEvent("E:\\Picture\\20181016142927.jpg");
            }
            else
            {
                WriteLogFile("启动布防失败");
                //SetControlTextEvent(this.txtLog,"E:\\Picture\\20181016142927.jpg");
            }
        }
        #endregion

        #region 设置回调线程
        private void StartCallBackMsgThread()
        {
            try
            {
                _CallBackMsgThread = new Thread(new ThreadStart(CallBackMsgThread));
                _CallBackMsgThread.IsBackground = false;
                _CallBackMsgThread.Name = "CallBackMsgThread";
                _CallBackMsgThread.Start();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void CallBackMsgThread()
        {
            SetCallBackMsgInvoke();
        }
        private delegate void SetCallBackMsgDelegate();
        private void SetCallBackMsgInvoke()
        {
            this.Invoke(new SetCallBackMsgDelegate(this.SetCallBackMsg));
        }
        public void SetCallBackMsg()
        {
            try
            {
                //设置报警回调函数
                m_falarmData = new CHCNetSDK.MSGCallBack(MsgCallback);
                if (!CHCNetSDK.NET_DVR_SetDVRMessageCallBack_V30(m_falarmData, IntPtr.Zero))
                {
                    uint iLastErr = CHCNetSDK.NET_DVR_GetLastError();
                    _ErrorText = "设置报警失败，错误号：" + iLastErr; //设置报警失败，输出错误号
                    MessageBox.Show(_ErrorText);
                    return;
                }
                else
                {
                    //MessageBox.Show("设置回调成功");
                    WriteLogFile("设置回调函数成功");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                WriteLogFile(ex.Message);
            }
        }
        #endregion

        #region 海康摄像机方法

        private bool Init()
        {
            try
            {
                _InitSDK = CHCNetSDK.NET_DVR_Init();
                if (_InitSDK == false)
                {
                    MessageBox.Show("NET_DVR_Init error!");
                    WriteLogFile("SDK初始化失败");
                    return false;
                }
                else
                {
                    WriteLogFile("SDK初始化成功");
                    return true;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                WriteLogFile("SDK初始化异常，原因为:" + ex.Message);
                return false;
            }
        }
        private bool UserLogin()
        {
            if (_UserLoginID < 0)
            {
                CHCNetSDK.NET_DVR_DEVICEINFO_V30 DeviceInfo = new CHCNetSDK.NET_DVR_DEVICEINFO_V30();

                bool iRet = GetCameraParam(ref _IPAddress, ref _DVRPortNumber, ref _UserName, ref _Password);
                if (iRet)
                {
                    //登录设备 Login the device
                    _UserLoginID = CHCNetSDK.NET_DVR_Login_V30(_IPAddress, _DVRPortNumber, _UserName, _Password, ref DeviceInfo);
                    if (_UserLoginID < 0)
                    {
                        uint nLastErr = CHCNetSDK.NET_DVR_GetLastError();
                        _ErrorText = "NET_DVR_Login_V30 failed, error code= " + nLastErr; //登录失败，输出错误号
                        _ErrorText += "\r\nIP: " + _IPAddress + ", Port: " + _DVRPortNumber.ToString();
                        WriteLogFile(_ErrorText);
                        return false;
                    }
                    else
                    {
                        WriteLogFile("登录成功");
                        return true;
                    }
                }
                else
                {
                    MessageBox.Show("读取摄像机参数失败");
                    return false;
                }
            }
            else
            {

                return true;
            }
        }
        private bool UserLogout()
        {
            bool bRet = false;
            if (_UserLoginID >= 0)
            {
                //注销登录 Logout the device
                if (_RealHandle >= 0)
                {
                    StopPreview();
                }
                WriteLogFile("开始注销登录");
                if (!CHCNetSDK.NET_DVR_Logout(_UserLoginID))
                {
                    uint nLastErr = CHCNetSDK.NET_DVR_GetLastError();
                    _ErrorText = "NET_DVR_Logout failed, error code= " + nLastErr;
                    WriteLogFile(_ErrorText);
                    bRet = false;
                }
                else
                {
                    bRet = true;
                    _UserLoginID = -1;
                }
            }
            else
                bRet = true;
            return bRet;
        }
        private bool StartPreview()
        {
            bool bRet = false;
            if (_UserLoginID < 0)
            {
                _ErrorText = "Not Login,Please First Login Device!";
                MessageBox.Show(_ErrorText);
                return false;
            }
            if (_RealHandle < 0)
            {
                OSPS.Device.HikCamera.CHCNetSDK.NET_DVR_PREVIEWINFO lpPreviewInfo = new OSPS.Device.HikCamera.CHCNetSDK.NET_DVR_PREVIEWINFO();
                lpPreviewInfo.hPlayWnd = this.picPreview.Handle;//预览窗口
                lpPreviewInfo.lChannel = _DVRChannel;// Int16.Parse(textBoxChannel.Text);//预te览的设备通道
                lpPreviewInfo.dwStreamType = 0;//码流类型：0-主码流，1-子码流，2-码流3，3-码流4，以此类推
                lpPreviewInfo.dwLinkMode = 0;//连接方式：0- TCP方式，1- UDP方式，2- 多播方式，3- RTP方式，4-RTP/RTSP，5-RSTP/HTTP 
                lpPreviewInfo.bBlocked = true; //0- 非阻塞取流，1- 阻塞取流
                //lpPreviewInfo.dwDisplayBufNum = 15; //播放库播放缓冲区最大缓冲帧数

                OSPS.Device.HikCamera.CHCNetSDK.REALDATACALLBACK RealData = new OSPS.Device.HikCamera.CHCNetSDK.REALDATACALLBACK(RealDataCallBack);//预览实时流回调函数
                IntPtr pUser = new IntPtr();//用户数据

                //打开预览 Start live view 
                _RealHandle = OSPS.Device.HikCamera.CHCNetSDK.NET_DVR_RealPlay_V40(_UserLoginID, ref lpPreviewInfo, null/*RealData*/, pUser);
                if (_RealHandle < 0)
                {
                    uint iLastErr = OSPS.Device.HikCamera.CHCNetSDK.NET_DVR_GetLastError();
                    _ErrorText = "NET_DVR_RealPlay_V40 failed, error code= " + iLastErr; //预览失败，输出错误号
                    //MessageBox.Show(_ErrorText);
                    bRet = false;
                }
                else
                {
                    //预览成功
                    bRet = true;
                    WriteLogFile("启动预览成功");
                }
            }
            else
            {
                bRet = true;
            }

            return bRet;
        }
        private bool StopPreview()
        {
            bool bRet = false;
            if (_RealHandle >= 0)
            {
                //停止预览 Stop live view 
                if (!CHCNetSDK.NET_DVR_StopRealPlay(_RealHandle))
                {
                    uint nLastErr = CHCNetSDK.NET_DVR_GetLastError();
                    _ErrorText = "NET_DVR_StopRealPlay failed, error code= " + nLastErr;
                    bRet = false;
                }
                else
                {
                    _RealHandle = -1;
                    bRet = true;
                }
            }
            else
                bRet = true;
            return bRet;
        }
        private bool SaveJPEGFile(string szFilename)
        {
            if (_UserLoginID < 0) return false;
            if (_RealHandle < 0) return false;

            if (!_IsCapture)
            {
                CHCNetSDK.NET_DVR_JPEGPARA lpJpegPara = new CHCNetSDK.NET_DVR_JPEGPARA();
                lpJpegPara.wPicQuality = 0; //图像质量 Image quality
                lpJpegPara.wPicSize = 0xff; //抓图分辨率 Picture size: 2- 4CIF，0xff- Auto(使用当前码流分辨率)，抓图分辨率需要设备支持，更多取值请参考SDK文档

                //JPEG抓图 Capture a JPEG picture
                if (!CHCNetSDK.NET_DVR_CaptureJPEGPicture(_UserLoginID, 1, ref lpJpegPara, szFilename))
                {
                    uint nLastErr = CHCNetSDK.NET_DVR_GetLastError();
                    _ErrorText = "NET_DVR_CaptureJPEGPicture failed, error code= " + nLastErr;
                    return false;
                }
                else
                {
                    return true;
                }
            }
            else
            {
                OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_PLATE_RESULT struPlateResultInfo = new OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_PLATE_RESULT();
                struPlateResultInfo.pBuffer1 = Marshal.AllocHGlobal(2 * 1024 * 1024);
                struPlateResultInfo.pBuffer2 = Marshal.AllocHGlobal(1024 * 1024);

                OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_MANUALSNAP struInter = new OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_MANUALSNAP();
                struInter.byLaneNo = 1;

                if (!OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_ManualSnap(_UserLoginID, ref struInter, ref struPlateResultInfo))
                {
                    uint iLastErr = OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_GetLastError();
                    string str = "NET_DVR_ManualSnap failed, error code= " + iLastErr;
                }
                else
                {
                    int dwPicLen = (int)struPlateResultInfo.dwPicLen;
                    int dwPicPlateLen = (int)struPlateResultInfo.dwPicPlateLen;
                    try
                    {
                        if (dwPicLen > 0)
                        {
                            FileStream fs = new FileStream(szFilename, FileMode.Create);
                            byte[] by = new byte[dwPicLen];
                            Marshal.Copy(struPlateResultInfo.pBuffer1, by, 0, dwPicLen);
                            fs.Write(by, 0, dwPicLen);
                            fs.Close();
                        }
                        if (dwPicPlateLen > 0)
                        {
                            FileStream fs = new FileStream("车牌图.jpg", FileMode.Create);
                            byte[] by = new byte[dwPicPlateLen];
                            Marshal.Copy(struPlateResultInfo.pBuffer2, by, 0, dwPicPlateLen);
                            fs.Write(by, 0, dwPicPlateLen);
                            fs.Close();
                        }
                    }
                    catch (Exception ex)
                    {
                        _ErrorText = ex.Message;
                    }
                    //struPlateResultInfo.struPlateInfo.sLicense为车牌号码，GB2312字符集或者GBK字符集
                }
                Marshal.FreeHGlobal(struPlateResultInfo.pBuffer1);
                Marshal.FreeHGlobal(struPlateResultInfo.pBuffer2);
                return true;
            }
        }
        /// <summary>
        /// 预览回调函数
        /// </summary>
        /// <param name="lRealHandle"></param>
        /// <param name="dwDataType"></param>
        /// <param name="pBuffer"></param>
        /// <param name="dwBufSize"></param>
        /// <param name="pUser"></param>
        private void RealDataCallBack(Int32 lRealHandle, UInt32 dwDataType, ref byte pBuffer, UInt32 dwBufSize, IntPtr pUser)
        {
        }

        #region 布防回调处理s
        /// <summary>
        /// 布防回调函数
        /// </summary>
        /// <param name="lCommand"></param>
        /// <param name="pAlarmer"></param>
        /// <param name="pAlarmInfo"></param>
        /// <param name="dwBufLen"></param>
        /// <param name="pUser"></param>
        public void MsgCallback(int lCommand, ref CHCNetSDK.NET_DVR_ALARMER pAlarmer, IntPtr pAlarmInfo, uint dwBufLen, IntPtr pUser)
        {
            try
            {
                //通过lCommand来判断接收到的报警信息类型，不同的lCommand对应不同的pAlarmInfo内容
                switch (lCommand)
                {
                    case CHCNetSDK.COMM_UPLOAD_PLATE_RESULT://交通抓拍结果上传(老报警信息类型)
                        ProcessCommAlarm_Plate(ref pAlarmer, pAlarmInfo, dwBufLen, pUser);
                        break;
                    case CHCNetSDK.COMM_ITS_PLATE_RESULT://交通抓拍结果上传(新报警信息类型)
                        ProcessCommAlarm_ITSPlate(ref pAlarmer, pAlarmInfo, dwBufLen, pUser);
                        break;
                    default:
                        break;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }

        }

        /// <summary>
        /// 老回调处理
        /// </summary>
        /// <param name="pAlarmer"></param>
        /// <param name="pAlarmInfo"></param>
        /// <param name="dwBufLen"></param>
        /// <param name="pUser"></param>
        private void ProcessCommAlarm_Plate(ref CHCNetSDK.NET_DVR_ALARMER pAlarmer, IntPtr pAlarmInfo, uint dwBufLen, IntPtr pUser)
        {
            try
            {
                CHCNetSDK.NET_DVR_PLATE_RESULT struPlateResultInfo = new CHCNetSDK.NET_DVR_PLATE_RESULT();
                uint dwSize = (uint)Marshal.SizeOf(struPlateResultInfo);

                struPlateResultInfo = (CHCNetSDK.NET_DVR_PLATE_RESULT)Marshal.PtrToStructure(pAlarmInfo, typeof(CHCNetSDK.NET_DVR_PLATE_RESULT));

                //保存抓拍图片
                string str = "";
                if (struPlateResultInfo.byResultType == 1 && struPlateResultInfo.dwPicLen != 0)
                {
                    str = "近景图.jpg";
                    FileStream fs = new FileStream(str, FileMode.Create);
                    int iLen = (int)struPlateResultInfo.dwPicLen;
                    byte[] by = new byte[iLen];
                    Marshal.Copy(struPlateResultInfo.pBuffer1, by, 0, iLen);
                    fs.Write(by, 0, iLen);
                    fs.Close();
                }
                if (struPlateResultInfo.dwPicPlateLen != 0)
                {
                    WriteLogFile("保存车牌图");
                    str = "车牌图.jpg";
                    FileStream fs = new FileStream(str, FileMode.Create);
                    int iLen = (int)struPlateResultInfo.dwPicPlateLen;
                    byte[] by = new byte[iLen];
                    Marshal.Copy(struPlateResultInfo.pBuffer2, by, 0, iLen);
                    fs.Write(by, 0, iLen);
                    fs.Close();
                }
                GC.KeepAlive(m_falarmData);
                //抓拍时间：年月日时分秒
                string strTimeYear = System.Text.Encoding.UTF8.GetString(struPlateResultInfo.byAbsTime);

                //上传结果
                string trunkNo = "车牌号：" + struPlateResultInfo.struPlateInfo.sLicense;
                this.lOrderState.Text = trunkNo;

                MessageBox.Show(trunkNo);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }

        }

        /// <summary>
        /// 新回调处理
        /// </summary>
        /// <param name="pAlarmer"></param>
        /// <param name="pAlarmInfo"></param>
        /// <param name="dwBufLen"></param>
        /// <param name="pUser"></param>
        private void ProcessCommAlarm_ITSPlate(ref CHCNetSDK.NET_DVR_ALARMER pAlarmer, IntPtr pAlarmInfo, uint dwBufLen, IntPtr pUser)
        {
            try
            {
                WriteLogFile("===============开始识别====================");
                CHCNetSDK.NET_ITS_PLATE_RESULT struITSPlateResult = new CHCNetSDK.NET_ITS_PLATE_RESULT();
                uint dwSize = (uint)Marshal.SizeOf(struITSPlateResult);

                struITSPlateResult = (CHCNetSDK.NET_ITS_PLATE_RESULT)Marshal.PtrToStructure(pAlarmInfo, typeof(CHCNetSDK.NET_ITS_PLATE_RESULT));

                _ImageIndex  = DateTime.Now.ToString("yyyyMMddHHmmss");
                WriteLogFile("保存抓拍图片...");
                //保存抓拍图片
                if (struITSPlateResult.struPicInfo[1].dwDataLen != 0)
                {
                    string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, _SavePictureFolder + DateTime.Now.ToString("yyyyMMdd")+ "\\");
                    DirectoryInfo di = new DirectoryInfo(path);
                    if (!di.Exists) di.Create();
                    string pictureFileName = _ImageIndex + ".jpg";
                    _PictureFilePath = Path.Combine(path, pictureFileName);
                    FileStream fs = new FileStream(_PictureFilePath, FileMode.Create);
                    int iLen = (int)struITSPlateResult.struPicInfo[1].dwDataLen;
                    byte[] by = new byte[iLen];
                    Marshal.Copy(struITSPlateResult.struPicInfo[1].pBuffer, by, 0, iLen);
                    fs.Write(by, 0, iLen);
                    fs.Close();
                    //WriteLogFile("图片名称：" + pictureFileName);
                }
                WriteLogFile("图片完整路径: " + _PictureFilePath);
                //显示抓拍图片
                SetPictureBoxEvent(_PictureFilePath);

                GC.KeepAlive(m_falarmData);   //保持子线程一直活跃，防止GC自动回收
                //抓拍时间：年月日时分秒
                _EnterTime = string.Format("{0:D4}", struITSPlateResult.struSnapFirstPicTime.wYear) + "-" +
                    string.Format("{0:D2}", struITSPlateResult.struSnapFirstPicTime.byMonth) + "-" +
                    string.Format("{0:D2}", struITSPlateResult.struSnapFirstPicTime.byDay) + " "
                    + string.Format("{0:D2}", struITSPlateResult.struSnapFirstPicTime.byHour) + ":"
                    + string.Format("{0:D2}", struITSPlateResult.struSnapFirstPicTime.byMinute) + ":"
                    + string.Format("{0:D2}", struITSPlateResult.struSnapFirstPicTime.bySecond);

                //上传结果
                string trunkNo = struITSPlateResult.struPlateInfo.sLicense;   //带车牌颜色

                string trunkColor = trunkNo.Substring(0, 1);        //获取车牌颜色
                WriteLogFile("车牌颜色为: " + trunkColor);

                _trunkNo = trunkNo.Substring(1, trunkNo.Length - 1);     //剔除车牌颜色
                WriteLogFile("车牌号: " + _trunkNo);

                if (InvokeRequired)
                {
                    WriteLogFile("查询车牌号订单状态...");
                    int orderState = OSPS.AppFramework.AccessDatabase.OrderSet.GetOrderStateByTrunkNo(_trunkNo);                
                    WriteLogFile("查询状态:" + orderState);

                    if (trunkNo != "")
                    {
                        SetTrunkNoTextEvent(_trunkNo);
                    }
                    if (trunkColor != "")
                    {
                        SetTrunkNoColorTextEvent(trunkColor);
                    }
                    if (_EnterTime != "")
                    {
                        SetEnterTimeTextEvent(_EnterTime);
                    }                  
                    //如果车牌号订单状态>0,说明东边停车场已经叫号，抬起道闸 
                    if (orderState > 0)
                    {
                        string showText = string.Format("车牌号:{0}，入场时间:{1}", _trunkNo, _EnterTime);
                        SetTextEvent(showText);
                        WriteLogFile(showText);
                        //通过状态查询显示文本
                        _State = OrderStatesSet.GetStateNameForOrder(orderState);

                        SetTrunkNoStateTextEvent(_State);
                        WriteLogFile("车牌状态:" + _State);

                        //直接写入页面，方便记录查询
                        string log = string.Format("时间: {0}: 车牌号：{1},入场时间: {2}, 当前状态:{3}, 抓拍图片路径:{4}\n", DateTime.Now.ToString(), _trunkNo, _EnterTime, _State, _PictureFilePath);
                        SetLogTextEvent(log);
                        //SendGateCtrlCommand(_OpenGate1Channel);
                    }
                    else
                    {
                        SetTrunkNoStateTextEvent("车辆未叫号");
                    }
                }
                WriteLogFile("===============识别结束====================");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                WriteLogFile(ex.ToString());
            }
        }

        #endregion

        /// <summary>
        /// 启用布防
        /// </summary>
        /// <returns></returns>
        private bool StartAlarmChan()
        {
            CHCNetSDK.NET_DVR_SETUPALARM_PARAM struAlarmParam = new CHCNetSDK.NET_DVR_SETUPALARM_PARAM();
            struAlarmParam.dwSize = (uint)Marshal.SizeOf(struAlarmParam);
            struAlarmParam.byLevel = 1; //0- 一级布防,1- 二级布防
            struAlarmParam.byAlarmInfoType = 1;//智能交通设备有效，新报警信息类型


            _AlarmHandle = CHCNetSDK.NET_DVR_SetupAlarmChan_V41(_UserLoginID, ref struAlarmParam);
            if (_AlarmHandle < 0)
            {
                uint iLastErr = CHCNetSDK.NET_DVR_GetLastError();
                _ErrorText = "布防失败，错误号：" + iLastErr; //布防失败，输出错误号
                MessageBox.Show(_ErrorText);
                return false;
            }
            else
            {
               
                WriteLogFile("设置布防成功");
                return true;
            }
        }

        private bool StopAlarmChan()
        {
            if (_AlarmHandle >= 0)
            {
                if (!CHCNetSDK.NET_DVR_CloseAlarmChan_V30(_AlarmHandle))
                {
                    uint iLastErr = CHCNetSDK.NET_DVR_GetLastError();
                    _ErrorText = "撤防失败，错误号：" + iLastErr; //撤防失败，输出错误号
                    WriteLogFile(_ErrorText);
                    return false;
                }
                else
                {
                    _ErrorText = "撤防成功";
                    _AlarmHandle = -1;
                    return true;
                }
            }
            else
            {
                _ErrorText = "摄像机未布防";
                return false;
            }
        }

        /// <summary>
        /// 网络抓拍
        /// </summary>
        /// <returns></returns>
        private bool StartContinuousShoot()
        {
            try
            {
                OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_SNAPCFG struSnapCfg = new OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_SNAPCFG();

                //线圈抓拍次数，0-不抓拍，非0-连拍次数，目前最大5次 
                struSnapCfg.bySnapTimes = 1;

                //抓拍等待时间，单位ms，取值范围[0,60000]
                struSnapCfg.wSnapWaitTime = 1000;

                struSnapCfg.byRes2 = new byte[24];


                //连拍间隔时间，单位ms，取值范围[67,60000]
                struSnapCfg.wIntervalTime = new ushort[4];
                struSnapCfg.wIntervalTime[0] = 1000;
                struSnapCfg.wIntervalTime[1] = 1000;


                //触发IO关联的车道号，取值范围[0,9]
                struSnapCfg.byRelatedDriveWay = 1;

                //网络触发连拍
                if (!OSPS.Device.HikSnap.CHCNetSDK.NET_DVR_ContinuousShoot(_UserLoginID, ref struSnapCfg))
                {
                    uint iLastErr = CHCNetSDK.NET_DVR_GetLastError();
                    _ErrorText = "网络抓拍，错误号：" + iLastErr;
                    WriteLogFile(_ErrorText);
                    return false;
                }
                WriteLogFile("===============网络抓拍启动成功=============");
                MessageBox.Show("启动网络抓拍成功");
                return true;
            }
            catch (Exception ex)
            {
                WriteLogFile(ex.ToString());
                return false;
            }
        }
        #endregion

        #region 委托调用控件赋值
        /// <summary>
        /// 给车牌号Text赋值
        /// </summary>
        /// <param name="control">控件</param>
        /// <param name="msg"></param>
        private delegate void InvokeTrunkNoCallback(string msg);
        private void SetTrunkNoTextEvent(string msg)
        {
            try
            {
                if (InvokeRequired)
                {
                    InvokeTrunkNoCallback msgCallback = new InvokeTrunkNoCallback(SetTrunkNoTextEvent);
                    this.txtTrunkNo.Invoke(msgCallback, new object[] { msg });
                }
                else
                {
                    txtTrunkNo.Text = msg;

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("设置控件文本错误，原因：" + ex.Message);
                WriteLogFile(ex.Message);
            }
            
        }

        private delegate void InvokeEntryCallback(string msg);
        private void SetTextEvent(string msg)
        {
            try
            {
                if (InvokeRequired)
                {
                    InvokeEntryCallback msgCallback = new InvokeEntryCallback(SetTextEvent);
                    this.lOrderState.Invoke(msgCallback, new object[] { msg });
                }
                else
                {
                    lOrderState.Text = msg;

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("设置控件文本错误，原因：" + ex.Message);
                WriteLogFile(ex.Message);
            }

        }

        /// <summary>
        /// 给车牌号颜色Text赋值
        /// </summary>
        /// <param name="control">控件</param>
        /// <param name="msg"></param>
        private delegate void InvokeTrunkNoColorCallback(string msg);
        private void SetTrunkNoColorTextEvent(string msg)
        {
            try
            {
                if (InvokeRequired)
                {
                    InvokeTrunkNoColorCallback msgCallback = new InvokeTrunkNoColorCallback(SetTrunkNoColorTextEvent);
                    this.lTrunkNoColor.Invoke(msgCallback, new object[] { msg });
                }
                else
                {
                    lTrunkNoColor.Text = msg;

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("设置控件文本错误，原因：" + ex.Message);
                WriteLogFile(ex.Message);
            }

        }

        /// <summary>
        /// 给入场时间Text赋值
        /// </summary>
        /// <param name="control">控件</param>
        /// <param name="msg"></param>
        private delegate void InvokeEnterTimeColorCallback(string msg);
        private void SetEnterTimeTextEvent(string msg)
        {
            try
            {
                if (InvokeRequired)
                {
                    InvokeEnterTimeColorCallback msgCallback = new InvokeEnterTimeColorCallback(SetEnterTimeTextEvent);
                    this.lEnterTime.Invoke(msgCallback, new object[] { msg });
                }
                else
                {
                    lEnterTime.Text = msg;

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("设置控件文本错误，原因：" + ex.Message);
                WriteLogFile(ex.Message);
            }

        }

        /// <summary>
        /// 给车牌号状态Text赋值
        /// </summary>
        /// <param name="control">控件</param>
        /// <param name="msg"></param>
        private delegate void InvokeTrunkNoStateCallback(string msg);
        private void SetTrunkNoStateTextEvent(string msg)
        {
            try
            {
                if (InvokeRequired)
                {
                    InvokeTrunkNoStateCallback msgCallback = new InvokeTrunkNoStateCallback(SetTrunkNoStateTextEvent);
                    this.lState.Invoke(msgCallback, new object[] { msg });
                }
                else
                {
                    lState.Text = msg;

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("设置控件文本错误，原因：" + ex.Message);
                WriteLogFile(ex.Message);
            }

        }

        /// <summary>
        /// 给车LogText赋值
        /// </summary>
        /// <param name="control">控件</param>
        /// <param name="msg"></param>
        private delegate void InvokeLogCallback(string msg);
        private void SetLogTextEvent(string msg)
        {
            try
            {
                if (InvokeRequired)
                {
                    InvokeLogCallback msgCallback = new InvokeLogCallback(SetLogTextEvent);
                    this.txtLog.Invoke(msgCallback, new object[] { msg });
                }
                else
                {
                    txtLog.AppendText(msg);

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("设置控件文本错误，原因：" + ex.Message);
                WriteLogFile(ex.Message);
            }

        }

        /// <summary>
        /// 显示抓拍图片
        /// </summary>
        /// <param name="img"></param>
        private delegate void InvokePctureCallBack(string img);
        private void SetPictureBoxEvent(string img)
        {
            try
            {
                if (InvokeRequired)
                {
                    InvokePctureCallBack msgCallback = new InvokePctureCallBack(SetPictureBoxEvent);
                    picSnap.Invoke(msgCallback, new object[] { img });
                }
                else
                {
                    picSnap.Image = Image.FromFile(img);
                }
            }
            catch (Exception ex)
            {
                WriteLogFile("设置图片错误;原因：" + ex.Message);
            }

        }

        #endregion
        /// <summary>
        /// 发送命令控制道闸
        /// </summary>
        /// <param name="channal">命令， 0 为开启，1为关闭</param>
        private void SendGateCtrlCommand(int channal)
        {
            OSPS.Device.AdamModule.Adam4060 adam = new OSPS.Device.AdamModule.Adam4060(_gateCtrlPort, 9600, 8, 0, 0);
            if (adam.OpenAdamCOMPort())
            {
                if (adam.SendPulseToChannel(_address, channal))
                {
                    if (channal == 1)
                    {
                        _IsOpen = false;
                        WriteLogFile("命令为" + channal + "，关闭道闸");
                    }
                    else
                    {
                        _IsOpen = true;
                        WriteLogFile("命令为" + channal + "，打开道闸");
                    }
                    

                }
                adam.CloseAdamCOMPort();
            }
            else
            {
                string szText = String.Format("打开端口{0}失败!", _gateCtrlPort);
                MessageBox.Show(szText, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void WriteLogFile(string szFormat, params object[] args)
        {
            try
            {
                string szText = string.Format(szFormat, args);
                string fileName = "TrunkNORecognition" + DateTime.Now.ToString("yyyyMMdd") + ".log";
                CommonFunction.WriteLogger(fileName, szText);

            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
                WriteLogFile("写入日志出错，原因:" + ex.Message);
            }

        }

        /// <summary>
        /// 获取未过皮重但是停车场叫了号的车辆
        /// </summary>
        private void RefreashData()
        {
            try
            {
                DataTable dt = OrderSet.GetNoWeightbridgeFromState();
                DBGrid.DataSource = dt;
                DBGrid.DataBind();
            }
            catch (Exception ex)
            {
                string szText = string.Format("查询数据失败，原因为:{0}",ex.Message);
                WriteLogFile(szText);
            }

        }
        
    }
}
