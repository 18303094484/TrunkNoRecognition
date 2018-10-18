using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OSPS.AppFramework.DBModule;

namespace OSPS.AppFramework.Common
{
    public class CommonVariable
    {
        public static Dictionary<string, string> OrderType = new Dictionary<string, string>();
        public static T_User CurrentUser = new T_User();
        public static System.Data.DataTable MenuData;

        public static bool IsNormalUser()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value >= 100);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsAboveNormalUser()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value < 100);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsSpecialUser()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value == 80);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsAdmin()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value == 10);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsAboveAdmin()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value <= 10);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsSuperAdmin()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value == 1);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsLogin()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;
                return true;
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }
        /// <summary>
        /// WEB服务器的IP地址
        /// </summary>
        public static string ServerIP;

        public static bool IsSuperSalesManager()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value <= 8);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsAboveSalesManager()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value <= 9);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsNormalSalesManager()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                return (CurrentUser.F_Value <= 10);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsOMeterManager()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                bRet = (CurrentUser.F_Value <= 5) && (CurrentUser.F_Description.CompareTo("地磅管理员") == 0);
            }
            catch (Exception ex)
            {
            }
            return bRet;

        }

        public static bool IsElecOperator()
        {
            bool bRet = false;
            try
            {
                if (CurrentUser == null) return false;
                if (CurrentUser.F_Name.Length == 0) return false;

                bRet = (CurrentUser.F_Description.CompareTo("电商操作员") == 0);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static int GroupID()
        {
            return CurrentUser.F_GroupId;
        }
    }
    /// <summary>
    /// 岗位
    /// </summary>
    public enum Post
    {
        SuperManager = 1,//超级管理员
        Sales = 35,//业务部
        Security = 36,//安环部
        OMeterManager = 37,//地磅管理员
        Gate = 42,//门卫
        OMeter = 23,//司磅员
    }
    public enum OrderTypeKey
    {
        Normal,
        Contract,
        Internal
    }

}
