using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace OSPS.AppFramework.VLicense
{
    public class CheckHardware
    {
        private static string _PID = "BB153D1D";
        private static string _UserPID = "A1E9C7D2B1F01815";

        private static string _Random = "57864392A0";

        public static int VL_RESULT_NOERROR = 0;
        public static int VL_RESULT_NODEVICE = -1;
        public static int VL_RESULT_USERPID = -2;
        public static int VL_RESULT_CALCMD5 = -3;
        public static int VL_RESULT_READMEM = -4;
        public static int VL_RESULT_VERIFYCODE = -5;

        private static IntPtr hHandle = System.IntPtr.Zero;

        public static int VerifyLicense()
        {
            return VL_RESULT_NOERROR;

            /*uint result = OpenDevice();
            if (result != ET99_API.ET_SUCCESS)
            {
                return VL_RESULT_NODEVICE;
            }
            LEDSlash(1);
            result = VerifyUserPID();
            if (result != ET99_API.ET_SUCCESS)
            {
                CloseDevice();
                return VL_RESULT_USERPID;
            }
            LEDSlash(1);

            string szHWMD5Result = "";
            result = CalculateMD5(_Random, out szHWMD5Result);
            if (result != ET99_API.ET_SUCCESS)
            {
                CloseDevice();
                return VL_RESULT_CALCMD5;
            }
            LEDSlash(1);

            string szMEMMD5Result = "";
            result = ReadMemory(out szMEMMD5Result);
            if (result != ET99_API.ET_SUCCESS)
            {
                CloseDevice();
                return VL_RESULT_READMEM;
            }
            LEDSlash(1);

            if (szMEMMD5Result.CompareTo(szHWMD5Result) == 0)
            {
                CloseDevice();
                return VL_RESULT_NOERROR;
            }
            else
            {
                CloseDevice();
                return VL_RESULT_VERIFYCODE;
            }*/
        }

        private static uint OpenDevice()
        {
            int index = 1;
            byte[] bytPID = new byte[8];
            bytPID = System.Text.Encoding.ASCII.GetBytes(_PID);
            uint result = ET99_API.et_OpenToken(ref hHandle, bytPID, index);
            return result;
        }
        //关闭设备
        private static uint CloseDevice()
        {
            uint result = ET99_API.et_CloseToken(hHandle);
            return result;
        }
        //用户身份认证
        private static uint VerifyUserPID()
        {
            byte[] bytPIN = new byte[16];
            int flag = ET99_API.ET_VERIFY_USERPIN;
            bytPIN = System.Text.Encoding.ASCII.GetBytes(_UserPID);

            uint result = ET99_API.et_Verify(hHandle, flag, bytPIN);
            return result;
        }

        //使用设备进行MD5_HMAC验证计算
        private static uint CalculateMD5(string random, out string strMD5Result)
        {
            uint result = 0;
            byte[] bytDigest = new byte[16];
            byte[] bytRandomCode = new byte[_Random.Length];
            bytRandomCode = System.Text.Encoding.ASCII.GetBytes(_Random);

            //硬件中计算
            //第一个参数为设备的handle句柄
            //第二个参数为硬件中密钥索引
            //第三个参数为随机数长度
            //第四个参数为随机数
            //第五个参数为硬件中计算结果
            result = ET99_API.et_HMAC_MD5(hHandle, 1, _Random.Length, bytRandomCode, bytDigest);
            if (result == ET99_API.ET_SUCCESS)
            {
                //显示获取到的SN到文本框中
                string strDigest = "";
                for (int i = 0; i < 16; ++i)
                {
                    strDigest += string.Format("{0:X2}", bytDigest[i]);
                }
                strMD5Result = strDigest;
            }
            else
            {
                strMD5Result = "";
            }
            return result;
        }

        //打开或关闭LED
        public static uint SwitchLED(bool bOpen)
        {
            uint result;
            if (!bOpen)
            {
                result = ET99_API.et_TurnOffLED(hHandle);
            }
            else
            {
                result = ET99_API.et_TurnOnLED(hHandle);
            }
            return result;
        }

        public static void LEDSlash(int nTimes)
        {
            for (int i = 0; i < nTimes; i++)
            {
                Thread.Sleep(100);
                SwitchLED(false);
                Thread.Sleep(100);
                SwitchLED(true);
            }
        }

        private static uint ReadMemory(out string szBuf)
        {
            ushort len = 0;//偏移
            byte[] readlen = new byte[1];
            byte[] zyn = new byte[32];
            szBuf = "";
            uint result = ET99_API.et_Read(hHandle, len, 1, readlen);//先读出第一个字节的数据长度到readlen中
            if (result == ET99_API.ET_SUCCESS)
            {
                result = ET99_API.et_Read(hHandle, (ushort)(len + 1), readlen[0], zyn);//从第二个字节开始读取数据，读取数据
                if (result == ET99_API.ET_SUCCESS)
                {
                    szBuf = Encoding.ASCII.GetString(zyn);
                }
            }
            return result;
        }
    }
}
