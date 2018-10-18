using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using OSPS.AppFramework.AccessDatabase;
using OSPS.AppFramework.Common;
using OSPS.AppFramework.DBModule;

namespace OSPS.Business.CommonFormFunc
{
    public partial class frmChangePwd : Form
    {
        private T_User _CurrentUser = null;
        public T_User CurrentUser
        {
            get { return _CurrentUser; }
        }

        public frmChangePwd(T_User user)
        {
            InitializeComponent();
            _CurrentUser = user;
        }

        private void txtOldPwd_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
                txtNewPwd.Focus();
        }

        private void txtNewPwd_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
                txtConfirmPwd.Focus();
        }

        private void txtConfirmPwd_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
                this.InvokeOnClick(btnOK, e);
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtOldPwd.Text.Trim()))
            {
                MessageBox.Show("请输入原密码!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtOldPwd.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtNewPwd.Text.Trim()))
            {
                MessageBox.Show("请输入新密码!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNewPwd.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtConfirmPwd.Text.Trim()))
            {
                MessageBox.Show("请输入确认新密码!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtConfirmPwd.Focus();
                return;
            }
            string szNewPwd = txtNewPwd.Text.Trim();
            string szConfirmPwd = txtConfirmPwd.Text.Trim();
            if (szNewPwd.CompareTo(szConfirmPwd) != 0)
            {
                MessageBox.Show("新密码和确认密码不一致!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNewPwd.Focus();
                return;
            }
            string szOLDPwd = txtOldPwd.Text.Trim();
            if (szOLDPwd.CompareTo(_CurrentUser.F_Password) != 0)
            {
                MessageBox.Show("旧密码不正确!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtOldPwd.Focus();
                return;
            }
            if (UserSet.ChangePassword(_CurrentUser.F_Name, szNewPwd))
            {
                MessageBox.Show("密码修改成功!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                _CurrentUser.F_Password = szNewPwd;
                this.DialogResult = DialogResult.OK;
            }
            else
            {
                MessageBox.Show("密码修改失败! 原因: " + UserSet.ErrorText, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                this.DialogResult = DialogResult.Cancel;
            }
            this.Close();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }

        private void frmChangePwd_Load(object sender, EventArgs e)
        {
            bool bTopMost = CommonFunction.GetBooleanValue(ConfigureProcess.GetUserConfiguration("MainFrameParam", "WindowTopMost"));
            this.TopMost = bTopMost;
            this.CenterToParent();
        }
    }
}
