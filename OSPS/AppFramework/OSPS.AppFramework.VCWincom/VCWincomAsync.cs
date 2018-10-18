using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

namespace OSPS.AppFramework.VCWincom
{
    public class VCWincomAsync
    {
        public enum DataParity
        {
            Parity_None = 0,
            Pariti_Odd = 1,
            Parity_Even = 2,
            Parity_Mark = 3
        }

        public enum DataStopBit
        {
            StopBit_1 = 1,
            StopBit_2 = 2
        }
    
        public enum OverLapMode
        {
            NonOverlapped = 0,
            Overlapped
        }

        #region Field
        private string _ErrorText = "";
        public string ErrorText
        {
            get { return _ErrorText; }
        }

        private string _PortNum = "";    //COM1,COM2,COM3,COM4
        private int _BaudRate = 9600;    //1200,2400,4800,9600
        private int _DataBits = 8;      //8 bits
        private DataParity _Parity = DataParity.Parity_None;
        private DataStopBit _StopBits = DataStopBit.StopBit_1;
        private int _ReadTimeout = 1000;   //10

        private int _ReadBufferSize = 2048;
        private int _WriteBufferSize = 2048;

        //win32 api constants
        private const int PURGE_TXABORT = 0x01;
        private const int PURGE_RXABORT = 0x02;
        private const int PURGE_TXCLEAR = 0x04;
        private const int PURGE_RXCLEAR = 0x08;

        private const uint GENERIC_READ = 0x80000000;
        private const uint GENERIC_WRITE = 0x40000000;

        private const uint FILE_ATTRIBUTE_NORMAL = 0x00000080;
        private const uint FILE_FLAG_OVERLAPPED = 0x40000000;

        private uint ERROR_IO_PENDING = 997;    // dderror

        private uint STATUS_WAIT_0 = 0x00000000; 
        private uint WAIT_FAILED = 0xFFFFFFFF;
        private uint WAIT_OBJECT_0 = 0x00000000;

        private int DTR_CONTROL_DISABLE = 0x00;
        private int DTR_CONTROL_ENABLE = 0x01;
        private int DTR_CONTROL_HANDSHAKE = 0x02;

        private OVERLAPPED m_osRead = new OVERLAPPED();
        private OVERLAPPED m_osWrite = new OVERLAPPED();

        private const int OPEN_EXISTING = 3;
        private const int INVALID_HANDLE_VALUE = -1;
        //comm port win32 file handle
        public int hComm = -1;
        public bool Opened = false;
        [StructLayout(LayoutKind.Sequential)]
        private struct DCB
        {
            public Int32 DCBlength;      // sizeof(DCB) 
            public Int32 BaudRate;            // current baud rate 
            public Int32 Bits1;            // current baud rate 
            public ushort wReserved;            // current baud rate 

            public ushort XonLim;            // current baud rate 
            public ushort XoffLim;            // current baud rate 

            public byte ByteSize;
            public byte Parity;
            public byte StopBits;

            public char XonChar;
            public char XoffChar;
            public char ErrorChar;
            public char EofChar;
            public char EvtChar;
            public ushort wReserved2;            
            // current baud rate 

            //taken from c struct in platform sdk 
            /*public int DCBlength;           // sizeof(DCB) 
            public int BaudRate;            // current baud rate 
            public int fBinary;          // binary mode, no EOF check 
            public int fParity;          // enable parity checking 
            public int fOutxCtsFlow;      // CTS output flow control 
            public int fOutxDsrFlow;      // DSR output flow control 
            public int fDtrControl;       // DTR flow control type 
            public int fDsrSensitivity;   // DSR sensitivity 
            public int fTXContinueOnXoff; // XOFF continues Tx 
            public int fOutX;          // XON/XOFF out flow control 
            public int fInX;           // XON/XOFF in flow control 
            public int fErrorChar;     // enable error replacement 
            public int fNull;          // enable null stripping 
            public int fRtsControl;     // RTS flow control 
            public int fAbortOnError;   // abort on error 
            public int fDummy2;        // reserved 
            public ushort wReserved;          // not currently used 
            public ushort XonLim;             // transmit XON threshold 
            public ushort XoffLim;            // transmit XOFF threshold 
            public byte ByteSize;           // number of bits/byte, 4-8 
            public byte Parity;             // 0-4=no,odd,even,mark,space 
            public byte StopBits;           // 0,1,2 = 1, 1.5, 2 
            public char XonChar;            // Tx and Rx XON character 
            public char XoffChar;           // Tx and Rx XOFF character 
            public char ErrorChar;          // error replacement character 
            public char EofChar;            // end of input character 
            public char EvtChar;            // received event character 
            public ushort wReserved1;         // reserved; do not use */
        }

