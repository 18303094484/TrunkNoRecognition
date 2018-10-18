using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using OSPS.AppFramework.Common;

namespace OSPS.AppFramework.AccessDatabase
{
    public class OrderSet
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
        /// 根据车牌号判断当前车的订单状态
        /// </summary>
        /// <param name="szTrunkNo"></param>
        /// <returns></returns>
        public static int GetOrderStateByTrunkNo(string szTrunkNo)
        {
            int state = -1;
            try
            {
                string sqlStr = "Select F_OrderStatus From T_Order Where F_TrunkNo = @F_TrunkNo; ";

                Dictionary<string, object> parm = new Dictionary<string, object>();
                parm.Add("F_TrunkNo", szTrunkNo);

                IDatabaseBridge idb = DatabaseFactory.Create();
                DataTable dt = idb.GetDataTable(sqlStr, parm);
                if (dt == null)
                {
                    _errorText = idb.LastException.Message;
                    return -1;
                }
                if (dt.Rows.Count == 0)
                {
                    return -1;
                }
                state = CommonFunction.GetIntValue(dt.Rows[0]["F_OrderStatus"].ToString());
                return state;
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
                
                return state;
            }
        }

        /// <summary>
        /// 获取订单状态为大于新油单并未过皮重的车辆
        /// </summary>
        /// <returns></returns>
        public static DataTable GetNoWeightbridgeFromState()
        {
            try
            {
                string strSql = "Select F_TrunkNo,F_DriverName,F_Company,F_OrderStatus,F_CallTime From T_Order Where F_OrderStatus > 0 and F_OrderStatus < 6;";

                IDatabaseBridge idb = DatabaseFactory.Create();
                DataTable dt = idb.GetDataTable(strSql);
                if (dt == null)
                {
                    return null;
                }
                if (dt.Rows.Count == 0)
                {
                    _errorText = "没有找到状态大于0并且小于6的信息";
                    return null;
                }
                return dt;
            }
            catch (Exception ex)
            {
                _errorText = ex.Message;
                return null;
            }
        }
    }
}
