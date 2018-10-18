using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OSPS.AppFramework.Common;
using System.IO.Ports;

namespace OSPS.Device.LEDScreen
{
    /// <summary>
    /// 瑞泽、金雀单行条屏的显示
    /// </summary>
    public class SLineLEDScreen
    {
        private string _ErrorText = "";
        public string ErrorText
        {
            get { return _ErrorText; }
        }

        private int _LEDAddress = 2;
        public SLineLEDScreen(int nAddress)
        {
            _LEDAddress = nAddress;
        }
        /// <summary>
        /// 向串口写入数据
        /// </summary>
        /// <param name="comport"></param>
        /// <param name="pBuffer"></param>
        /// <param name="nLen"></param>
        /// <returns></returns>
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
        private byte[] GetLEDAddress()
        {
            byte[] address = new byte[2];
            int nAddrDL = _LEDAddress % 64;
            int nAddrDH = _LEDAddress / 64;
            int nADL = 0x80 + nAddrDL;
            address[0] = (byte)nADL;
            int nADH = 0xC0 + nAddrDH;
            address[1] = (byte)nADH;
            return address;
        }
        /// <summary>
        /// 拆分字符串
        /// 在屏中存储和显示使用的是汉字内码和英文字母数字的ASCII码。
        /// 因在数据传输时能使用的只有7位，因此凡大于127（7FH）的字节（即汉字内码）
        /// 必须经过转换才能传输，因此在传输时凡大于127（7FH）或小于16（10H）
        /// 的代码字节必须拆成两个字节传输，先传高4位，后传低4位，而其它字节则可以
        /// 字节传输。
        /// </summary>
        /// <param name="szText"></param>
        /// <returns></returns>
        private byte[] GetDisplayContent(string szText)
        {
            byte[] pTextBuffer = CommonFunction.ConvertStringToByte(szText);
            int nTextLen = pTextBuffer.Length;
            byte[] pTempBuffer = new byte[2 * nTextLen];    //最多2倍
            int nIndex = 0;
            for (int i = 0; i < nTextLen; i++)
            {
                if ((pTextBuffer[i] > 127) || (pTextBuffer[i] < 16))
                {//需要拆分为两个字节的
                    pTempBuffer[nIndex++] = (byte)(pTextBuffer[i] >> 4);    //高4位
                    pTempBuffer[nIndex++] = (byte)(pTextBuffer[i] & 0x0F);  //低4位
                }
                else
                {//可以直接显示的
                    pTempBuffer[nIndex++] = pTextBuffer[i];
                }
            }
            byte[] pRetBuffer = new byte[nIndex];
            Array.Copy(pTempBuffer, 0, pRetBuffer, 0, nIndex);
            return pRetBuffer;
        }
        /// <summary>
        /// 向显示屏发送显示数据
        /// </summary>
        /// <param name="szText">显示内容</param>
        /// <returns>true: 成功，false: 失败</returns>
        public bool DisplayString(ref SerialPort comport, string szText)
        {
            byte[] pAddress = GetLEDAddress();
            byte[] pDisplayBuf = GetDisplayContent(szText);
            int nLen = pAddress.Length + pDisplayBuf.Length + 2;
            byte[] pBuffer = new byte[nLen];
            int nIndex = 0;
            Array.Copy(pAddress, 0, pBuffer, nIndex, pAddress.Length);
            nIndex += pAddress.Length;
            pBuffer[nIndex++] = 0x44;   //立即显示命令
            Array.Copy(pDisplayBuf, 0, pBuffer, nIndex, pDisplayBuf.Length);
            nIndex += pDisplayBuf.Length;
            pBuffer[nIndex++] = 0x1A;   //结束标志
            WriteCOMPortData(ref comport, pBuffer, nIndex);
            return true;
        }
    }
}
