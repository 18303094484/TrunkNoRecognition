using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace OSPS.AppFramework.AccessDatabase
{
    public static class DatabaseFactory
    {
        public static string DBConnection = "";
        public static IDatabaseBridge Create()
        {
            SQLDatabaseBridge sdb = new SQLDatabaseBridge(DBConnection);
            return sdb as IDatabaseBridge;
        }

        public static IDatabaseBridge Create(string szConnection)
        {
            SQLDatabaseBridge sdb = new SQLDatabaseBridge(szConnection);
            return sdb as IDatabaseBridge;
        }

        public static bool CheckDBConnection(string szConnection)
        {
            SQLDatabaseBridge sdb = new SQLDatabaseBridge(szConnection);
            return sdb.CheckConnection();
        }

        /*public static string GetBeginTransSQL(string transName)
        {
            StringBuilder stBulider = new StringBuilder();
            stBulider.AppendFormat("BEGIN TRAN {0};", transName);
            stBulider.AppendFormat("DECLARE @errorSum INT;");
            stBulider.AppendFormat("Set @errorSum = 0;");
            return stBulider.ToString();
        }

        public static string GetEndTransSQL(string transName)
        {
            StringBuilder stBulider = new StringBuilder();
            stBulider.AppendFormat("IF @errorSum <> 0 BEGIN ROLLBACK TRAN {0} END ELSE BEGIN Commit TRAN {0} END;", transName);
            return stBulider.ToString();
        }*/
    }

    public class SQLDatabaseBridge : IDatabaseBridge 
    {
        public SQLDatabaseBridge(string ConnectionString)
        {
            _connection = new SqlConnection(ConnectionString);
        }

        private SqlConnection _connection;
        private Exception _lastException = null;

        #region IDatabaseBridge Members

        public bool CheckConnection()
        {
            bool bConnection = false;
            try
            {
                _connection.Open();
                bConnection = true;
            }
            catch (Exception ex)
            {
                _lastException = ex;
            }
            finally
            {
                _connection.Close();
                SqlConnection.ClearPool(_connection);
            }
            return bConnection;
        }

        public DataSet GetDataSet(string SQLScript)
        {
            return GetDataSet(SQLScript, null);
        }

        public System.Data.DataSet GetDataSet(string SQLScript, Dictionary<string, object> SQLParameters)
        {
            SqlCommand cmd = new SqlCommand(SQLScript, _connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            try
            {
                _connection.Open();
                if (SQLParameters != null)
                    foreach (string key in SQLParameters.Keys)
                    {
                        SqlParameter para = new SqlParameter(key, SQLParameters[key]);
                        cmd.Parameters.Add(para);
                    }
                da.Fill(ds);
            }
            catch (Exception ex)
            {
                _lastException = ex;
                ds = null;
            }
            finally
            {
                da.Dispose();
                cmd.Dispose();
                _connection.Close();
            }
            return ds;
        }

        public DataTable GetDataTable(string SQLScript)
        {
            return GetDataTable(SQLScript, null);
        }

        public DataTable GetDataTable(string SQLScript, Dictionary<string, object> SQLParameters)
        {
            SqlCommand cmd = new SqlCommand(SQLScript, _connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
                
            try
            {
                _connection.Open();
                if (SQLParameters != null)
                {
                    foreach (string key in SQLParameters.Keys)
                    {
                        SqlParameter para = new SqlParameter(key, SQLParameters[key]);
                        cmd.Parameters.Add(para);
                    }
                }
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                _lastException = ex;
                dt = null;
            }
            finally
            {
                da.Dispose();
                cmd.Dispose();
                _connection.Close();
            }
            return dt;
        }

        public int ExecuteCommand(string SQLScript)
        {
            return ExecuteCommand(SQLScript, null);
        }

        public int ExecuteCommand(string SQLScript, Dictionary<string, object> SQLParameters)
        {
            SqlCommand cmd = new SqlCommand(SQLScript, _connection);
            int r;
            try
            {
                _connection.Open();
                if (SQLParameters != null)
                    foreach (string key in SQLParameters.Keys)
                    {
                        SqlParameter para = new SqlParameter(key, SQLParameters[key]);
                        cmd.Parameters.Add(para);
                    }
                r = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                _lastException = ex;
                r = -1;

                //可以在此 写入 text 日志文档；

            }
            finally
            {
                cmd.Dispose();
                if(_connection.State == ConnectionState.Open)
                    _connection.Close();
            }
            return r;
        }

        public int ExecuteCommandWithTransaction(string SQLScript)
        {
            return ExecuteCommandWithTransaction(SQLScript, null);
        }

        public int ExecuteCommandWithTransaction(List<string> listSQL, List<Dictionary<string, object>> listParam)
        {
            List<SqlCommand> listCmd = new List<SqlCommand>();
            SqlTransaction stran = null;
            int r = 0;
            try
            {
                _connection.Open();
                stran = _connection.BeginTransaction();
                for (int i = 0; i < listSQL.Count; i++)
                {
                    SqlCommand cmd = new SqlCommand(listSQL[i], _connection);
                    cmd.Transaction = stran;
                    if (listParam[i] != null)
                    {
                        foreach (string key in listParam[i].Keys)
                        {
                            SqlParameter para = new SqlParameter(key, listParam[i][key]);
                            cmd.Parameters.Add(para);
                        }
                    }
                    r = cmd.ExecuteNonQuery();
                    listCmd.Add(cmd);
                }
                stran.Commit();
            }
            catch (Exception ex)
            {
                _lastException = ex;
                r = -1;
                if (stran != null)
                    stran.Rollback();
            }
            finally
            {
                if (stran != null)
                    stran.Dispose();
                foreach (SqlCommand cmd in listCmd)
                {
                    cmd.Dispose();
                }
                if (_connection.State == ConnectionState.Open)
                    _connection.Close();
            }
            return r;
        }

        public int ExecuteCommandWithTransaction(string SQLScript, Dictionary<string, object> SQLParameters)
        {
            SqlCommand cmd = new SqlCommand(SQLScript, _connection);
            SqlTransaction stran = null;
            int r;
            try
            {
                _connection.Open();
                stran = _connection.BeginTransaction();
                cmd.Transaction = stran;
                if (SQLParameters != null)
                {
                    foreach (string key in SQLParameters.Keys)
                    {
                        SqlParameter para = new SqlParameter(key, SQLParameters[key]);
                        cmd.Parameters.Add(para);
                    }
                }
                r = cmd.ExecuteNonQuery();
                stran.Commit();
            }
            catch (Exception ex)
            {
                _lastException = ex;
                r = -1;
                if (stran != null)
                    stran.Rollback();
            }
            finally
            {
                if (stran != null)
                    stran.Dispose();
                cmd.Dispose();
                if (_connection.State == ConnectionState.Open)
                    _connection.Close();
            }
            return r;
        }

        public Exception LastException
        {
            get
            {
                return _lastException;
            }
        }

        public Int64 GetLastInsertID(string szTableName)
        {
            Int64 nID = -1;
            try
            {
                string szSQL = String.Format("select ident_current('{0}')", szTableName);
                DataTable dt = GetDataTable(szSQL);
                if (dt.Rows.Count > 0)
                {
                    nID = Convert.ToInt64(dt.Rows[0][0].ToString());
                }
            }
            catch (Exception ex)
            {
            }
            return nID;
        }
        #endregion
    }
}
