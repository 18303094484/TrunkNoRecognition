using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace OSPS.AppFramework.Common
{
    public class CommonLogger
    {
        private static string filename="";
        private static string logpath="";

        static Logger log = null;

        static CommonLogger()
        {
            try
            {
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

        public static bool StaticWrite(string szFilename, string szText)
        {
            string szAbsFilename = logpath + szFilename;
            using (StreamWriter w = File.AppendText(szAbsFilename))
            {
                w.WriteLine(szText);
                w.Close();
            }
            return true;
        }

        public static bool StaticWrite(string szFilename, string szFormat, params object[] args)
        {
            string szAbsFilename = logpath + szFilename;
            using (StreamWriter w = File.AppendText(szAbsFilename))
            {
                w.WriteLine(szFormat, args);
                w.Close();
            }
            return true;
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
