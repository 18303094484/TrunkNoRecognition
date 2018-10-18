using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace OSPS
{
    public interface IDatabaseBridge
    {
        DataSet GetDataSet(string SQLScript);
        DataSet GetDataSet(string SQLScript, Dictionary<string, object> SQLParameters);
        DataTable GetDataTable(string SQLScript);
        DataTable GetDataTable(string SQLScript, Dictionary<string, object> SQLParameters);
        int ExecuteCommand(string SQLScript);
        int ExecuteCommand(string SQLScript, Dictionary<string, object> SQLParameters);
        int ExecuteCommandWithTransaction(string SQLScript);
        int ExecuteCommandWithTransaction(string SQLScript, Dictionary<string, object> SQLParameters);
        bool CheckConnection();

        Exception LastException
        {
            get;
        }
        Int64 GetLastInsertID(string szTableName);
    }
}
