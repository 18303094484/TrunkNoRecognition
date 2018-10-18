using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Advantech.Adam;

namespace OSPS.Device.AdamModule
{
    public class Adam4050
    {
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
        public Adam4050(string szCOMPort, int nBaudRate, int nDataBits, int nParity, int nStopBits)
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

        private int _Address = 1;
        public int Address
        {
            set { _Address = value; }
            get { return _Address; }
        }

        private int _FrontInfraRedIndex = 0;
        private int _EndInfraRedIndex = 1;
        public int FrontInfraRedIndex
        {
            set { _FrontInfraRedIndex = value;}
            get { return _FrontInfraRedIndex;}
        }
        public int EndInfraRedIndex
        {
            set { _EndInfraRedIndex = value;}
            get { return _EndInfraRedIndex;}
        }
        private bool _NormalCloseOutput = true;
        public bool NormalCloseOutput
        {
            set { _NormalCloseOutput = value; }
            get { return _NormalCloseOutput; }
        }

        /// <summary>
        /// 读取红外对射的值
        /// </summary>
        /// <param name="bFront">前边的红外对射，I0.0口, false: 不报警，true: 报警</param>
        /// <param name="bEnd">后边的红外对射，I0.1口, false: 不报警，true: 报警</param>
        /// <returns>true: 采集成功，false: 采集失败</returns>
        public bool ReadInfraRed(ref bool bFront, ref bool bEnd)
        {
            bool[] bDI, bDO;
            bool bRead = ReadDI(_Address, out bDI, out bDO);
            if (bRead)
            {
                bFront = bDI[_FrontInfraRedIndex];
                bEnd = bDI[_EndInfraRedIndex];
                if (!_NormalCloseOutput)
                {
                    bFront = !bFront;
                    bEnd = !bEnd;
                }
            }
            return bRead;
        }
    }
}
