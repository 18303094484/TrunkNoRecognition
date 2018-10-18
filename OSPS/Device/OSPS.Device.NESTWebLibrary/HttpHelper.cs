using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Net;
using System.Web.Script.Serialization;
using System.Drawing;
using OSPS.AppFramework.Common;

namespace OSPS.Device.NESTWebLibrary
{
    public class HttpHelper
    {
        private static string _ErrorText = "";
        public static string ErrorText
        {
            get { return _ErrorText; }
        }

        /// <summary>   
        /// 将本地文件上传到指定的服务器(HttpWebRequest方法)   
        /// </summary>   
        /// <param name="address">文件上传到的服务器</param>   
        /// <param name="fileNamePath">要上传的本地文件（全路径）</param>   
        /// <param name="saveName">文件上传后的名称</param>   
        /// <param name="progressBar">上传进度条</param>   
        /// <returns>成功返回1，失败返回0</returns>   
        public static UploadFileResult UploadFile(string szURL, string fileNamePath, string saveName)
        //ref ProgressBar progressBar, ref Label lbTime, ref Label lbSpeed, ref Label lbSize, ref Label lbState)
        {
            UploadFileResult result = new UploadFileResult();

            FileStream fs = new FileStream(fileNamePath, FileMode.Open, FileAccess.Read);
            BinaryReader r = new BinaryReader(fs);     //时间戳   
            string strBoundary = "----------" + DateTime.Now.Ticks.ToString("x");
            byte[] boundaryBytes = Encoding.ASCII.GetBytes("\r\n--" + strBoundary + "\r\n");     //请求头部信息   
            StringBuilder sb = new StringBuilder();
            sb.Append("--");
            sb.Append(strBoundary);
            sb.Append("\r\n");
            sb.Append("Content-Disposition: form-data; name=\"");
            sb.Append("file");
            sb.Append("\"; filename=\"");
            sb.Append(saveName);
            sb.Append("\";");
            sb.Append("\r\n");
            sb.Append("Content-Type: ");
            sb.Append("application/octet-stream");
            sb.Append("\r\n");
            sb.Append("\r\n");
            string strPostHeader = sb.ToString();
            byte[] postHeaderBytes = Encoding.UTF8.GetBytes(strPostHeader);     // 根据uri创建HttpWebRequest对象   
            HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create(new Uri(szURL));
            httpReq.Method = "POST";     //对发送的数据不使用缓存   
            httpReq.AllowWriteStreamBuffering = false;     //设置获得响应的超时时间（300秒）   
            httpReq.Timeout = 300000;
            httpReq.ContentType = "multipart/form-data; boundary=" + strBoundary;
            long length = fs.Length + postHeaderBytes.Length + boundaryBytes.Length;
            long fileLength = fs.Length;
            httpReq.ContentLength = length;
            try
            {
                //progressBar.Maximum = int.MaxValue;
                //progressBar.Minimum = 0;
                //progressBar.Value = 0;
                //每次上传4k  
                int bufferLength = 4096;
                byte[] buffer = new byte[bufferLength]; //已上传的字节数   
                long offset = 0;         //开始上传时间   
                DateTime startTime = DateTime.Now;
                int size = r.Read(buffer, 0, bufferLength);
                Stream postStream = httpReq.GetRequestStream();         //发送请求头部消息   
                postStream.Write(postHeaderBytes, 0, postHeaderBytes.Length);
                while (size > 0)
                {
                    postStream.Write(buffer, 0, size);
                    offset += size;
                    //progressBar.Value = (int)(offset * (int.MaxValue / length));
                    TimeSpan span = DateTime.Now - startTime;
                    double second = span.TotalSeconds;
                    //lbTime.Text = "已用时：" + second.ToString("F2") + "秒";
                    /*if (second > 0.001)
                    {
                        lbSpeed.Text = "平均速度：" + (offset / 1024 / second).ToString("0.00") + "KB/秒";
                    }
                    else
                    {
                        lbSpeed.Text = " 正在连接…";
                    }
                    lbState.Text = "已上传：" + (offset * 100.0 / length).ToString("F2") + "%";
                    lbSize.Text = (offset / 1048576.0).ToString("F2") + "M/" + (fileLength / 1048576.0).ToString("F2") + "M";
                    Application.DoEvents();
                     */
                    size = r.Read(buffer, 0, bufferLength);
                }
                //添加尾部的时间戳   
                postStream.Write(boundaryBytes, 0, boundaryBytes.Length);
                postStream.Close();         //获取服务器端的响应   
                WebResponse webRespon = httpReq.GetResponse();
                Stream s = webRespon.GetResponseStream();
                //读取服务器端返回的消息  
                StreamReader sr = new StreamReader(s);
                String sReturnString = sr.ReadLine();
                s.Close();
                sr.Close();
                if (!String.IsNullOrEmpty(sReturnString))
                {
                    result = UploadFileResult.FromJson(sReturnString);
                }
            }
            catch (Exception ex)
            {
                result.szErrorMessage = ex.Message;
                WriteLogFile("UploadFile异常！原因：{0}", ex.Message);
                result.bResult = false;
            }
            finally
            {
                fs.Close();
                r.Close();
            }
            return result;
        }


