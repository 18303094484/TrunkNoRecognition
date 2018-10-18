using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;//这是json.net的命名空间

namespace OSPS.AppFramework.Common
{
    public class JsonAnalysis
    {
        public static string DBConnection = @"Server=127.0.0.1;Database=LZPDOSPS;User ID=sa;Password=Password123;Trusted_Connection=true;Integrated Security=false";
        public static string _ErrorText = "";
        /// <summary>   
        /// 根据Json返回DateTable,JSON数据格式如:   
        /// {table:[{column1:1,column2:2,column3:3},{column1:1,column2:2,column3:3}]}   
        /// items:{"2750884":{clicknum:"50",title:"鲍鱼",href:"/shop/E06B14B40110/dish/2750884#menu",desc:"<br/>",src:"15f38721-49da-48f0-a283-8057c621b472.jpg",price:78.00,units:"",list:[],joiner:""}}
        /// </summary>   
        /// <param name="strJson">Json字符串</param>   
        /// <returns></returns>   
        public static DataTable JsonToDataTable(string strJson)
        {
            //取出表名   
            //var rg = new Regex(@"(?<={)[^:]+(?=:\[)", RegexOptions.IgnoreCase);
            var rg = new Regex(@"([^:])+(?=:\{)", RegexOptions.IgnoreCase);
            string strName = rg.Match(strJson).Value;
            DataTable tb = null;
            //去除表名   
            //strJson = strJson.Substring(strJson.IndexOf("{") + 1);
            //strJson = strJson.Substring(0, strJson.IndexOf("}"));

            //获取数据   
            //rg = new Regex(@"(?<={)[^}]+(?=})");
            rg = new Regex(@"(?<={)[^}]+(?=})");

            System.Text.RegularExpressions.MatchCollection mc = rg.Matches(strJson);
            for (int i = 0; i < mc.Count; i++)
            {
                string strRow = mc[i].Value;
                string[] strRows = strRow.Split(',');

                //创建表   
                if (tb == null)
                {
                    tb = new DataTable();
                    tb.TableName = strName;
                    foreach (string str in strRows)
                    {
                        var dc = new DataColumn();
                        string[] strCell = str.Split(':');
                        dc.ColumnName = strCell[0];
                        tb.Columns.Add(dc);
                    }
                    tb.AcceptChanges();
                }

                //增加内容   
                DataRow dr = tb.NewRow();
                for (int r = 0; r < strRows.Length - 1; r++)
                {
                    //dr[r] = strRows[r].Split(':')[1].Trim().Replace("，", ",").Replace("：", ":").Replace("\"", "");
                    dr[r] = strRows[r];
                }
                tb.Rows.Add(dr);
                tb.AcceptChanges();
            }

            return tb;
        }
        /// <summary>
        /// XML批量存入数据库中，列名不同
        /// </summary>
        public static void PerformBulkCopyXMLDataSource()
        {
            string connectionString = @"Server=10.81.36.32;Database=LZPDOSPS;Trusted_Connection=true";

            DataSet ds = new DataSet();
            DataTable sourceData = new DataTable();
            ds.ReadXml(@"D:Products.xml");

            sourceData = ds.Tables[0];

            // 目的    
            using (SqlConnection destinationConnection = new SqlConnection(connectionString))
            {
                // 打开连接    
                destinationConnection.Open();

                using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destinationConnection.ConnectionString))
                {
                    // 列映射 
                    bulkCopy.ColumnMappings.Add("id", "ID");
                    bulkCopy.ColumnMappings.Add("value", "Name");

                    bulkCopy.DestinationTableName = "T_SendCompany";
                    bulkCopy.WriteToServer(sourceData);
                }
            }
        }
        /// <summary>
        /// 从源表中批量复制数据到目的表中
        /// </summary>
        public static void PerformBulkCopyDifferentSchema()
        {
            string connectionString = @"Server=127.0.0.1;Database=LZPDOSPS;User ID=sa;Password=Password123;Trusted_Connection=true;Integrated Security=false";
            //string connectionString = "Data Source=192.168.100.30;Initial Catalog=RsxCompany;Integrated Security=false;User ID=sa;Password=etm0802;MultipleActiveResultSets=True";

            // 源    
            using (SqlConnection sourceConnection = new SqlConnection(connectionString))
            {
                SqlCommand myCommand = new SqlCommand("SELECT TOP 5 * FROM Products_Archive", sourceConnection);
                sourceConnection.Open();
                SqlDataReader reader = myCommand.ExecuteReader();

                // 目的 
                using (SqlConnection destinationConnection = new SqlConnection(connectionString))
                {
                    // 打开连接 
                    destinationConnection.Open();

                    using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destinationConnection))
                    {
                        bulkCopy.ColumnMappings.Add("F_ID", "F_ID");
                        bulkCopy.ColumnMappings.Add("F_Name", "F_Name");
                        bulkCopy.DestinationTableName = "T_SendCompany";
                        bulkCopy.WriteToServer(reader);
                    }
                }
                reader.Close();
            }
        }
        /// <summary>
        /// 从源表中批量复制数据到目的表中
        /// </summary>
        /// <param name="dtSource">源表</param>
        public static void PerformBulkCopyDifferentSchema(DataTable dtSource)
        {
            string connectionString = @"Server=127.0.0.1;Database=LZPDOSPS;User ID=sa;Password=Password123;Trusted_Connection=true;Integrated Security=false";
            //string connectionString = "Data Source=192.168.100.30;Initial Catalog=RsxCompany;Integrated Security=false;User ID=sa;Password=etm0802;MultipleActiveResultSets=True";

            DataTable sourceData = new DataTable();
            sourceData = dtSource;

            // 目的 
            using (SqlConnection destinationConnection = new SqlConnection(connectionString))
            {
                // 打开连接 
                destinationConnection.Open();

                using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destinationConnection))
                {
                    bulkCopy.ColumnMappings.Add("F_ID", "F_ID");
                    bulkCopy.ColumnMappings.Add("F_Name", "F_Name");
                    bulkCopy.DestinationTableName = "T_SendCompany";
                    bulkCopy.WriteToServer(sourceData);
                }
            }
        }
        /// <summary>
        /// 从源表中批量复制数据到目的表中
        /// </summary>
        /// <param name="dtSource">源表</param>
        public static void PerformBulkCopyDifferentSchema(DataTable dtSource, string destinationTableName, string[] sourceColumn, string[] destinationColumn)
        {
            try
            {
                // 目的 
                using (SqlConnection destinationConnection = new SqlConnection(DBConnection))
                {
                    // 打开连接
                    destinationConnection.Open();

                    using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destinationConnection))
                    {
                        for (int i = 0; i < sourceColumn.Length; i++)
                        {
                            bulkCopy.ColumnMappings.Add(sourceColumn[i], destinationColumn[i]);
                        }
                        bulkCopy.DestinationTableName = destinationTableName;
                        bulkCopy.WriteToServer(dtSource);
                    }
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
        }
    }
}
