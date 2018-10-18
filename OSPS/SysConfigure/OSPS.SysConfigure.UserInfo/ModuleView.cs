using System;

using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using OSPS.AppFramework.ViewBase;
using OSPS.AppFramework.DBModule;
using Infragistics.Win.UltraWinGrid;

namespace OSPS.SysConfigure.UserInfo
{
    [DesignTimeVisible(false)]
    public partial class ModuleView : UIView
    {
        public ModuleView()
        {
            InitializeComponent();

        }

        private int CurrentId;

        private bool IsNew; //标志 是 insert 还是 update
        private T_User obj = new T_User();

        private DataTable CompanyName;


        private  Controller con = new Controller();

        protected override void OnQuery()
        {
            try
            {
                base.OnQuery();
                DataTable dt = con.GetAllUserInfo();
                dt.DefaultView.AllowEdit = false;
                DBGrid.DataSource = dt.DefaultView;
                SetButtonState(false);
            }
            catch (Exception ex)
            {
            }
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            OnQuery();
            IsNew = false;//初始化成update 状态
            initCombos();
        }

        protected override void OnSave()
        {
            try
            {
                base.OnSave();
                obj.F_Name = Text_Name.Text;
                obj.f_Enable = Check_Enable.Checked;
                obj.F_GroupId = int.Parse(Combo_GroupName.SelectedItem.DataValue.ToString());
                obj.F_Value = int.Parse(Text_Value.Text);
                obj.F_Description = Text_Description.Text;
                obj.F_Password = txtPassword.Text;

                if (IsNew)
                {
                    con.CreateUserInfo(obj);
                    IsNew = false;
                }
                else
                {
                    obj.F_Id = CurrentId;
                    con.SaveUserInfo(obj);
                }
                SetButtonState(false);
                UltraGridRow aRow = DBGrid.ActiveRow;
                OnQuery();
                DBGrid.ActiveRow = aRow;
                this.tableLayoutPanel2.Enabled = false;
            }
            catch (Exception ex)
            {
                string szText = String.Format("添加/修改帐户失败!\r\n失败原因：{0}", ex.Message);
                MessageBox.Show(szText, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        protected override void OnCloseUI()
        {
            base.OnCloseUI();
        }

        protected override void OnCancel()
        {
            try
            {
                base.OnCancel();
                SetButtonState(false);

                UltraGridRow aRow = DBGrid.ActiveRow;
                OnQuery();
                DBGrid.ActiveRow = aRow;
            }
            catch (Exception ex)
            {
            }
        }

        protected override void  OnModify()
        {
            base.OnModify();
            SetButtonState(true);
            IsNew = false;
            Text_Name.Focus();
        }

        protected override void OnNew()
        {
            base.OnNew();
            SetButtonState(true);

            Text_Name.Text = "";
 
            Text_Description.Text = "";
            Text_Value.Text = "";
            Combo_GroupName.SelectedIndex = 0;
            Check_Enable.Checked = true;
            txtPassword.Text = "";

            IsNew = true;
            Text_Name.Focus();

        }

        protected override void OnDelete()
        {
            try
            {
                IsNew = false;
                DialogResult result = MessageBox.Show("是否删除当前记录?", "提示!", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                {
                    base.OnDelete();
                    if (con.DeleteUserInfo(CurrentId))
                        DBGrid.ActiveRow.Delete(false);
                    IsNew = false;
                    Text_Name.Text = "";

                    Text_Description.Text = "";
                    Text_Value.Text = "";
                    Combo_GroupName.Text = "";
                    Check_Enable.Checked = true;

                    UltraGridRow aRow = DBGrid.ActiveRow;
                    OnQuery();
                    DBGrid.ActiveRow = aRow;
                    Text_Name.Focus();
                }
            }
            catch (Exception ex)
            {
            }
        }

        private void DBGrid_AfterRowActivate(object sender, EventArgs e)
        {
            try
            {
                int i;
                Text_Name.Text = DBGrid.ActiveRow.Cells["F_Name"].Text;
                Text_Description.Text = DBGrid.ActiveRow.Cells["F_Description"].Text;
                Text_Value.Text = DBGrid.ActiveRow.Cells["F_Value"].Text;
                Combo_GroupName.Text = DBGrid.ActiveRow.Cells["F_GroupName"].Text;
                Check_Enable.Checked = bool.Parse(DBGrid.ActiveRow.Cells["F_Enable"].Text);
                CurrentId = int.Parse(DBGrid.ActiveRow.Cells["F_Id"].Text);
                obj.F_Password = DBGrid.ActiveRow.Cells["F_Password"].Text;
                txtPassword.Text = obj.F_Password;

                IsNew = false;
            }
            catch (Exception ex)
            {
            }
        }

        protected override bool ProcessCmdKey(ref   System.Windows.Forms.Message msg, System.Windows.Forms.Keys keyData)
        {
          
                //if (msg.WParam.ToInt32() == (int)Keys.Enter)
                //{
                //   SendKeys.Send("{Tab} ");
                //   // return   base.ProcessCmdKey(ref   msg,   Keys.Tab);   
                //    return true;
                //}
             return base.ProcessCmdKey(ref   msg, keyData);
        }

        private void Button_New_Click(object sender, EventArgs e)
        {
            OnNew();
        }

        //根据编辑状态,设置Button
        private void SetButtonState(bool isEdit)
        {

            Button_New.Enabled = !isEdit;
            Button_Del.Enabled = !isEdit;
            Button_Edit.Enabled = !isEdit;
            Button_Refresh.Enabled = !isEdit;

            Button_Save.Enabled = isEdit;
            Button_Cancle.Enabled = isEdit;
            DBGrid.Enabled = !isEdit;
            tableLayoutPanel2.Enabled = isEdit;
        }

        private void Button_Del_Click(object sender, EventArgs e)
        {
            OnDelete();
        }

        private void Button_Edit_Click(object sender, EventArgs e)
        {
            OnModify();
        }

        private void Button_Save_Click(object sender, EventArgs e)
        {
            OnSave();
        }

        private void Button_Cancle_Click(object sender, EventArgs e)
        {
            OnCancel();
        }

        private void Button_Refresh_Click(object sender, EventArgs e)
        {
            OnQuery();
        }

        private void Button_Print_Click(object sender, EventArgs e)
        {
            OnPrint();
        }

        private void initCombos()
        {
            try
            {
                DataTable dt = con.GetAllGroupIDName();
                foreach (DataRow dr in dt.Select())
                {
                    Combo_GroupName.Items.Add(dr[0].ToString(), dr[1].ToString());
                }
            }
            catch (Exception ex)
            {
            }
        }
    }
}
