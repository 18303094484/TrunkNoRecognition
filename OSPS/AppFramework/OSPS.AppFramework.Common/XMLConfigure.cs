using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Xml.Serialization;

namespace OSPS.AppFramework.Common
{
    public class XMLConfigure
    {
        private string _ErroText = "";
        public const int MaxReservedNumber = 6;
        public string[] ConfigureList = new string[MaxReservedNumber];

        public void SetConfigureList(string szConfigure, string szValue)
        {
            string[] newQueue = new string[MaxReservedNumber];
            int nIndex = 0;
            newQueue[nIndex++] = szValue;
            foreach (string szItem in ConfigureList)
            {
                if (szItem != null)
                {
                    if (szItem.CompareTo(szValue) == 0)
                    {
                    }
                    else
                    {
                        newQueue[nIndex++] = szItem;
                    }
                }
                else
                {
                    newQueue[nIndex++] = "";
                }
                if (nIndex >= MaxReservedNumber) break;
            }
            nIndex = 0;
            if (ConfigureList.Length == 0)
                ConfigureList = new string[MaxReservedNumber];

            foreach (string szItem in newQueue)
            {
                ConfigureList[nIndex++] = szItem;
            }
            SaveSettings(this, szConfigure);
        }

        public static XMLConfigure LoadSettings(string szConfigure)
        {
            string filename = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, szConfigure + ".xml");
            if (File.Exists(filename))
            {
                XmlSerializer xs = new XmlSerializer(typeof(XMLConfigure));
                using (FileStream fs = new FileStream(filename, FileMode.Open, FileAccess.Read))
                {
                    XMLConfigure settings = (XMLConfigure)xs.Deserialize(fs);
                    fs.Close();
                    return settings;
                }
            }
            else
                return new XMLConfigure();
        }

        public static void SaveSettings(XMLConfigure localSetting, string szConfigure)
        {
            string filename = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, szConfigure + ".xml");
            XmlSerializer xs = new XmlSerializer(typeof(XMLConfigure));
            using (FileStream fs = new FileStream(filename, FileMode.Create, FileAccess.Write))
            {
                xs.Serialize(fs, localSetting);
                fs.Close();
            }
        }
    }
}
