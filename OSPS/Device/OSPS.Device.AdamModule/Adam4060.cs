using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Advantech.Adam;

namespace OSPS.Device.AdamModule
{
    public class Adam4060
    {
        private int _Address = 1;
        public int Address
        {
            set { _Address = value; }
            get { return _Address; }
        }

        private AdamCom _AdamCom = null;
        private string _COMPort = "";
        private int _BaudRate = 9600;
        private int _DataBits = 8;
        private int _Parity = 0;
        private int _StopBits = 0;
        /// <summary>
        /// Adam 4050模块操作
        /// </summary>
        /// <param name="szCOMPort">端口</param>
        /// <param name="nBaudRate">波特率</param>
        /// <param name="nDataBits">数据位</param>
        /// <param name="nParity">奇偶校验，0-无，1-奇，2-偶</param>
        /// <param name="nStopBits">停止位，0-1位，1-1.5，2-2位</param>
        public Adam4060(string szCOMPort, int nBaudRate, int nDataBits, int nParity, int nStopBits)
        {
            _COMPort = szCOMPort;
            int nPortIndex = Convert.ToInt16(szCOMPort.Substring(3, szCOMPort.Length - 3));
            nPortIndex = (short)(nPortIndex);
            _AdamCom = new AdamCom(nPortIndex);
            _BaudRate = nBaudRate;
            _DataBits = nDataBits;
            _Parity = nParity;
            _StopBits = nStopBits;
        }

        public bool OpenAdamCOMPort()
        {
            bool bOpenPort = _AdamCom.OpenComPort();
            if (bOpenPort)
            {
                // set COM port state, 9600,N,8,1
                Advantech.Common.Baudrate nBaudRate = (Advantech.Common.Baudrate)_BaudRate;
                Advantech.Common.Databits nDBBits = (Advantech.Common.Databits)_DataBits;
                Advantech.Common.Parity nParity = (Advantech.Common.Parity)_Parity;
                Advantech.Common.Stopbits nStopBits = (Advantech.Common.Stopbits)_StopBits;
                _AdamCom.SetComPortState(nBaudRate, nDBBits, nParity, nStopBits);
                //adamCom.SetComPortState(Advantech.Common.Baudrate.Baud_9600, Advantech.Common.Databits.Eight, Advantech.Common.Parity.None, Advantech.Common.Stopbits.One);
                // set COM port timeout
                _AdamCom.SetComPortTimeout(500, 500, 0, 500, 0);
            }
            return bOpenPort;
        }

        public bool CloseAdamCOMPort()
        {
            return _AdamCom.CloseComPort();
        }

        public bool ReadDI(int nAddress, out bool[] bDI, out bool[] bDO)
        {
            //bool[] bDI, bDO;
            int nDITotal = 7;
            int nDOTotal = 8;
            if (_AdamCom.DigitalInput(nAddress).GetValues(nDITotal, nDOTotal, out bDI, out bDO))
            {
                return true;
            }
            else
                return false;
        }

        public bool SendDO(int nAddress, int nChannel, bool bDO)
        {
            if (_AdamCom.DigitalOutput(nAddress).SetValue(nChannel, bDO))
            {
                return true;
            }
            else
                return false;
        }

        public bool SendPulseToChannel(int nAddress, int nChannel)
        {
            if (SendDO(nAddress, nChannel, true))
            {
                Thread.Sleep(1000);
                for (int i = 0; i < 3; i++)
                {
                    SendDO(nAddress, nChannel, false);
                    Thread.Sleep(100);
                }
                return true;
            }
            else
                return false;
        }
    }
}
