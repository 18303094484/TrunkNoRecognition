using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace OSPS.AppFramework.AccessDatabase
{
    public class OrderStatesSet
    {
        private static string _tablename = "T_Order";
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

        /// <summary>
        /// 查询订单状态
        /// </summary>
        /// <param name="szState"></param>
        /// <returns></returns>
        public static string GetStateNameForOrder(int szState)
        {
            string state = "";
            try
            {
                string strSql = "Select F_Name From T_OrderStatus Where F_ID =@F_ID; ";
                Dictionary<string, object> param = new Dictionary<string, object>();
                param.Add("F_ID",szState);

                IDatabaseBridge idb = DatabaseFactory.Create();
                DataTable dt = idb.GetDataTable(strSql, param);
                if (dt == null)
                {
                    _errorText = idb.LastException.Message;
                    return state;
                }
                if (dt.Rows.Count == 0)
                {
                    state = "没有该车牌号状态";
                    return state;
                }
                state = dt.Rows[0]["F_Name"].ToString();
                return state;
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
                return state;
            }
        }
    }
}
