using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Collections.Specialized;
using System.Windows.Forms;
using OSPS.AppFramework.VLicense;

namespace OSPS.AppFramework.Common
{
    public class ConfigureProcess
    {
        private static string _ErrorText = "";

        public ConfigureProcess()
        {
        }

        public static string GetQueueDBConnection()
        {
            string szConnection = "";
            try
            {
                //读取数据库连接的字符串
                string szFormat = ConfigurationManager.ConnectionStrings["QueueDBConn"].ToString();
                string szIPAddress = GetUserConfiguration("QueueDBConnection", "DBIPAddress");
                string szDBDatabase = GetUserConfiguration("QueueDBConnection", "DBDatabase");
                string szDBUsername = GetUserConfiguration("QueueDBConnection", "DBUsername");
                string szDBPassword = GetUserConfiguration("QueueDBConnection", "DBPassword");
                string szDesPassword = MyEncoder.Decode(szDBPassword);
                string szTimeout = GetUserConfiguration("QueueDBConnection", "ConnTimeout");
                szConnection = String.Format(szFormat, szIPAddress, szDBDatabase, szDBUsername, szDesPassword, szTimeout);
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return szConnection;
        }

        public static string GetDBConnection()
        {
            string szConnection = "";
            try
            {
                //读取数据库连接的字符串
                string szFormat = ConfigurationManager.ConnectionStrings["DBConntection"].ToString();
                string szPassword = ConfigurationManager.ConnectionStrings["DBPassword"].ToString();
                string szDesPassword = MyEncoder.Decode(szPassword);
                szConnection = String.Format(szFormat, szDesPassword);
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return szConnection;
        }

        #region GetConfiguration
        /**//// <summary>
        /// 取得appSettings里的值
        /// </summary>
        /// <param name="key">键</param>
        /// <returns>值</returns>
        public static string GetConfiguration(string key)
        {
            return ConfigurationManager.AppSettings[key];
        }
        #endregion

        #region GetUserConfiguration
        public static string GetUserConfiguration(string szSection, string szKey)
        {
            string value = "";
            try
            {
                NameValueCollection nc = (NameValueCollection)System.Configuration.ConfigurationManager.GetSection(szSection);
                value = nc[szKey].ToString();
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return value;
        }
        #endregion

        #region GetConfigurationList
        /**/
        /// <summary>
        /// 取得appSettings里的值列表
        /// </summary>
        /// <param name="filePath">配置文件路径</param>
        /// <returns>值列表</returns>
        public static KeyValueConfigurationCollection GetConfigurationList(string szSection, ConfigurationUserLevel userLevel)
        {
            AppSettingsSection appSection = null;                       //AppSection对象
            Configuration configuration = null;                         //Configuration对象     
            KeyValueConfigurationCollection k = null;                   //返回的键值对类型

            configuration = ConfigurationManager.OpenExeConfiguration(userLevel);

            //取得AppSettings节
            appSection = (AppSettingsSection)configuration.Sections[szSection];

            //取得AppSetting节的键值对
            k = appSection.Settings;
            return k;
        }
        #endregion

        #region SetConfiguration
        /**//// <summary>
        /// 设置appSetting的值
        /// </summary>
        /// <param name="key">键</param>
        /// <param name="value">值</param>
        /// <param name="filePath">App.config文件路径</param>
        public static bool SetConfiguration(string key, string value,string filePath)
        {
            bool bRet = false;
            try
            {
                Configuration configuration = null;                 //Configuration对象

                configuration = ConfigurationManager.OpenExeConfiguration(filePath);

                ConfigurationManager.AppSettings[key] = value;
                configuration.Save(ConfigurationSaveMode.Modified);
                bRet = true;
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }
        #endregion

        #region SetConfiguration
        /**//// <summary>
        /// 设置appSetting的值
        /// </summary>
        /// <param name="key">键</param>
        /// <param name="value">值</param>
        public static bool SetConfiguration(string key, string value)
        {
            string filePath = AppDomain.CurrentDomain.SetupInformation.ConfigurationFile;
            return SetConfiguration(key, value, filePath);
        }
        #endregion

        #region SetUserConfiguration
        public static bool SetUserConfiguration(string szSection, string szKey, string szValue)
        {
            bool bRet = false;
            try
            {
                string filePath = AppDomain.CurrentDomain.SetupInformation.ConfigurationFile;
                System.Xml.XmlDocument xmldoc = new System.Xml.XmlDocument();
                xmldoc.Load(filePath);

                foreach (System.Xml.XmlNode xnode in xmldoc["configuration"][szSection])
                {
                    if (xnode.Name == "add")
                    {
                        if (xnode.Attributes.GetNamedItem("key").Value == szKey )
                        {
                            xnode.Attributes.GetNamedItem("value").Value = szValue;
                            break;
                        }
                    }
                }
                xmldoc.Save(filePath);

                ConfigurationManager.RefreshSection(szSection);
                bRet = true;
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }
        #endregion
        #region GetXMLConfiguration
        public static string GetXMLConfiguration(string szFilename, string szRoot, string szSection, string szKey)
        {
            string szValue = "";
            try
            {
                System.Xml.XmlDocument xmldoc = new System.Xml.XmlDocument();
                xmldoc.Load(szFilename);

                foreach (System.Xml.XmlNode xnode in xmldoc[szRoot][szSection])
                {
                    if (xnode.Name == "add")
                    {
                        if (xnode.Attributes.GetNamedItem("key").Value == szKey)
                        {
                            szValue = xnode.Attributes.GetNamedItem("value").Value;
                            break;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return szValue;
        }
        #endregion

        #region SetXMLConfiguration
        public static bool SetXMLConfiguration(string szFilename, string szRoot, string szSection, string szKey, string szValue)
        {
            bool bRet = false;
            try
            {
                System.Xml.XmlDocument xmldoc = new System.Xml.XmlDocument();
                xmldoc.Load(szFilename);

                foreach (System.Xml.XmlNode xnode in xmldoc[szRoot][szSection])
                {
                    if (xnode.Name == "add")
                    {
                        if (xnode.Attributes.GetNamedItem("key").Value == szKey)
                        {
                            xnode.Attributes.GetNamedItem("value").Value = szValue;
                            break;
                        }
                    }
                }
                xmldoc.Save(szFilename);
                bRet = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return bRet;
        }
        #endregion

        public static string GetOSPSDBConnection()
        {
            string szConnection = "";
            try
            {
                //读取数据库连接的字符串
                string szFormat = ConfigurationManager.ConnectionStrings["DBConntection"].ToString();
                string szPassword = ConfigurationManager.ConnectionStrings["DBPassword"].ToString();
                string szDesPassword = MyEncoder.Decode(szPassword);
                szConnection = String.Format(szFormat, szDesPassword);
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return szConnection;
        }
    }
}
