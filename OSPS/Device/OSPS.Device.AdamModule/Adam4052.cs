using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Advantech.Adam;

namespace OSPS.Device.AdamModule
{
    public class Adam4052
    {
        private AdamCom _AdamCom = null;
        private string _COMPort = "";
        private int _BaudRate = 9600;
        private int _DataBits = 8;
        private int _Parity = 0;
        private int _StopBits = 0;
        /// <summary>
        /// Adam 4052模块操作
        /// </summary>
        /// <param name="szCOMPort">端口</param>
        /// <param name="nBaudRate">波特率</param>
        /// <param name="nDataBits">数据位</param>
        /// <param name="nParity">奇偶校验，0-无，1-奇，2-偶</param>
        /// <param name="nStopBits">停止位，0-1位，1-1.5，2-2位</param>
        public Adam4052(string szCOMPort, int nBaudRate, int nDataBits, int nParity, int nStopBits)
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
                //_AdamCom.SetComPortState(Advantech.Common.Baudrate.Baud_9600, Advantech.Common.Databits.Eight, Advantech.Common.Parity.None, Advantech.Common.Stopbits.One);
                // set COM port timeout
                _AdamCom.SetComPortTimeout(500, 1000, 0, 1000, 0);
                _AdamCom.Checksum = false; // disbale checksum
            }
            return bOpenPort;
        }

        public bool CloseAdamCOMPort()
        {
            return _AdamCom.CloseComPort();
        }
        private int _Address = 1;
        public int Address
        {
            set { _Address = value; }
            get { return _Address; }
        }

        private int _FrontInfraRedIndex = 0;
        private int _EndInfraRedIndex = 1;
        private int _LeftInfraRedIndex = 2;
        private int _RightInfraRedIndex = 3;
        public int FrontInfraRedIndex
        {
            set { _FrontInfraRedIndex = value; }
            get { return _FrontInfraRedIndex; }
        }
        public int EndInfraRedIndex
        {
            set { _EndInfraRedIndex = value; }
            get { return _EndInfraRedIndex; }
        }
        public int LeftInfraRedIndex
        {
            set { _LeftInfraRedIndex = value; }
            get { return _LeftInfraRedIndex; }
        }
        public int RightInfraRedIndex
        {
            set { _RightInfraRedIndex = value; }
            get { return _RightInfraRedIndex; }
        }

        private bool _NormalCloseOutput = true;
        public bool NormalCloseOutput
        {
            set { _NormalCloseOutput = value; }
            get { return _NormalCloseOutput; }
        }

        public bool ReadDI(int nAddress, out bool[] bDI, out bool[] bDO)
        {
            int nTotalDIChannel = DigitalInput.GetChannelTotal(Adam4000Type.Adam4052);
            int nTotalDOChannel = 0;
            if (_AdamCom.DigitalInput(nAddress).GetValues(nTotalDIChannel, nTotalDOChannel, out bDI, out bDO))
            {
                return true;
            }
            else
                return false;
        }

        public bool ReadInfraRed(ref bool bFront, ref bool bEnd)
        {
            bool[] bDI, bDO;
            int nTotalDIChannel = DigitalInput.GetChannelTotal(Adam4000Type.Adam4052);
            int nTotalDOChannel = 0;
            if (_AdamCom.DigitalInput(_Address).GetValues(nTotalDIChannel, nTotalDOChannel, out bDI, out bDO))
            {
                bFront = bDI[_FrontInfraRedIndex];
                bEnd = bDI[_EndInfraRedIndex];
                if (!_NormalCloseOutput)
                {
                    bFront = !bFront;
                    bEnd = !bEnd;
                }
                return true;
            }
            else return false;
        }

        public bool ReadInfraRed(ref bool bFront, ref bool bEnd, ref bool bLeft, ref bool bRight)
        {
            bool[] bDI, bDO;
            int nTotalDIChannel = DigitalInput.GetChannelTotal(Adam4000Type.Adam4052);
            int nTotalDOChannel = 0;
            if (_AdamCom.DigitalInput(_Address).GetValues(nTotalDIChannel, nTotalDOChannel, out bDI, out bDO))
            {
                bFront = bDI[_FrontInfraRedIndex];
                bEnd = bDI[_EndInfraRedIndex];
                bLeft = bDI[_LeftInfraRedIndex];
                bRight = bDI[_RightInfraRedIndex];
                if (!_NormalCloseOutput)
                {
                    bFront = !bFront;
                    bEnd = !bEnd;
                    bLeft = !bLeft;
                    bRight = !bRight;
                }
                return true;
            }
            else return false;
        }
    }
}
