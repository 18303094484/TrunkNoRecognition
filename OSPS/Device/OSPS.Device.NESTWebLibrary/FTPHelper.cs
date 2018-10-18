using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;

namespace OSPS.Device.NESTWebLibrary
{
    public class FTPHelper
    {
        private static string _ErrorText = "";
        public static string ErrorText
        {
            set { _ErrorText = value; }
            get { return _ErrorText; }
        }
        /// <summary>
        /// 获取FTP目录中的文件
        /// </summary>
        /// <param name="userId">用户名</param>
        /// <param name="pwd">密码</param>
        /// <param name="ftpPath">ftp目录</param>
        /// <returns>文件列表</returns>
        public static string[] GetFilePath(string userId, string pwd, string ftpPath)
        {
            string[] downloadFiles;
            StringBuilder result = new StringBuilder();
            FtpWebRequest reqFTP;
            try
            {
                reqFTP = (FtpWebRequest)FtpWebRequest.Create(new Uri(ftpPath));
                reqFTP.UseBinary = true;
                reqFTP.Credentials = new NetworkCredential(userId, pwd);
                reqFTP.Method = WebRequestMethods.Ftp.ListDirectory;
                reqFTP.UsePassive = false;
                WebResponse response = reqFTP.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());
                string line = reader.ReadLine();
                while (line != null)
                {
                    result.Append(line);
                    result.Append("\n");
                    line = reader.ReadLine();
                }
                result.Remove(result.ToString().LastIndexOf('\n'), 1);
                reader.Close();
                response.Close();
                return result.ToString().Split('\n');
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
                downloadFiles = null;
                return downloadFiles;
            }
        }
        /// <summary>
        /// 上传文件到ftp
        /// </summary>
        /// <param name="userId">用户名</param>
        /// <param name="pwd">密码</param>
        /// <param name="ftpPath">ftp目录</param>
        /// <param name="filename">文件名</param>
        /// <returns>true: 成功, false: 失败</returns>
        public static bool Upload(string userId, string pwd, string ftpPath, string szFtpFilename, string filename)
        {
            bool bRet = false;
            try
            {
                FileInfo fileInf = new FileInfo(filename);
                FtpWebRequest reqFTP;
                // 根据uri创建FtpWebRequest对象 
                reqFTP = (FtpWebRequest)FtpWebRequest.Create(new Uri(ftpPath + szFtpFilename));
                // ftp用户名和密码
                reqFTP.Credentials = new NetworkCredential(userId, pwd);

                reqFTP.UsePassive = false;
                // 默认为true，连接不会被关闭
                // 在一个命令之后被执行
                reqFTP.KeepAlive = false;
                // 指定执行什么命令
                reqFTP.Method = WebRequestMethods.Ftp.UploadFile;
                // 指定数据传输类型
                reqFTP.UseBinary = true;
                // 上传文件时通知服务器文件的大小
                reqFTP.ContentLength = fileInf.Length;
                // 缓冲大小设置为2kb
                int buffLength = 2048;
                byte[] buff = new byte[buffLength];
                int contentLen;
                // 打开一个文件流 (System.IO.FileStream) 去读上传的文件
                FileStream fs = fileInf.OpenRead();
                // 把上传的文件写入流
                Stream strm = reqFTP.GetRequestStream();
                // 每次读文件流的2kb
                contentLen = fs.Read(buff, 0, buffLength);
                // 流内容没有结束
                while (contentLen != 0)
                {
                    // 把内容从file stream 写入 upload stream
                    strm.Write(buff, 0, contentLen);
                    contentLen = fs.Read(buff, 0, buffLength);
                }
                // 关闭两个流
                strm.Close();
                fs.Close();
                bRet = true;
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return bRet;
        }
        /// <summary>
        /// 删除ftp文件
        /// </summary>
        /// <param name="userId">用户名</param>
        /// <param name="pwd">密码</param>
        /// <param name="ftpPath">ftp目录</param>
        /// <param name="fileName">文件名</param>
        /// <returns>true: 成功，false: 失败</returns>
        public static bool Delete(string userId, string pwd, string ftpPath, string fileName)
        {
            bool bRet = false;
            try
            {
                FtpWebRequest reqFTP;
                reqFTP = (FtpWebRequest)FtpWebRequest.Create(new Uri(ftpPath + fileName));
                reqFTP.Method = WebRequestMethods.Ftp.DeleteFile;
                reqFTP.UseBinary = true;
                reqFTP.Credentials = new NetworkCredential(userId, pwd);
                reqFTP.UsePassive = false;
                FtpWebResponse listResponse = (FtpWebResponse)reqFTP.GetResponse();
                string sStatus = listResponse.StatusDescription;
                bRet = true;
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return bRet;
        }
        /// <summary>
        /// 下载ftp文件
        /// </summary>
        /// <param name="userId">用户名</param>
        /// <param name="pwd">密码</param>
        /// <param name="ftpPath">ftp目录</param>
        /// <param name="filePath">下载目录</param>
        /// <param name="fileName">文件名</param>
        /// <returns>true: 成功, false: 失败</returns>
        public static bool Download(string userId, string pwd, string ftpPath, string ftpFilename, string fileName)
        {
            bool bRet = false;
            try
            {
                FtpWebRequest reqFTP;
                FileStream outputStream = new FileStream(fileName, FileMode.Create);
                reqFTP = (FtpWebRequest)FtpWebRequest.Create(new Uri(ftpPath + ftpFilename));
                reqFTP.Method = WebRequestMethods.Ftp.DownloadFile;
                reqFTP.UseBinary = true;
                reqFTP.Credentials = new NetworkCredential(userId, pwd);
                reqFTP.UsePassive = false;
                FtpWebResponse response = (FtpWebResponse)reqFTP.GetResponse();
                Stream ftpStream = response.GetResponseStream();
                long cl = response.ContentLength;
                int bufferSize = 2048;
                int readCount;
                byte[] buffer = new byte[bufferSize];
                readCount = ftpStream.Read(buffer, 0, bufferSize);
                while (readCount > 0)
                {
                    outputStream.Write(buffer, 0, readCount);
                    readCount = ftpStream.Read(buffer, 0, bufferSize);
                }
                ftpStream.Close();
                outputStream.Close();
                response.Close();
                bRet = true;
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return bRet;
        }

        public static string[] GetFilesDetailList(string userId, string pwd, string ftpPath)
        {
            string[] downloadFiles = null;
            try
            {
                StringBuilder result = new StringBuilder();
                FtpWebRequest ftp;
                ftp = (FtpWebRequest)FtpWebRequest.Create(new Uri(ftpPath));
                ftp.Credentials = new NetworkCredential(userId, pwd);
                ftp.Method = WebRequestMethods.Ftp.ListDirectoryDetails;
                WebResponse response = ftp.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());
                string line = reader.ReadLine();
                while (line != null)
                {
                    result.Append(line);
                    result.Append("\n");
                    line = reader.ReadLine();
                }
                result.Remove(result.ToString().LastIndexOf("\n"), 1);
                reader.Close();
                response.Close();
                return result.ToString().Split('\n');
            }
            catch (Exception ex)
            {
                downloadFiles = null;
                _ErrorText = "GetFilesDetailList Failed, Reason: " + ex.Message;
                return downloadFiles;
            }
        }

        public static string[] GetDirectoryList(string userId, string pwd, string ftpPath)
        {
            string[] drectory = GetFilesDetailList(userId, pwd, ftpPath);
            if (drectory == null) return null;

            string m = string.Empty;
            foreach (string str in drectory)
            {
                if (str.Trim().ToUpper().IndexOf("DIR") >= 0)
                {
                    m += str.Trim() + "\n";
                }
            }
            char[] n = new char[] { '\n' };
            return m.Split(n);
        }

        public static bool DirIsExists(string userId, string pwd, string ftpPath, string szDirectory)
        {
            string[] dirList = GetDirectoryList(userId, pwd, ftpPath);
            if (dirList == null) return false;

            foreach (string str in dirList)
            {
                if (str.Trim().IndexOf(szDirectory.Trim()) >= 0)
                {
                    return true;
                }
            }
            return false;
        }

        public static bool CreateDirectory(string userId, string pwd, string ftpPath, string szDirectory)
        {
            bool bRet = false;
            try
            {
                FtpWebRequest FTP = (FtpWebRequest)FtpWebRequest.Create(new Uri(ftpPath + "/" + szDirectory));
                FTP.Credentials = new NetworkCredential(userId, pwd);
                FTP.Proxy = null;
                FTP.KeepAlive = false;
                FTP.Method = WebRequestMethods.Ftp.MakeDirectory;
                FTP.UseBinary = true;
                FtpWebResponse response = FTP.GetResponse() as FtpWebResponse;
                response.Close();
                bRet = true;
            }
            catch(Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return bRet;
        }
    }
}
