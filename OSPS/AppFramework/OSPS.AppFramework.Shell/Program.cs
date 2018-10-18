using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using OSPS.AppFramework.Common;
using OSPS.AppFramework.VLicense;
using OSPS.AppFramework.AccessDatabase;
using System.Configuration;

namespace OSPS.AppFramework.Shell
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
            if (!InitDatabase()) return;
            ////需要先验证一下授权码
            ////bool bRet = VerifySoftAuthorization.VerifySerialCode();
            //if (!bRet) return;

            //OSPS.Business.CommonFormFunc.LoginForm form = new OSPS.Business.CommonFormFunc.LoginForm();
            //if (form.ShowDialog() != DialogResult.Yes)
            //    return;

            Application.Run(new MainForm());
        }
        private static bool InitDatabase()
        {
            string szDBConnection = "";
            szDBConnection = ConfigureProcess.GetDBConnection();
            if (String.IsNullOrEmpty(szDBConnection))
            {
                MessageBox.Show("获取OSPS数据库参数错误!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            DatabaseFactory.DBConnection = szDBConnection;
            return true;
        }
    }
}
