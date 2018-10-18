using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OSPS.AppFramework.Common
{
    public class SystemConfigure
    {
        private static string _XMLConfigureFilename = "\\Template\\QDABSHICCard.xml";

        public static string ReadConfigure(string szSubFlag, string szKey)
        {
            string szValue = "";
            string szErrStr = "";
            bool bRet = ReadConfigure("QDABSHICCard", szSubFlag, szKey, ref szValue, ref szErrStr);
            return szValue;
        }

        public static bool ReadConfigure(string szRootFlag, string szSubFlag, string szKey, ref string szValue, ref string errstr)
        {
            bool bRet = false;
            try
            {
                string szFilename = System.Windows.Forms.Application.StartupPath.Trim() + _XMLConfigureFilename;
                szValue = ConfigureProcess.GetXMLConfiguration(szFilename, szRootFlag, szSubFlag, szKey);
                bRet = true;
            }
            catch (Exception ex)
            {
                errstr = ex.Message;
                bRet = false;
            }
            return bRet;
        }

        public static string GetSendCompany(ref string errstr)
        {
            string szValue = "";
            try
            {
                bool bRet = ReadConfigure("QDABSHICCard", "CommonConfigure", "SendCompany", ref szValue, ref errstr);
            }
            catch (Exception ex)
            {
                errstr = ex.Message;
            }
            return szValue;
        }

        public static string ReadICPort(ref string errstr)
        {
            string szCOMPort = "COM1";
            try
            {
                bool bRet = ReadConfigure("QDABSHICCard", "CommonConfigure", "ICCardPort", ref szCOMPort, ref errstr);
            }
            catch (Exception ex)
            {
                errstr = ex.Message;
            }
            return szCOMPort;
        }

        public static int ReadIDUSBPort(ref string errstr)
        {
            int nPort = 1001;
            try
            {
                string szPort = "";
                bool bRet = ReadConfigure("QDABSHICCard", "CommonConfigure", "IDUSBPort", ref szPort, ref errstr);
                if (bRet)
                    nPort = Convert.ToInt32(szPort);
            }
            catch (Exception ex)
            {
                errstr = ex.Message;
            }
            return nPort;
        }

        public static bool ReadQueueDB(ref string szConn, ref string errstr)
        {
            return ReadConfigure("QDABSHICCard", "CommonConfigure", "QueueDB", ref szConn, ref errstr);
        }

        public static bool ReadASPSDB(ref string szConn, ref string errstr)
        {
            return ReadConfigure("QDABSHICCard", "CommonConfigure", "ASPSDB", ref szConn, ref errstr);
        }

        public static bool ReadERPDB(ref string szConn, ref string errstr)
        {
            return ReadConfigure("QDABSHICCard", "CommonConfigure", "ERPDB", ref szConn, ref errstr);
        }

        public static bool NeedVerifyIDNo(ref string errstr)
        {
            bool bRet = false;
            try
            {
                string szValue = "";
                bRet = ReadConfigure("QDABSHICCard", "CommonConfigure", "NeedVerifyIDNo", ref szValue, ref errstr);
                if (bRet)
                {
                    bRet = Convert.ToBoolean(szValue);
                }
            }
            catch (Exception ex)
            {
                errstr = ex.Message;
            }
            return bRet;
        }

        public static string GetERPXMLFlag(string szKey)
        {
            return ReadConfigure("ERPXMLFlag", szKey);
        }

        public static string ReadFinishedOperator(ref string errstr)
        {
            string szOperator = "";
            bool bRet = ReadConfigure("QDABSHICCard", "ERPXMLFlag", "FinishOperator", ref szOperator, ref errstr);
            return szOperator;
        }
    }
}