        private static string GetHTTPPictrueFilename(string szOrderNo, string szFileType)
        {
            //string szFilename = "Image" + szOrderNo + szFileType;
            string szFilename = szOrderNo + szFileType;
            return szFilename;
        }

        public static bool UploadPictureToHttpServer(string szURL, string szFilename, string szOrderNo, ref string szSrvFilename)
        {
            bool bRet = false;
            try
            {
                string szHttpFilename = GetHTTPPictrueFilename(szOrderNo, ".jpg");
                HttpHelper.UploadFileResult result = HttpHelper.UploadFile(szURL, szFilename, szHttpFilename);
                if (result != null && result.bResult)
                {
                    szSrvFilename = result.szFilename;
                    bRet = true;
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
                WriteLogFile("UploadPictureToHttpServer异常！原因：{0}", ex.Message);
            }
            return bRet;
        }

        public static Image DownloadPictureFromHttpServer(string szURL)
        {
            Image image = null;
            string szURL1 = szURL.Replace("\\", "/");
            try
            {
                //string szURL1 = szURL.Replace("\\", "/");
                System.Net.WebRequest webreq = System.Net.WebRequest.Create(szURL1);
                System.Net.WebResponse webres = webreq.GetResponse();
                using (System.IO.Stream stream = webres.GetResponseStream())
                {
                    image = Image.FromStream(stream);
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
                WriteLogFile("DownloadPictureFromHttpServer异常！原因：{0}", ex.Message);
                WriteLogFile("图片服务器地址：{0}", szURL1);
            }
            return image;
        }

        public class UploadFileResult
        {
            public bool bResult = false;
            public string szFilename = "";
            public string szErrorMessage = "";

            public static UploadFileResult FromJson(string szJson)
            {
                UploadFileResult result = null;
                try
                {
                    JavaScriptSerializer Serializer = new JavaScriptSerializer();
                    result = Serializer.Deserialize<UploadFileResult>(szJson);
                }
                catch (Exception ex)
                {
                    WriteLogFile("UploadFileResult异常！原因：{0}", ex.Message);
                }
                return result;
            }

            public static string ToJson(UploadFileResult param)
            {
                string szjson = "";
                try
                {
                    JavaScriptSerializer Serializer = new JavaScriptSerializer();
                    szjson = Serializer.Serialize(param);
                }
                catch (Exception ex)
                {
                    WriteLogFile("ToJson异常！原因：{0}", ex.Message);
                }
                return szjson;
            }

            private static string GetHTTPPictrueFilename(string szOrderNo, string szFileType)
            {
                string filename = "Image" + szOrderNo + szFileType;
                return filename;
            }
        }

        private static void WriteLogFile(string szFormat, params object[] args)
        {
            string szText = String.Format(szFormat, args);
            DateTime dt = DateTime.Now;
            string szFilename = "HttpHelper_" + dt.ToString("yyyyMMdd") + ".log";
            CommonFunction.WriteLogger(szFilename, szText);
        }
    }
}
