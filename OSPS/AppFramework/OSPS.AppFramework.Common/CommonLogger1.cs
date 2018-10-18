using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OSPS.AppFramework.AccessDatabase;

namespace OSPS.AppFramework.Common
{
    public class CommonLogger
    {
        private static string filename;
        private static string SYSCONFIG_LogFile = "CommonLog";

        static Logger log = null;

        static CommonLogger()
        {
            try
            {
                filename = SysConfigureSet.GetParam(SYSCONFIG_LogFile);
                if(filename.Length > 0)
                    log = new Logger(filename);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
            }
        }

        public static bool Write(string szText)
        {
            if(log != null)
                return log.Write(szText);
            return false;
        }

        public static bool Write(string format, params object[] args)
        {
            if (log != null)
                return log.Write(format, args);
            return false;
        }

        public static bool Close()
        {
            if (log != null)
                return log.Close();
            return false;
        }
    }
}
