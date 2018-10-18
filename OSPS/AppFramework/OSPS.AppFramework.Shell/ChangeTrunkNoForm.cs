using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using OSPS.AppFramework.AccessDatabase;
using OSPS.AppFramework.DBModule;

namespace OSPS.AppFramework.Shell
{
    public partial class ChangeTrunkNoForm : Form
    {
        private string _TrunkNo = "";
        public string TrunkNo
        {
            get
            {
                return _TrunkNo;
            }
        }

        private string _EnterTime = "";
        public string EnterTime
        {
            get
            {
                return _EnterTime;
            }
        }

        private string _ImageIndex = "";
        public string ImageIndex
        {
            get
            {
                return _ImageIndex;
            }
        }
        public ChangeTrunkNoForm( string szIndex)
        {
            InitializeComponent();
            _ImageIndex = szIndex;
        }

        private void btnChenge_Click(object sender, EventArgs e)
        {
            bool bRet = false;


            bRet = UpdateUploadTotal();


            if (bRet)
            {
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }

        private void txtCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void ChangeTrunkNoForm_Load(object sender, EventArgs e)
        {
            T_TrunkNoRecognitionRecord record = TrunkNoRecognitionRecordSet.GetRecordFromImageIndex(_ImageIndex);
            if (record == null)
            {
                MessageBox.Show("获取信息失败，原因: " + TrunkNoRecognitionRecordSet.ErrorText, "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            this.txtTrunkNo.Text = record.F_TrunkNo;
            this.txtTrueTrunkNo.Text = record.F_TrunkNo;
            this.txtEnterTime.Text = record.F_EnterTime.ToString();

            this.CenterToScreen();
        }

        private bool UpdateUploadTotal()
        {
            T_TrunkNoRecognitionRecord record = GenerateUploadData();
            if (record == null) return false;
            if (TrunkNoRecognitionRecordSet.UpdateRecord(record))
            {
                MessageBox.Show("更新数据成功!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                _ImageIndex = record.F_ImageIndex;
                return true;
            }
            else
            {
                MessageBox.Show("更新数据失败，原因: " + TrunkNoRecognitionRecordSet.ErrorText, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }

        private T_TrunkNoRecognitionRecord GenerateUploadData()
        {
            try
            {
                T_TrunkNoRecognitionRecord record = new T_TrunkNoRecognitionRecord();

                record = TrunkNoRecognitionRecordSet.GetRecordFromImageIndex(_ImageIndex);
                if (record == null)
                {
                    MessageBox.Show("获取信息失败，原因: " + TrunkNoRecognitionRecordSet.ErrorText, "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return null;
                }
                record.F_TrunkNo = this.txtTrueTrunkNo.Text.Trim();
                record.F_EnterTime = OSPS.AppFramework.Common.CommonFunction.GetDateTimeValue(txtEnterTime.Text.Trim());
                return record;
            }
            catch (Exception ex)
            {
                MessageBox.Show("数据输入错误，原因: " + ex.Message, "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return null;
            }
        }
    }
}
