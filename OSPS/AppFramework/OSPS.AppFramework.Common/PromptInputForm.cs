using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace OSPS.AppFramework.Common
{
    public partial class PromptInputForm : Form
    {
        private string _ShowMessage = "";
        public string ShowMessage
        {
            set { _ShowMessage = value; }
        }

        private string _CaptionText = "";
        public string CaptionText
        {
            set { _CaptionText = value; }
        }

        private string _PromptInput = "";
        public string PromptInput
        {
            set { _PromptInput = value; }
        }

        private string _InputText = "";
        public string InputText
        {
            set { _InputText = value; }
            get { return _InputText; }
        }

        public PromptInputForm()
        {
            InitializeComponent();
        }

        private void PromptInputForm_Load(object sender, EventArgs e)
        {
            lbInfor.Text = _ShowMessage;
            this.Text = _CaptionText;
            lbPrompt.Text = _PromptInput;
            this.CenterToParent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (txtReason.Text.Length == 0)
            {
                string szText = String.Format("请输入{0}!", _PromptInput);
                MessageBox.Show(szText, "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtReason.Focus();
                return;
            }
            this.DialogResult = DialogResult.Yes;
            _InputText = txtReason.Text;
            this.Close();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.No;
            this.Close();
        }

        public static DialogResult ShowPromptInputMessage(string szMessage, string szCaption, string szPromptInput, ref string szInputText)
        {
            PromptInputForm form = new PromptInputForm();
            form.ShowMessage = szMessage;
            form.CaptionText = szCaption;
            form.PromptInput = szPromptInput;
            DialogResult dr = form.ShowDialog();
            if (dr == DialogResult.Yes)
            {
                szInputText = form.InputText;
            }
            else
                szInputText = "";
            return dr;
        }
    }
}
