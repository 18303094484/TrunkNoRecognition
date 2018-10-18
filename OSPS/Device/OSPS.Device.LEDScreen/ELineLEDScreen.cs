using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OSPS.AppFramework.Common;
using System.Threading;
using System.IO.Ports;

namespace OSPS.Device.LEDScreen
{
    /// <summary>
    /// 道闸控制器中的LED显示
    /// </summary>
    public class ELineLEDScreen
    {
        /// <summary>
        /// 室外条屏，LED命令格式：STX(0x02)+(0x20+地址)+命令+(0x20+扇区)+ETX(0x03)
        /// 命令：	
        ///a.打开策略（相当于开机）    0x20
        ///b.关闭策略（相当于关机）    0x21
        ///c.打开扇区                  0x22
        ///d.关闭扇区                  0x23
        ///e.显示扇区                  0x24
        ///f.下载扇区                  0x25
        ///g.设计时间                  0x26
        ///h.更改地址                  0x27
        ///i.清除内存                  0x28
        ///j.下载字库                  0x29
        ///k.更改长度                  0x2a
        ///l.获取端口                  0x2b
        ///STX+(0x20+地址) +命令+(0x20+扇区)下载扇区的命令头+ETX
        ///下载扇区的命令头：
        ///0x0C+（0x20+进入模式）+（0x20+停留模式）+（0x20+停留时间）+（0x20+退出模式）
        ///+(0x20+字符长度）+字符(内码)
        ///具体命令格式见说明书，本软件只用到3条命令
        ///1、初始化显示内容，2、临时下载内容，3、显示临时内容
        ///初始化
        ///02 21 25 22 0C 36 20 36 35 30 BB B6 D3 AD B9 E2 C1 D9 C9 BD B6 AB BB AA D0 C7 03
        ///下载内容
        ///02 21 25 E9 0C 36 20 36 35 25 41 42 43 44 45 03
        ///立即显示
        ///02 21 24 E9 03
        /// </summary>
        private SerialPort comport = null;
        private string _COMPort = "COM1";
        private int _BaudRate = 19200;
        private int nDataBits = 8;
        private Parity parity = Parity.Even;
        private StopBits stopBits = StopBits.One;

        private int _LEDAddress = 2;
        /// <summary>
        /// 初始化显示扇区，从0开始均可以使用
        /// </summary>
        private int _InitDisplaySection = 2;
        /// <summary>
        /// 临时显示扇区，从200开始均可以使用
        /// </summary>
        private int _TempDisplaySection = 201;

        public ELineLEDScreen(string szPort, int nBaudrate, int nAddress)
        {
            _COMPort = szPort;
            _BaudRate = nBaudrate;
            _LEDAddress = nAddress;
            comport = new SerialPort(szPort, nBaudrate, Parity.Even, 8, stopBits);
            comport.ReadBufferSize = 1024;
            comport.WriteBufferSize = 1024;
        }

        public bool OpenCOMPort()
        {
            bool bRet = false;
            try
            {
                comport.Open();
                bRet = true;
            }
            catch (Exception ex)
            {
                CommonFunction.WriteLogger("ELEDScreen.log", "Open Port Failed! " + ex.Message);
                bRet = false;
            }
            return bRet;
        }

        public bool CloseCOMPort()
        {
            bool bRet = false;
            try
            {
                comport.Close();
                bRet = true;
            }
            catch (Exception ex)
            {
                CommonFunction.WriteLogger("ELEDScreen.log", "Close Port Failed! " + ex.Message);
                bRet = false;
            }
            return bRet;
        }

        private int WriteCOMPortData(byte[] pBuffer, int nLen)
        {
            try
            {
                comport.DiscardInBuffer();
                comport.Write(pBuffer, 0, nLen);
            }
            catch (Exception ex)
            {
                CommonFunction.WriteLogger("ELEDScreen.log", "WriteData Failed! " + ex.Message);
            }
            return nLen;
        }

        public int ReadCOMPortData()
        {
            int nReadLen = 0;
            try
            {
                byte[] pBuffer = new byte[20];
                DateTime dtBegin = DateTime.Now;
                while (true)
                {
                    int nBytesToRead = comport.BytesToRead;
                    if (nBytesToRead >= 10) break;
                    TimeSpan timeSpan = DateTime.Now - dtBegin;
                    if (timeSpan.TotalMilliseconds >= 100) break;
                    Thread.Sleep(100);
                }
                comport.ReadTimeout = 0;
                nReadLen = comport.Read(pBuffer, 0, 10);
            }
            catch (Exception ex)
            {
                CommonFunction.WriteLogger("ELEDScreen.log", "Read Data Failed ! " + ex.Message);
            }
            finally
            {
            }
            return nReadLen;
        }

