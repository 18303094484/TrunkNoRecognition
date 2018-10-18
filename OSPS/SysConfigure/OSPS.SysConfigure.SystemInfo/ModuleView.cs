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

namespace OSPS.SysConfigure.SystemInfo
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
        private T_SysConfigure obj = new T_SysConfigure();

        private  Controller con = new Controller();

        protected override void OnQuery()
        {
            try
            {
                base.OnQuery();
                DataTable dt = con.GetAllSystemInfo();
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
        }

        protected override void OnCloseUI()
        {
            base.OnCloseUI();
        }

        protected override void OnSave()
        {
            try
            {
                base.OnSave();
                obj.F_Name = Text_Name.Text;
                obj.F_Value = Text_Value.Text;
                obj.F_Description = Text_Description.Text;


                if (IsNew)
                {
                    con.CreateSystemInfo(obj);
                    IsNew = false;
                }
                else
                {
                    obj.F_Id = CurrentId;
                    con.SaveSystemInfo(obj);
                }
                SetButtonState(false);
                UltraGridRow aRow = DBGrid.ActiveRow;
                OnQuery();
                DBGrid.ActiveRow = aRow;
                this.tableLayoutPanel2.Enabled = false;
            }
            catch (Exception ex)
            {
                string szText = String.Format("添加/修改失败!\r\n失败原因：{0}", ex.Message);
                MessageBox.Show(szText, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
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

        protected override void OnModify()
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
            Text_Value.Text = "";
            Text_Description.Text = "";
            

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
                    if (con.DeleteSystemInfo(CurrentId))
                        DBGrid.ActiveRow.Delete(false);
                    IsNew = false;
                    Text_Name.Text = "";
                    Text_Value.Text = "";
                    Text_Description.Text = "";

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
                Text_Name.Text = DBGrid.ActiveRow.Cells["F_Name"].Text;
                Text_Value.Text = DBGrid.ActiveRow.Cells["F_Value"].Text;
                Text_Description.Text = DBGrid.ActiveRow.Cells["F_Description"].Text;
                CurrentId = int.Parse(DBGrid.ActiveRow.Cells["F_Id"].Text);
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
            Text_Name.Enabled = true;
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
            Text_Name.Enabled = false;
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
    }
}
