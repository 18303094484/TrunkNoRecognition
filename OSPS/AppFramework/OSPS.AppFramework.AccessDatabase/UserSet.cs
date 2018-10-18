using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using OSPS.AppFramework.DBModule;
using OSPS.AppFramework.Common;

namespace OSPS.AppFramework.AccessDatabase
{
    public class UserSet
    {
        #region Variable
        private static string _tablename = "T_User";
        private static string _errorText;

        #endregion

        #region Property
        public static string Tablename
        {
            get { return _tablename; }
            set { _tablename = value; }
        }

        public static string ErrorText
        {
            get { return _errorText; }
            set { _errorText = value; }
        }
        #endregion

        public static DataTable GetAllUser()
        {
            DataTable dt = null;
            try
            {
                IDatabaseBridge idb = DatabaseFactory.Create();
                dt = idb.GetDataTable("select * from T_User");
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
            }
            return dt;
        }

        public static DataTable GetUserByGroup(int nGpId)
        {
            DataTable dt = null;
            try
            {
                IDatabaseBridge idb = DatabaseFactory.Create();
                string szSQL = String.Format("select F_Name from T_User where F_GroupId = {0}", nGpId);
                dt = idb.GetDataTable(szSQL);
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
            }
            return dt;
        }

        public static T_User GetUser(string szUserName, string szPassword)
        {
            IDatabaseBridge idb = DatabaseFactory.Create();
            string szSQL = "select * from T_User where F_Name = @F_Name and F_Password = @F_Password";
            Dictionary<string, object> paras = new Dictionary<string, object>();
            paras.Add("@F_Name", szUserName);
            paras.Add("@F_Password", szPassword);

            DataTable dt = idb.GetDataTable(szSQL, paras);
            if (dt == null) return null;

            if (dt.Rows.Count > 0)
            {
                T_User user = new T_User();
                user.F_Id = int.Parse(dt.Rows[0]["F_Id"].ToString());
                user.F_Name = dt.Rows[0]["F_Name"].ToString();
                user.F_Password = dt.Rows[0]["F_Password"].ToString();
                user.F_Value = int.Parse(dt.Rows[0]["F_Value"].ToString());
                user.F_GroupId = int.Parse(dt.Rows[0]["F_GroupId"].ToString());
                user.f_Enable = dt.Rows[0]["f_Enable"].ToString() == "True";
                user.F_Description = dt.Rows[0].IsNull("F_Description") ? "" : dt.Rows[0]["F_Description"].ToString();
                return user;
            }
            else
                return null;
        }
        /// <summary>
        /// 判断用户是否属于某个组
        /// </summary>
        /// <param name="szGpName">组名</param>
        /// <returns>属于返回true，不属于返回false</returns>
        public static bool IsAnyGp(string szGpName)
        {
            bool bRet = false;
            try
            {
                if (CommonVariable.CurrentUser == null) return false;
                if (CommonVariable.CurrentUser.F_Name.Length == 0) return false;

                string szSQL = String.Format("Select * From T_Group Where F_Id = {0}", CommonVariable.CurrentUser.F_GroupId);
                string szName = "";

                IDatabaseBridge idb = DatabaseFactory.Create();
                DataTable dt = idb.GetDataTable(szSQL);
                if ((dt != null) && (dt.Rows.Count > 0))
                {
                    szName = dt.Rows[0]["F_Name"].ToString();
                }

                bRet = (szName.CompareTo(szGpName) == 0);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }
        /// <summary>
        /// 获取当前登录的用户组名
        /// </summary>
        /// <returns></returns>
        public static string CurrentUserGroupName()
        {
            string szName = "";
            try
            {
                if (CommonVariable.CurrentUser == null) return "";
                if (CommonVariable.CurrentUser.F_Name.Length == 0) return "";

                string szSQL = String.Format("Select * From T_Group Where F_Id = {0}", CommonVariable.CurrentUser.F_GroupId);                
                IDatabaseBridge idb = DatabaseFactory.Create();
                DataTable dt = idb.GetDataTable(szSQL);
                if ((dt != null) && (dt.Rows.Count > 0))
                {
                    szName = dt.Rows[0]["F_Name"].ToString();
                }
            }
            catch (Exception ex)
            {
            }
            return szName;
        }

        public static bool ChangePassword(string szUserID, string newpwd)
        {
            bool bRet = false;
            try
            {
                string szSQL = "Update T_User Set F_Password = @F_Password Where F_Name = @F_Name;";
                Dictionary<string, object> paras = new Dictionary<string, object>();
                paras.Add("@F_Name", szUserID);
                paras.Add("@F_Password", newpwd);
                IDatabaseBridge idb = DatabaseFactory.Create();
                if (idb.ExecuteCommand(szSQL, paras) == -1)
                {
                    _errorText = idb.LastException.ToString();
                    bRet = false;
                }
                else
                    bRet = true;
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
            }
            return bRet;
        }
    }
}