        private bool DownloadDisplayString(string szText, int nSection, int nLastTime)
        {
            byte[] pDisplayBuf = CommonFunction.ConvertStringToByte(szText);
            int nLen = 11 + pDisplayBuf.Length;

            byte[] pBuffer = new byte[nLen];
            int nIndex = 0;
            pBuffer[nIndex++] = 0x02;   //STX
            pBuffer[nIndex++] = (byte)(0x20 + _LEDAddress);     //地址
            pBuffer[nIndex++] = 0x25;     //命令
            pBuffer[nIndex++] = (byte)(0x20 + nSection);        //扇区
            pBuffer[nIndex++] = 0x0C;     //下载扇区命令头
            pBuffer[nIndex++] = 0x36;     //进入模式，中速连续移动，15：连续移动， 17：慢速连续移动
            pBuffer[nIndex++] = 0x20;     //停留模式，0：停留，1：停留10秒，2：停留100秒
            pBuffer[nIndex++] = (byte)(0x20 + nLastTime);      //停留时间
            pBuffer[nIndex++] = 0x35;     //退出模式，16：中速连续移动，15：连续移动， 17：慢速连续移动
            pBuffer[nIndex++] = (byte)(0x20 + pDisplayBuf.Length);       //数据长度
            //数据内容    
            Array.Copy(pDisplayBuf, 0, pBuffer, nIndex, pDisplayBuf.Length);
            nIndex += pDisplayBuf.Length;
            pBuffer[nIndex++] = 0x03;   //ETX

            WriteCOMPortData(pBuffer, nIndex);
            return true;
        }

        public bool InitLEDDisplay(string szText, int nLastTime)
        {
            ClearMemory();
            Thread.Sleep(100);
            bool bRet = DownloadDisplayString(szText, _InitDisplaySection, nLastTime);
            int nLen = ReadCOMPortData();
            if (nLen == 0)
            {
                CloseCOMPort();
                Thread.Sleep(500);
                OpenCOMPort();
            }
            Thread.Sleep(100);
            return bRet;
        }

        public bool DisplayString(string szText, int nLastTime)
        {
            bool bRet = false;

            bRet = DownloadDisplayString(szText, _TempDisplaySection, nLastTime);
            Thread.Sleep(100);
            bRet = DownloadDisplayCommand(_TempDisplaySection);
            int nLen = ReadCOMPortData();
            if (nLen == 0)
            {
                CloseCOMPort();
                Thread.Sleep(500);
                OpenCOMPort();
            }
            return bRet;
        }
        
        /// <summary>
        /// 立即显示扇区内容
        /// </summary>
        /// <param name="nSection"></param>
        /// <returns></returns>
        private bool DownloadDisplayCommand(int nSection)
        {
            int nLen = 5;
            byte[] pBuffer = new byte[nLen];
            int nIndex = 0;
            pBuffer[nIndex++] = 0x02;   //STX
            pBuffer[nIndex++] = (byte)(0x20 + _LEDAddress);     //地址
            pBuffer[nIndex++] = 0x24;     //命令
            pBuffer[nIndex++] = (byte)(0x20 + nSection);        //扇区
            pBuffer[nIndex++] = 0x03;   //ETX

            WriteCOMPortData(pBuffer, nIndex);
            return true;
        }
        /// <summary>
        /// 清除内存
        /// </summary>
        /// <returns></returns>
        private bool ClearMemory()
        {
            int nLen = 5;
            byte[] pBuffer = new byte[nLen];
            int nIndex = 0;
            pBuffer[nIndex++] = 0x02;   //STX
            pBuffer[nIndex++] = (byte)(0x20 + _LEDAddress);     //地址
            pBuffer[nIndex++] = 0x28;       //命令
            pBuffer[nIndex++] = 0x20;       //扇区
            pBuffer[nIndex++] = 0x03;       //ETX

            WriteCOMPortData(pBuffer, nIndex);
            return true;
        }
    }
}
