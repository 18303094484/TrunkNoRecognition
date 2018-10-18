using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using System.Web;

namespace OSPS.AppFramework.Common
{
    /*******************************
     * 发送Post请求
     * 传输都是用UTF-8编码
     ******************************/
    public class HttpPostHelper
    {
        private static string _ErrorText = "";
        public static string ErrorText
        {
            get { return _ErrorText; }
            set { _ErrorText = value; }
        }
        /// <summary>  
        ///1.不带参数发送Post请求
        /// 指定Post地址使用Get 方式获取全部字符串  
        /// </summary>  
        /// <param name="url">请求后台地址</param>  
        /// <returns></returns>
        public static string Post(string url)
        {
            string result = "";
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);
            req.Method = "POST";
            HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
            Stream stream = resp.GetResponseStream();
            //获取内容  
            using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
            {
                result = reader.ReadToEnd();
            }
            return result;
        }
        /// <summary>  
        /// 2.带参数Post请求,指定键值对
        /// 指定Post地址使用Get 方式获取全部字符串  
        /// </summary>  
        /// <param name="url">请求后台地址</param>  
        /// <returns></returns>  
        public static string Post(string url, Dictionary<string, string> dic)
        {
            string result = "";
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);
            req.Method = "POST";
            req.Timeout = 1000 * 50;
            req.ContentType = "application/x-www-form-urlencoded";//"application/json";//
            req.ServicePoint.Expect100Continue = false;
            #region 添加Post 参数
            StringBuilder builder = new StringBuilder();
            int i = 0;
            foreach (var item in dic)
            {
                if (i > 0)
                    builder.Append("&");
                builder.AppendFormat("{0}={1}", item.Key, item.Value);
                i++;
            }
            byte[] data = Encoding.UTF8.GetBytes(builder.ToString());
            req.ContentLength = data.Length;
            using (Stream reqStream = req.GetRequestStream())
            {
                reqStream.Write(data, 0, data.Length);
                reqStream.Close();
            }
            #endregion
            HttpWebResponse resp = null;
            try
            {
                //response = (HttpWebResponse)request.GetResponse();//获得响应
                resp = (HttpWebResponse)req.GetResponse();
                Stream stream = resp.GetResponseStream();
                //获取响应内容  
                using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
                {
                    result = reader.ReadToEnd();
                }
            }
            catch (WebException ex)
            {
                _ErrorText = ex.Message;
                return "";
            }
            return result;
        }
        /// <summary>  
        /// 3.带参数的Post请求，指定发送字符串内容  
        /// 指定Post地址使用Get 方式获取全部字符串  
        /// </summary>  
        /// <param name="url">请求后台地址</param>  
        /// <param name="content">Post提交数据内容(utf-8编码的)</param>  
        /// <returns></returns>  
        public string Post(string url, string method, string content)
        {
            string result = "";
            HttpWebRequest req = null;
            req = (HttpWebRequest)WebRequest.Create(url + "/" + method);
            req.Method = "POST";
            req.ContentType = "application/json";//"application/x-www-form-urlencoded";//

            #region 添加Post 参数
            byte[] data = Encoding.UTF8.GetBytes(content);
            req.ContentLength = data.Length;
            using (Stream reqStream = req.GetRequestStream())
            {
                reqStream.Write(data, 0, data.Length);
                reqStream.Close();
            }
            #endregion
            try
            {
                HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
                Stream stream = resp.GetResponseStream();
                //获取响应内容  
                using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
                {
                    result = reader.ReadToEnd();
                }
                resp.Close();

                stream.Dispose();
                stream.Close();
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            //Reader.Dispose();

            return result;
        }
        public static string HttpPost(string Url, string postDataStr)
        {
            string result = "";
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(Url);
                request.Method = "POST";
                request.ContentType = "application/json";
                // request.ContentLength = Encoding.UTF8.GetByteCount(postDataStr);  

                Stream myRequestStream = request.GetRequestStream();
                //如果为gb2312，参数中有汉字时会发生错误：   
                //远程服务器返回错误: (400) 错误的请求。        
                StreamWriter myStreamWriter =
                    new StreamWriter(myRequestStream, Encoding.GetEncoding("utf-8"));

                myStreamWriter.Write(postDataStr);
                myStreamWriter.Close();

                HttpWebResponse response = (HttpWebResponse)request.GetResponse();

                Stream myResponseStream = response.GetResponseStream();
                StreamReader myStreamReader =
                    new StreamReader(myResponseStream, Encoding.GetEncoding("utf-8"));
                string retString = myStreamReader.ReadToEnd();
                result = retString;
                myStreamReader.Close();
                myResponseStream.Close();
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return result;
        }

        public static string HttpPostWebService(string url, string method, string num1, string num2, string num3, string num4, string num5, double num6, string num7, string num8, string num9)
        {
            System.GC.Collect();
            string result = string.Empty;
            string param = string.Empty;
            byte[] bytes = null;

            Stream writer = null;
            HttpWebRequest request = null;
            HttpWebResponse response = null;

            param = HttpUtility.UrlEncode("ship") + "=" + HttpUtility.UrlEncode(num1) + "&" + HttpUtility.UrlEncode("oilType") + "=" + HttpUtility.UrlEncode(num2);
            param += "&" + HttpUtility.UrlEncode("oil") + "=" + HttpUtility.UrlEncode(num3) + "&" + HttpUtility.UrlEncode("company") + "=" + HttpUtility.UrlEncode(num4);
            param += "&" + HttpUtility.UrlEncode("tank") + "=" + HttpUtility.UrlEncode(num5) + "&" + HttpUtility.UrlEncode("amount") + "=" + HttpUtility.UrlEncode(num6.ToString("F2"));
            param += "&" + HttpUtility.UrlEncode("serialNumber") + "=" + HttpUtility.UrlEncode(num7) + "&" + HttpUtility.UrlEncode("remark") + "=" + HttpUtility.UrlEncode(num8);
            param += "&" + HttpUtility.UrlEncode("operatorName") + "=" + HttpUtility.UrlEncode(num9);
            bytes = Encoding.UTF8.GetBytes(param);

            request = (HttpWebRequest)WebRequest.Create(url + "/" + method);
            request.Method = "POST";
            request.Timeout = 1000 * 50;
            request.ContentType = "application/x-www-form-urlencoded";//"application/json";//
            request.ContentLength = bytes.Length;
            request.ServicePoint.Expect100Continue = false;
            //request.UserAgent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; .NET CLR 1.0.3705;)";
            try
            {
                writer = request.GetRequestStream();        //获取用于写入请求数据的Stream对象
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
                return "";
            }

            writer.Write(bytes, 0, bytes.Length);       //把参数数据写入请求数据流
            writer.Close();

            try
            {
                response = (HttpWebResponse)request.GetResponse();      //获得响应
            }
            catch (WebException ex)
            {
                _ErrorText = ex.Message;
                return "";
            }

            Stream myResponseStream = response.GetResponseStream();
            StreamReader myStreamReader =
                new StreamReader(myResponseStream, Encoding.GetEncoding("utf-8"));
            string retString = myStreamReader.ReadToEnd();
            result = retString;
            myStreamReader.Close();
            myResponseStream.Close();
            response.Close();
            #region 这种方式读取到的是一个返回的结果字符串
            //Stream stream = response.GetResponseStream();        //获取响应流
            //XmlTextReader Reader = new XmlTextReader(stream);
            //Reader.MoveToContent();
            //result = Reader.ReadInnerXml();
            #endregion

            #region 这种方式读取到的是一个Xml格式的字符串
            //StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8);
            //result = reader.ReadToEnd();
            #endregion

            return result;
        }
    }
}
