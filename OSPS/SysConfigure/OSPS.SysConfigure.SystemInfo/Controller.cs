using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using OSPS.AppFramework.AccessDatabase;
using System.Windows.Forms;
using System.Data.SqlClient;
using OSPS.AppFramework.DBModule;
using OSPS.AppFramework.Common;

namespace OSPS.SysConfigure.SystemInfo
{
    class Controller
    {
        
        private  IDatabaseBridge idb = DatabaseFactory.Create();

        internal DataTable GetAllSystemInfo()
        {

            DataTable dt = idb.GetDataTable("SELECT F_Id,F_Name,F_Value,F_Description FROM T_SysConfigure");
            return dt;
        }


        internal bool DeleteSystemInfo(int fid)
        {
            StringBuilder sqlString = new StringBuilder();
            sqlString.Append("delete T_SysConfigure where F_Id=@F_ID");
            Dictionary<string, object> dc = new Dictionary<string, object>();
            dc.Add("@F_ID", fid);

            if (idb.ExecuteCommand(sqlString.ToString(), dc) == -1)
            {
                string str;
                str = "SysConfigure" + DateTime.Now.ToString("yyyyMMdd") + ".txt";
                MessageBox.Show("数据删除错误！请查看文件" + str);
                //需要在这里写 loger 日志文件；
                CommonFunction.WriteLogger(str, idb.LastException.ToString());
            }
            return true;
        }

        internal void SaveSystemInfo(T_SysConfigure myobj)
        {
            StringBuilder sqlString = new StringBuilder();
            sqlString.Append("update T_SysConfigure set F_Name=@F_Name,F_Value=@F_Value,F_Description=@F_Description");
            sqlString.Append(" where F_Id=@F_Id ");

            Dictionary<string, object> dc = new Dictionary<string, object>();


            dc.Add("@F_Name", myobj.F_Name);
            dc.Add("@F_Value", myobj.F_Value);
            dc.Add("@F_Description", myobj.F_Description);
            dc.Add("@F_Id", myobj.F_Id);
            

            if (idb.ExecuteCommand(sqlString.ToString (), dc) == -1)
            {
                string str;
                str = "SysConfigure" + DateTime.Now.ToString("yyyyMMdd") + ".txt";
                MessageBox.Show("数据保存错误！请查看文件" + str);
                //需要在这里写 loger 日志文件；
                CommonFunction.WriteLogger(str, idb.LastException.ToString());
            }

        }

        internal void CreateSystemInfo(T_SysConfigure myobj)
        {
            StringBuilder sqlString = new StringBuilder();
            sqlString.Append("insert into T_SysConfigure (F_Name,F_Value,F_Description)");
            sqlString.Append(" values(@F_Name,@F_Value,@F_Description)");
            Dictionary<string, object> dc = new Dictionary<string, object>();


            dc.Add("@F_Name", myobj.F_Name);
            dc.Add("@F_Value", myobj.F_Value);
            dc.Add("@F_Description", myobj.F_Description);
            dc.Add("@F_Id", myobj.F_Id);

            if (idb.ExecuteCommand(sqlString.ToString(), dc) == -1)
            {
                string str;
                str = "SysConfigure" + DateTime.Now.ToString("yyyyMMdd") + ".txt";
                MessageBox.Show("数据插入错误！请查看文件" + str);
                //需要在这里写 loger 日志文件；
                CommonFunction.WriteLogger(str, idb.LastException.ToString());

            }


        }


        internal void PrintModuleInfo()
        {

        }

        internal DataTable GetAllCompany()
        {
            DataTable dt = idb.GetDataTable("select F_Name from T_Company");
            return dt;

        }



    }
}