        [StructLayout(LayoutKind.Sequential)]
        private struct COMMTIMEOUTS
        {
            public int ReadIntervalTimeout;
            public int ReadTotalTimeoutMultiplier;
            public int ReadTotalTimeoutConstant;
            public int WriteTotalTimeoutMultiplier;
            public int WriteTotalTimeoutConstant;
        }
        [StructLayout(LayoutKind.Sequential)]
        private struct COMSTAT
        {
            public int BitFields;
            public int cbInQue;
            public int cbOutQue;
        }
        [StructLayout(LayoutKind.Sequential)]
        private struct OVERLAPPED
        {
            public int Internal;
            public int InternalHigh;
            public int Offset;
            public int OffsetHigh;
            public int hEvent;
        }
        #endregion

        #region Constructor

        /// <summary>
        /// 串口异步通讯
        /// </summary>
        /// <param name="portNum">端口</param>
        /// <param name="baudRate">波特率</param>
        /// <param name="parity">奇偶校验，0-无校验，1-奇校验，2-偶校验</param>
        /// <param name="byteSize">数据位</param>
        /// <param name="stopBits">停止位，0-1位，1-1.5位，2-2位</param>
        public VCWincomAsync(string portNum, int baudRate, DataParity nParity, int nDataBits, DataStopBit nStopBits)
        {
            _PortNum = portNum;
            _BaudRate = baudRate;
            _DataBits = nDataBits;
            _Parity = nParity;
            _StopBits = nStopBits;

            m_osRead.Offset = m_osRead.OffsetHigh = 0;
            m_osRead.hEvent = CreateEvent(0, true, false, "COMRead");
            if (0 == m_osRead.hEvent)
            {
                _ErrorText = "Cannot CreateEvent - Read";
            }

            m_osWrite.Offset = m_osWrite.OffsetHigh = 0;
            m_osWrite.hEvent = CreateEvent(0, true, false, "COMWrite");
            if (0 == m_osWrite.hEvent)
            {
                _ErrorText = "Cannot CreateEvent -Write";
            }
        }

        public int ReadBufferSize
        { 
            set { _ReadBufferSize = value;}
            get { return  _ReadBufferSize;}
        }

        public int WriteBufferSize
        {
            set { _WriteBufferSize = value;}
            get { return  _WriteBufferSize;}
        }

