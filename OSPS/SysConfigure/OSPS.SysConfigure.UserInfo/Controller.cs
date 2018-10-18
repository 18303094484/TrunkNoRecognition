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

namespace OSPS.SysConfigure.UserInfo
{
    class Controller
    {
        
        private  IDatabaseBridge idb = DatabaseFactory.Create();

        internal DataTable GetAllUserInfo()
        {

            DataTable dt = idb.GetDataTable("SELECT a.[F_Id],a.[F_Name],[F_Password],[F_Value],"+
                "[F_GroupId],b.F_Name as F_GroupName,[f_Enable],a.[F_Description] FROM T_User a,T_Group b Where a.F_GroupId =b.F_Id");
            return dt;
        }


        internal bool DeleteUserInfo(int fid)
        {
            StringBuilder sqlString = new StringBuilder();
            sqlString.Append("delete T_User where F_ID=@F_ID");
            Dictionary<string, object> dc = new Dictionary<string, object>();
            dc.Add("@F_ID", fid);

            if (idb.ExecuteCommand(sqlString.ToString(), dc) == -1)
            {
                string str;
                str = "UserInfo" + DateTime.Now.ToString("yyyyMMdd") + ".txt";
                MessageBox.Show("数据删除错误！请查看文件" + str);
                //需要在这里写 loger 日志文件；
                CommonFunction.WriteLogger(str, idb.LastException.ToString());
            }
            return true;
        }

        internal void SaveUserInfo(T_User myobj)
        {
            StringBuilder sqlString = new StringBuilder();
            sqlString.Append("update T_User set F_Name=@F_Name,F_Password=@F_Password,"+
                "F_Value=@F_Value,F_GroupID=@F_GroupID,F_Enable=@F_Enable,F_Description=@F_Description");
            sqlString.Append(" where F_Id=@F_Id ");

            Dictionary<string, object> dc = new Dictionary<string, object>();


            dc.Add("@F_Name", myobj.F_Name);
            dc.Add("@F_Password", myobj.F_Password);
            dc.Add("@F_Value", myobj.F_Value);
            dc.Add("@F_GroupID", myobj.F_GroupId);
            dc.Add("@F_Enable", myobj.f_Enable);
            dc.Add("@F_Description", myobj.F_Description);
            dc.Add("@F_Id", myobj.F_Id);
            

            if (idb.ExecuteCommand(sqlString.ToString (), dc) == -1)
            {
                string str;
                str = "UserInfo" + DateTime.Now.ToString("yyyyMMdd") + ".txt";
                MessageBox.Show("数据保存错误！请查看文件" + str);
                //需要在这里写 loger 日志文件；
                CommonFunction.WriteLogger(str, idb.LastException.ToString());
            }

        }

        internal void CreateUserInfo(T_User myobj)
        {
            StringBuilder sqlString = new StringBuilder();
            sqlString.Append("insert into T_User (F_Name,F_Password,F_Value,F_GroupID,F_Enable,F_Description)");
            sqlString.Append(" values(@F_Name,@F_Password,@F_Value,@F_GroupID,@F_Enable,@F_Description)");
            Dictionary<string, object> dc = new Dictionary<string, object>();


            dc.Add("@F_Name", myobj.F_Name);
            dc.Add("@F_Password", myobj.F_Password);
            dc.Add("@F_Value", myobj.F_Value);
            dc.Add("@F_GroupID", myobj.F_GroupId);
            dc.Add("@F_Enable", myobj.f_Enable);
            dc.Add("@F_Description", myobj.F_Description);
           // dc.Add("@F_Id", myobj.F_Id);

            if (idb.ExecuteCommand(sqlString.ToString(), dc) == -1)
            {
                string str;
                str = "UserInfo" + DateTime.Now.ToString("yyyyMMdd") + ".txt";
                MessageBox.Show("数据插入错误！请查看文件" + str);
                //需要在这里写 loger 日志文件；
                CommonFunction.WriteLogger(str, idb.LastException.ToString());

            }


        }


        internal void PrintUserInfo()
        {

        }

        internal DataTable GetAllCompany()
        {
            DataTable dt = idb.GetDataTable("select F_Name from T_Company");
            return dt;

        }

        internal DataTable GetAllGroupIDName()
        {
            DataTable dt = idb.GetDataTable("select F_Id,F_Name from T_Group");
            return dt;

        }


    }
}
