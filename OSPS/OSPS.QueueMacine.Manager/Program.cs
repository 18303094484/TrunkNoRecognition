using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace OSPS.QueueMacine.Manager
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //if (!InitDatabase()) return;

            Application.Run(new MainForm());
        }

        private static bool InitDatabase()
        {
            string szDBConnection = "";
            szDBConnection = OSPS.AppFramework.Common.ConfigureProcess.GetDBConnection();
            if (String.IsNullOrEmpty(szDBConnection))
            {
                MessageBox.Show("获取OSPS数据库参数错误!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            OSPS.AppFramework.AccessDatabase.DatabaseFactory.DBConnection = szDBConnection;
            return true;
        }
    }
}
