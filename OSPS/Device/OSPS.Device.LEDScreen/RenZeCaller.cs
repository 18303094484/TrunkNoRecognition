using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OSPS.AppFramework.Common;
using System.IO.Ports;
using System.Threading;

namespace OSPS.Device.LEDScreen
{
    public class RenZeCaller
    {
        private string _ErrorText = "";
        public string ErrorText
        {
            get { return _ErrorText; }
        }
        /// <summary>
        /// 呼叫器显示屏显示当前呼叫号的最大长度
        /// </summary>
        private int _CallerLEDShowMaxBits = 4;
        private int _CallerAddress = 2;

        private int _COMTimeout = 100;

        #region KeyDefine
        private int _KEY_NEXT = 0x41;
        public int KEY_NEXT
        {
            get { return _KEY_NEXT; }
        }
        private int _KEY_RECALL = 0x42;
        public int KEY_RECALL
        {
            get { return _KEY_RECALL; }
        }
        private int _KEY_CANCEL = 0x45;
        public int KEY_CANCEL
        {
            get { return _KEY_CANCEL; }
        }
        private int _KEY_RETURN = 0x43;
        public int KEY_RETURN
        {
            get { return _KEY_RETURN; }
        }
        #endregion
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="szPort">串口名称</param>
        /// <param name="nBaudrate">波特率</param>
        /// <param name="nAddress">地址</param>
        public RenZeCaller(int nAddress)
        {
            _CallerAddress = nAddress;
        }

        private int ReadCOMPortData(ref SerialPort comport, ref byte[] pBuffer, int nMaxLength, int nTimeout)
        {
            int nReadLen = 0;
            try
            {
                if (comport.IsOpen)
                {
                    DateTime dtBegin = DateTime.Now;
                    while (true)
                    {
                        int nBytesToRead = comport.BytesToRead;
                        if (nBytesToRead >= nMaxLength) break;
                        TimeSpan timeSpan = DateTime.Now - dtBegin;
                        if (timeSpan.TotalMilliseconds >= nTimeout) break;
                        Thread.Sleep(100);
                    }
                    comport.ReadTimeout = 0;
                    nReadLen = comport.Read(pBuffer, 0, nMaxLength);
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return nReadLen;
        }

        private int WriteCOMPortData(ref SerialPort comport, byte[] pBuffer, int nLen)
        {
            try
            {
                if (comport.IsOpen)
                {
                    comport.DiscardInBuffer();
                    comport.Write(pBuffer, 0, nLen);
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return nLen;
        }
        /// <summary>
        /// 获取LED地址
        /// LED地址：ADL ADH，
        /// ADL的Bit7=1，Bit6=0，Bit0-5为地址
        /// ADH的Bit7=1，Bit6=1，其它为0
        /// </summary>
        /// <returns></returns>
        private byte[] GetCallerAddress()
        {
            byte[] address = new byte[2];
            int nAddrDL = _CallerAddress % 64;
            int nAddrDH = _CallerAddress / 64;
            int nADL = 0x80 + nAddrDL;
            address[0] = (byte)nADL;
            int nADH = 0xC0 + nAddrDH;
            address[1] = (byte)nADH;
            return address;
        }
        /// <summary>
        /// 将数字转换为显示字符串，最多两位
        /// </summary>
        /// <param name="nNumber"></param>
        /// <returns></returns>
        private byte[] GetDisplayContent(int nNumber)
        {
            if (nNumber >= 100)
            {
                byte[] pBuffer = new byte[2];
                pBuffer[0] = Convert.ToByte('D');
                pBuffer[1] = Convert.ToByte('A');
                return pBuffer;
            }
            else
            {
                //最多显示两位数字
                int n10Bit = nNumber / 10;
                int n1Bit = nNumber % 10;
                byte[] pBuffer = new byte[2];
                pBuffer[0] = Convert.ToByte(0x30 + n10Bit);
                pBuffer[1] = Convert.ToByte(0x30 + n1Bit);
                return pBuffer;
            }
        }

        public bool DisplayString(ref SerialPort comport, int nWaitNum, string szCurrNo)
        {
            if (szCurrNo.Length > _CallerLEDShowMaxBits)
            {
                int nStart = szCurrNo.Length - _CallerLEDShowMaxBits;
                szCurrNo = szCurrNo.Substring(nStart);
            }

            byte[] pAddress = GetCallerAddress();
            byte[] pDisplayBuf1 = GetDisplayContent(nWaitNum);
            byte[] pDisplayBuf2 = CommonFunction.ConvertStringToByte(szCurrNo);
            int nLen = pAddress.Length + 1 + pDisplayBuf1.Length + pDisplayBuf2.Length;
            byte[] pBuffer = new byte[nLen];
            int nIndex = 0;
            Array.Copy(pAddress, 0, pBuffer, nIndex, pAddress.Length);
            nIndex += pAddress.Length;
            pBuffer[nIndex++] = 0x57;   //立即显示命令
            Array.Copy(pDisplayBuf1, 0, pBuffer, nIndex, pDisplayBuf1.Length);
            nIndex += pDisplayBuf1.Length;
            Array.Copy(pDisplayBuf2, 0, pBuffer, nIndex, pDisplayBuf2.Length);
            nIndex += pDisplayBuf2.Length;
            WriteCOMPortData(ref comport, pBuffer, nIndex);
            return true;
        }
        /// <summary>
        /// 查询是否有按键输入
        /// 命令：ADL ADH 0x51
        /// </summary>
        /// <returns></returns>
        public int QueryKey(ref SerialPort comport)
        {
            int nKey = -1;
            byte[] pAddress = GetCallerAddress();
            int nLen = pAddress.Length;
            byte[] pBuffer = new byte[nLen + 1];
            int nIndex = 0;
            Array.Copy(pAddress, 0, pBuffer, nIndex, pAddress.Length);
            nIndex += pAddress.Length;
            pBuffer[nIndex++] = 0x51;   //查询命令
            WriteCOMPortData(ref comport, pBuffer, nIndex);

            int nExpectLen = 1;
            nLen = ReadCOMPortData(ref comport, ref pBuffer, nExpectLen, _COMTimeout);
            if (nLen > 0)
            {
                nKey = pBuffer[0];
            }
            else
            {
                try
                {
                    comport.Close();
                    Thread.Sleep(100);
                    comport.Open();
                }
                catch (Exception ex)
                {
                    _ErrorText = ex.Message;
                }
            }
            return nKey;
        }
    }
}
