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

        #endregion

        #region Constructor

        public Logger(string filename)
        {
            try
            {
                //ReportName = Path.Combine(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Report"), "rptCreateCard.rdlc")
                filename = Path.Combine(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Logger"), filename);

                if (File.Exists(filename))
                {
                    // Delete File
                    File.Delete(filename);
                }
                fileInfo = new FileInfo(filename);
                fileWrite = fileInfo.CreateText();
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
