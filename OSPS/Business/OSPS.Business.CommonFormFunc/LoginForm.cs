using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using OSPS.AppFramework.Common;
using OSPS.AppFramework.AccessDatabase;
using OSPS.AppFramework.DBModule;

namespace OSPS.Business.CommonFormFunc
{
    public partial class LoginForm : Form
    {
        internal static LocalSettings localSetting = LocalSettings.LoadSettings();

        public LoginForm()
        {
            InitializeComponent();
        }

        private void LoginForm_Load(object sender, EventArgs e)
        {
            txtUser.Text = localSetting.LastLoginUser;
            chkSaveName.Checked = txtUser.Text != string.Empty;
            if (txtUser.Text != string.Empty)
                txtPassword.Focus();
            bool bTopMost = CommonFunction.GetBooleanValue(ConfigureProcess.GetUserConfiguration("MainFrameParam", "WindowTopMost"));
            this.TopMost = bTopMost;
            this.CenterToScreen();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            T_User user = UserSet.GetUser(txtUser.Text, txtPassword.Text);
            if (user == null)
            {
                MessageBox.Show("用户名或密码错误！", "登录", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            CommonVariable.CurrentUser = user;
            if (!CommonVariable.CurrentUser.f_Enable)
            {
                MessageBox.Show("当前用户已经被禁用，请和管理员联系！", "登录", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            this.DialogResult = DialogResult.Yes;
            if (chkSaveName.Checked)
               localSetting.LastLoginUser = txtUser.Text;
            else
                localSetting.LastLoginUser = "";
            localSetting.LastLoginTime = DateTime.Now;
            LocalSettings.SaveSettings(localSetting);
            this.Close();
        }

        private void btnQuit_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
            this.Close();
        }

        private void txtUser_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
                txtPassword.Focus();
        }

        private void txtPassword_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
                btnLogin_Click(this, new EventArgs());
        }
    }
}
