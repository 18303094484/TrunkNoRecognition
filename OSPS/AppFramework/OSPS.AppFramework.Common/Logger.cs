using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace OSPS.AppFramework.Common
{
    public class Logger
    {
        #region Member Variables

        /// <summary>
        /// 日志根目录
        /// </summary>
        private string logfilename;
        private StreamWriter fileWrite = null;
        private FileInfo fileInfo = null;

        public string LogFilename
        {
            get { return logfilename; }
        }

        #endregion

        #region Constructor

        public static string GetLogFilename(string filename)
        {
            //应该首先检测 Logger 是否存在；
            string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Logger");
            filename = Path.Combine(path, filename);
            return filename;
        }

        public Logger(string filename)
        {
            try
            {
                //应该首先检测 Logger 是否存在；
                string  path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Logger");
                DirectoryInfo di = new DirectoryInfo(path);
                if (!di.Exists) di.Create();
                filename = Path.Combine(path, filename);
                fileInfo = new FileInfo(filename);
                fileWrite = fileInfo.AppendText();
                logfilename = filename;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                fileWrite = null;
                fileInfo = null;
            }
        }

        public bool Write(string szText)
        {

            bool bWrite = false;
            try
            {
                if (fileWrite != null)
                {
                    fileWrite.WriteLine(szText);
                    bWrite = true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return bWrite;
        }

        public bool Write(string format, params object[] args)
        {
            bool bWrite = false;
            try
            {
                if (fileWrite != null)
                {
                    fileWrite.WriteLine(format, args);
                    bWrite = true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return bWrite;
        }

        public bool Close()
        {
            bool bWrite = false;
            try
            {
                if (fileWrite != null)
                {
                    fileWrite.Close();
                    bWrite = true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return bWrite;
        }

        #endregion

    }
}
