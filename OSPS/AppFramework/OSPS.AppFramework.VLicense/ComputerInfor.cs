using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Management;

namespace OSPS.AppFramework.VLicense
{
    public class ComputerInfor
    {
        static public string GetMacAddress()
        {
            string szMac = "";
            try
            {
                ManagementClass mc = new ManagementClass("Win32_NetworkAdapterConfiguration");
                ManagementObjectCollection moc2 = mc.GetInstances();
                foreach (ManagementObject mo in moc2)
                {
                    if ((bool)mo["IPEnabled"] == true)
                    {
                        szMac = mo["MacAddress"].ToString();
                        mo.Dispose();
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
            }
            return szMac;
        }

        static public string GetHardDisk()
        {
            string HDid = "";
            try
            {
                ManagementClass cimobject1 = new ManagementClass("Win32_DiskDrive");
                ManagementObjectCollection moc1 = cimobject1.GetInstances();
                foreach (ManagementObject mo in moc1)
                {
                    HDid = (string)mo.Properties["Model"].Value;
                    break;
                }
            }
            catch (Exception ex)
            {
            }
            return HDid;
        }

        public static string GetMotherBoardSerialNumber()
        {
            string SerialNumber = "";
            try
            {
                ManagementClass mc = new ManagementClass("WIN32_BaseBoard");
                ManagementObjectCollection moc = mc.GetInstances();
                foreach (ManagementObject mo in moc)
                {
                    SerialNumber = mo["SerialNumber"].ToString();
                    break;
                }
            }
            catch (Exception ex)
            {
            }
            return SerialNumber;
        }

        public static string GetPHD()
        {
            string szID = "";
            try
            {
                ManagementClass mc = new ManagementClass("Win32_PhysicalMedia");
                foreach (ManagementObject mb in mc.GetInstances())
                {
                    szID = mb.Properties["SerialNumber"].Value.ToString();
                    break;
                }
            }
            catch (Exception ex)
            {
            }
            return szID;
        }

        public static string GetCPUID()
        {
            string cpuInfo = "";//cpu序列号
            try
            {
                ManagementClass cimobject = new ManagementClass("Win32_Processor");
                ManagementObjectCollection moc = cimobject.GetInstances();
                foreach (ManagementObject mo in moc)
                {
                    cpuInfo = mo.Properties["ProcessorId"].Value.ToString();
                    break;
                }
            }
            catch (Exception ex)
            {
            }
            return cpuInfo;
        }

        public static string GetHardwareID()
        {
            string szID = GetPHD();
            if (String.IsNullOrEmpty(szID))
            {
                szID = GetCPUID();
                if (String.IsNullOrEmpty(szID))
                {
                    szID = GetMotherBoardSerialNumber();
                    if (String.IsNullOrEmpty(szID))
                    {
                        szID = GetMacAddress();
                        if (String.IsNullOrEmpty(szID))
                        {
                            szID = "43216785";
                        }
                    }
                }
            }
            string strID = szID.Replace(" ", "");
            return strID;
        }
    }
}
