using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using OSPS.AppFramework.DBModule;

namespace OSPS.AppFramework.AccessDatabase
{
    public class TrunkNoRecognitionRecordSet
    {
        private static string _tablename = "T_TrunkNoRecognitionRecord";
        public static string Tablename
        {
            get { return _tablename; }
            set { _tablename = value; }
        }

        private static string _errorText;
        public static string ErrorText
        {
            get { return _errorText; }
            set { _errorText = value; }
        }

        public static DataTable GetAllDataTable(string szFilter)
        {
            string strSql = "Select * From T_TrunkNoRecognitionRecord ";
            strSql += szFilter;

            IDatabaseBridge idb = DatabaseFactory.Create();
            DataTable dt = idb.GetDataTable(strSql);
            if (dt == null)
            {
                return null;
            }
            if (dt.Rows.Count == 0)
            {
                return null;
            }
            return dt;
        }

        public static bool InsertData(T_TrunkNoRecognitionRecord record)
        {
            bool iRet = false;
            try
            {
                string strSql = "Insert Into T_TrunkNoRecognitionRecord(F_TrunkNo, F_EnterTime, F_State, F_ImageIndex) ";
                strSql += "Values(@F_TrunkNo, @F_EnterTime, @F_State, @F_ImmageIndex); ";

                Dictionary<string, object> parms = new Dictionary<string, object>();
                parms.Add("F_TrunkNo", record.F_TrunkNo);
                parms.Add("F_EnterTime", record.F_EnterTime);
                parms.Add("F_State",record.F_State);
                parms.Add("F_ImageIndex",record.F_ImageIndex);

                IDatabaseBridge idb = DatabaseFactory.Create();
                if (idb.ExecuteCommand(strSql.ToString(), parms) == -1)
                {
                    _errorText = idb.LastException.ToString();
                    return false;
                }
                return iRet;
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
                return iRet;
            }
        }

        public static T_TrunkNoRecognitionRecord GetRecordFromImageIndex(string szImageIndex)      
        {
            try
            {
                string strSql = "Select * From T_TrunkNoRecognitionRecord Where F_ImageIndex = @F_ImageIndex;";

                Dictionary<string, object> parm = new Dictionary<string, object>();
                parm.Add("F_ImageIndex", szImageIndex);

                IDatabaseBridge idb = DatabaseFactory.Create();
                DataTable dt = idb.GetDataTable(strSql,parm);
                if (dt == null)
                {
                    return null;
                }
                if (dt.Rows.Count == 0)
                {
                    _errorText = "信息不存在";
                    return null;
                }
                T_TrunkNoRecognitionRecord record = GetRecordFromDR(dt.Rows[0]);
                return record;
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
                return null;
            }
        }

        private static T_TrunkNoRecognitionRecord GetRecordFromDR(DataRow dr)
        {
            T_TrunkNoRecognitionRecord record = new T_TrunkNoRecognitionRecord();
            record.F_TrunkNo = dr["F_TrunkNo"].ToString();
            record.F_State = dr["F_State"].ToString();
            record.F_ImageIndex = dr["F_ImageIndex"].ToString();
            record.F_EnterTime = OSPS.AppFramework.Common.CommonFunction.GetDateTimeValue(dr["F_EnterTime"].ToString());
            return record;
        }

        public static bool UpdateRecord(T_TrunkNoRecognitionRecord record)
        {
            try
            {
                string strSql = "Update T_TrunkNoRecognitionRecord Set F_TrunkNo =@F_TrunkNo,F_EnterTime =@F_EnterTime Where F_ImageIndex = F_ImageIndex;";

                Dictionary<string, object> parms = new Dictionary<string, object>();
                parms.Add("F_TrunkNo", record.F_TrunkNo);
                parms.Add("F_EnterTime", record.F_EnterTime);
                parms.Add("F_State", record.F_State);
                parms.Add("F_ImageIndex", record.F_ImageIndex);

                IDatabaseBridge idb = DatabaseFactory.Create();
                if (idb.ExecuteCommand(strSql.ToString(), parms) == -1)
                {
                    _errorText = idb.LastException.ToString();
                    return false;
                }
                return true;
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
                return false;
            }
            
        }
    }
}
