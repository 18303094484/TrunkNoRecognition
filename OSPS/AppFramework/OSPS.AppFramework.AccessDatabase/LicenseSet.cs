using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace OSPS.AppFramework.AccessDatabase
{
    public class LicenseSet
    {
        #region Variable
        private static string _tablename = "T_Aauthorization";
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

        public static bool InsertLicense(string szID, string szKey)
        {
            if (String.IsNullOrEmpty(szID)) return false;

            bool bRet = false;
            try
            {
                string szSQL = String.Format("Insert Into T_Aauthorization (F_ID, F_Value) Values ('{0}', '{1}')", szID, szKey);
                IDatabaseBridge idb = DatabaseFactory.Create();
                bRet = (idb.ExecuteCommand(szSQL) != -1);
                if (!bRet)
                {
                    _errorText = idb.LastException.ToString();
                }
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
            }
            return bRet;
        }

        public static bool HardwareIDExist(string szID)
        {
            bool bRet = false;
            try
            {
                string szSQL = String.Format("Select * From T_Aauthorization Where F_ID = '{0}'", szID);
                IDatabaseBridge idb = DatabaseFactory.Create();
                DataTable dt = idb.GetDataTable(szSQL);
                bRet = (dt.Rows.Count > 0);
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
            }
            return bRet;
        }
        
        public static bool VerifyLicense(string szID, string szKey)
        {
            if (String.IsNullOrEmpty(szID)) return false;

            bool bRet = false;
            try
            {
                string szSQL = String.Format("Select * From T_Aauthorization Where F_ID = '{0}'", szID);
                IDatabaseBridge idb = DatabaseFactory.Create();
                DataTable dt = idb.GetDataTable(szSQL);
                foreach (DataRow dr in dt.Rows)
                {
                    string szDBKey = dr["F_Value"].ToString();
                    if (szDBKey.CompareTo(szKey) == 0)
                    {
                        bRet = true;
                    }
                    break;
                }
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
            }
            return bRet;
        }

        public static bool UpdateLicense(string szID, string strKey)
        {
            if (String.IsNullOrEmpty(szID)) return false;

            bool bRet = false;
            try
            {
                string szSQL = String.Format("Update T_Aauthorization Set F_Value = '{0}' Where F_ID = '{1}'", strKey, szID);
                IDatabaseBridge idb = DatabaseFactory.Create();
                bRet = (idb.ExecuteCommand(szSQL) != -1);
                if (!bRet)
                {
                    _errorText = idb.LastException.ToString();
                }
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
            }
            return bRet;
        }
    }
}