        [DllImport("kernel32.dll")]
        private static extern int CreateFile(
            string lpFileName,                          // file name
            uint dwDesiredAccess,                       // access mode
            int dwShareMode,                            // share mode
            int lpSecurityAttributes,                   // SD
            int dwCreationDisposition,                  // how to create
            uint dwFlagsAndAttributes,                  // file attributes
            int hTemplateFile                           // handle to template file
            );
        [DllImport("kernel32.dll")]
        private static extern bool GetCommState(
            int hFile,  // handle to communications device
            ref DCB lpDCB    // device-control block
            );
        [DllImport("kernel32.dll")]
        private static extern bool BuildCommDCB(
            string lpDef,  // device-control string
            ref DCB lpDCB     // device-control block
            );
        [DllImport("kernel32.dll")]
        private static extern bool SetCommState(
            int hFile,  // handle to communications device
            ref DCB lpDCB    // device-control block
            );
        [DllImport("kernel32.dll")]
        private static extern bool GetCommTimeouts(
            int hFile,                  // handle to comm device
            ref COMMTIMEOUTS lpCommTimeouts  // time-out values
            );
        [DllImport("kernel32.dll")]
        private static extern bool SetCommTimeouts(
            int hFile,                  // handle to comm device
            ref COMMTIMEOUTS lpCommTimeouts  // time-out values
            );
        [DllImport("kernel32.dll")]
        private static extern bool ClearCommError(
            int hFile,                  // handle to comm device
            ref int nErrors, 
            ref COMSTAT comstat
            );
        [DllImport("kernel32.dll")]
        private static extern bool ReadFile(
            int hFile,                // handle to file
            byte[] lpBuffer,             // data buffer
            int nNumberOfBytesToRead,  // number of bytes to read
            ref int lpNumberOfBytesRead, // number of bytes read
            ref OVERLAPPED lpOverlapped    // overlapped buffer
            );
        [DllImport("kernel32.dll")]
        private static extern bool WriteFile(
            int hFile,                    // handle to file
            byte[] lpBuffer,                // data buffer
            int nNumberOfBytesToWrite,     // number of bytes to write
            ref int lpNumberOfBytesWritten,  // number of bytes written
            ref OVERLAPPED lpOverlapped        // overlapped buffer
            );
        [DllImport("kernel32.dll")]
        private static extern bool CloseHandle(
            int hObject   // handle to object
            );
        [DllImport("kernel32.dll")]
        private static extern bool PurgeComm(
            int hObject,   // handle to object
            int nFlags
            );
        [DllImport("kernel32.dll")]
        private static extern bool SetupComm(
            int hObject,   // handle to object
            int inBufferSize,
            int outBufferSize
            );
        [DllImport("kernel32.dll")]
        private static extern int GetLastError();
        
        [DllImport("kernel32.dll")]
        private static extern uint WaitForSingleObject(int hObject, int dwMilliseconds);

        [DllImport("kernel32.dll")]
        private static extern bool GetOverlappedResult(int hObject, ref OVERLAPPED overLapped,
            ref int NumberOfBytesTransferred, bool bWait);
        [DllImport("kernel32.dll")]
        private static extern int CreateEvent(int EventAttributes, bool bManualReset, bool bInitialState, string szName);
        #endregion

        public void Open(int nTimeout)
        {
            Opened = false;

            DCB dcbCommPort = new DCB();
            COMMTIMEOUTS ctoCommPort = new COMMTIMEOUTS();

          // OPEN THE COMM PORT.
            hComm = CreateFile(_PortNum, GENERIC_READ | GENERIC_WRITE, 0, 0, OPEN_EXISTING, 
                FILE_ATTRIBUTE_NORMAL, 0);
            // IF THE PORT CANNOT BE OPENED, BAIL OUT.
            if (hComm == INVALID_HANDLE_VALUE)
            {
                //Close();
                throw (new ApplicationException("Comm Port Can Not Be Opened"));
            }

            // SET THE COMM TIMEOUTS.
            _ReadTimeout = nTimeout;
            if (GetCommTimeouts(hComm, ref ctoCommPort))
            {
                ctoCommPort.ReadIntervalTimeout = 70;
                ctoCommPort.ReadTotalTimeoutMultiplier = 20;
                ctoCommPort.ReadTotalTimeoutConstant = nTimeout;
                ctoCommPort.WriteTotalTimeoutMultiplier = 10;
                ctoCommPort.WriteTotalTimeoutConstant = 100;
                if (!SetCommTimeouts(hComm, ref ctoCommPort))
                {
                    _ErrorText = "SetCommTimeouts Error!";
                }
            }

            dcbCommPort.DCBlength = Marshal.SizeOf(dcbCommPort);
            if (GetCommState(hComm, ref dcbCommPort))
            {
                dcbCommPort.BaudRate = _BaudRate;
                dcbCommPort.Parity = Convert.ToByte((int)_Parity);
                dcbCommPort.ByteSize = Convert.ToByte(_DataBits);
                dcbCommPort.StopBits = Convert.ToByte((int)_StopBits);

                dcbCommPort.Bits1 = 0;

                //dcbCommPort.fOutxDsrFlow = 0;
                //dcbCommPort.fOutxCtsFlow = 0;
                //dcbCommPort.fDtrControl = DTR_CONTROL_DISABLE;
                /*dcbCommPort.fInX = dcbCommPort.fOutX = 0;
                dcbCommPort.XonChar = Convert.ToChar(0x11);
                dcbCommPort.XoffChar = Convert.ToChar(0x13);

                dcbCommPort.fBinary = 0;
                dcbCommPort.fParity = 1;

                dcbCommPort.fErrorChar = 0;
                dcbCommPort.fNull = 0;
                dcbCommPort.XonLim = (ushort)(_ReadBufferSize / 2);
                dcbCommPort.XoffLim = (ushort)(_WriteBufferSize / 2);*/
                //dcbCommPort.
                if (!SetCommState(hComm, ref dcbCommPort))
                {
                    _ErrorText = "SetCommState Error!";
                }
            }
            if (!SetupComm(hComm, _ReadBufferSize, _WriteBufferSize))
            {
                _ErrorText = "SetupComm Error!";
            }
            Opened = true;
        }

