using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Xml.Serialization;

namespace OSPS.AppFramework.Common
{
    public class LocalSettings
    {
        public string LastLoginUser;
        public DateTime LastLoginTime;
        public string CreateCardICCardPort;
        public string GetMoneyICCardPort;
        public string LoadMeterICCardPort;
        public string DriverQueryICCardPort;
        public string LoadMeterLEDCOMPort;
        public int OMeterOrderFormX = 0;
        public int OMeterOrderFormY = 0;

        public string GetICCardPort(string szName)
        {
            string port = "COM1";
            try
            {
                if (szName.CompareTo("CreateCardICCardPort") == 0)
                {
                    port = CreateCardICCardPort;
                }
                else if (szName.CompareTo("GetMoneyICCardPort") == 0)
                {
                    port = GetMoneyICCardPort;
                }
                else if (szName.CompareTo("LoadMeterICCardPort") == 0)
                {
                    port = LoadMeterICCardPort;
                }
                else if (szName.CompareTo("DriverQueryICCardPort") == 0)
                {
                    port = DriverQueryICCardPort;
                }
                else if (szName.CompareTo("LoadMeterLEDCOMPort") == 0)
                {
                    port = LoadMeterLEDCOMPort;
                }
            }
            catch (Exception ex)
            {
            }
            return port;
        }

        public void SetICCardPort(string szName, string port)
        {
            try
            {
                if (szName.CompareTo("CreateCardICCardPort") == 0)
                {
                    CreateCardICCardPort = port;
                }
                else if (szName.CompareTo("GetMoneyICCardPort") == 0)
                {
                    GetMoneyICCardPort = port;
                }
                else if (szName.CompareTo("LoadMeterICCardPort") == 0)
                {
                    LoadMeterICCardPort = port;
                }
                else if (szName.CompareTo("DriverQueryICCardPort") == 0)
                {
                    DriverQueryICCardPort = port;
                }
                else if (szName.CompareTo("LoadMeterLEDCOMPort") == 0)
                {
                    LoadMeterLEDCOMPort = port;
                }
                SaveSettings(this);
            }
            catch (Exception ex)
            {
            }
        }

        public LocalSettings()
        {
        }

        public static LocalSettings LoadSettings()
        {
            string filename = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Config.xml");
            if (File.Exists(filename))
            {
                XmlSerializer xs = new XmlSerializer(typeof(LocalSettings));
                using (FileStream fs = new FileStream(filename, FileMode.Open, FileAccess.Read))
                {
                    LocalSettings settings = (LocalSettings)xs.Deserialize(fs);
                    fs.Close();
                    return settings;
                }
            }
            else
                return new LocalSettings();
        }

        public static void SaveSettings(LocalSettings localSetting)
        {
            string filename = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Config.xml");
            XmlSerializer xs = new XmlSerializer(typeof(LocalSettings));
            using (FileStream fs = new FileStream(filename, FileMode.Create, FileAccess.Write))
            {
                xs.Serialize(fs, localSetting);
                fs.Close();
            }
        }

    }
}