        public void Close()
        {
            if (hComm != INVALID_HANDLE_VALUE)
            {
                CloseHandle(m_osRead.hEvent);
                CloseHandle(m_osWrite.hEvent);
                CloseHandle(hComm);
                Opened = false;
            }
        }

        public int RxQueCount()
        {
            int nLen = 0;
            if (hComm != INVALID_HANDLE_VALUE)
            {
                int nErrors = 0;
                COMSTAT comstat = new COMSTAT();
                if (ClearCommError(hComm, ref nErrors, ref comstat))
                {
                    nLen = comstat.cbInQue;
                }
            }
            return nLen;
        }

        public int TxQueCount()
        {
            int nLen = 0;
            if (hComm != INVALID_HANDLE_VALUE)
            {
                int nErrors = 0;
                COMSTAT comstat = new COMSTAT();
                if (ClearCommError(hComm, ref nErrors, ref comstat))
                {
                    nLen = comstat.cbOutQue;
                }
            }
            return nLen;
        }

        public void DiscardInBuffer()
        {
            if (hComm != INVALID_HANDLE_VALUE)
            {
                PurgeComm(hComm, PURGE_RXCLEAR | PURGE_RXABORT);
            }
        }

        public void DiscardOutBuffer()
        {
            if (hComm != INVALID_HANDLE_VALUE)
            {
                PurgeComm(hComm, PURGE_TXCLEAR | PURGE_TXABORT);
            }
        }

        public int Read(byte[] pBuffer, int nStart, int nLen)
        {
            int nReadLen = 0;
            if (hComm != INVALID_HANDLE_VALUE)
            {
                bool bRead = ReadFile(hComm, pBuffer, nLen, ref nReadLen, ref m_osRead);
                if (!bRead)
                {
                    if (GetLastError() == ERROR_IO_PENDING)
                    {
                        uint dwWait = WaitForSingleObject(m_osRead.hEvent, _ReadTimeout);
                        if (WAIT_OBJECT_0 == dwWait)
                        {	// wait success
                            if (GetOverlappedResult(hComm, ref m_osRead, ref nReadLen, false))
                            {
                            }
                            else
                            {
                                _ErrorText = "Cannot GetOverlappedResult()";
                            }
                        }
                        else
                        {
                        }
                    }
                }
            }
            else
            {
                return 0;
            }
            return nReadLen;
        }

        public int Write(byte[] pBuffer, int nStart, int nLen)
        {
            int BytesWritten = 0;
            if (hComm != INVALID_HANDLE_VALUE)
            {
                bool bWrite = WriteFile(hComm, pBuffer, nLen, ref BytesWritten, ref m_osWrite);
                if (!bWrite)
                {
                    if (GetLastError() == ERROR_IO_PENDING)
                    {
                        uint dwWait = WaitForSingleObject(m_osWrite.hEvent, 200);
                        if (WAIT_OBJECT_0 == dwWait)
                        {	// wait success
                            if (GetOverlappedResult(hComm, ref m_osWrite, ref BytesWritten, false))
                            {
                            }
                            else
                            {
                                _ErrorText = "Cannot GetOverlappedResult()";
                            }
                        }
                        else
                        {
                        }
                    }
                }
            }
            return BytesWritten;
        }
    }
}
