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
    public partial class PromptForm : Form
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
        
        private bool _IsTopMost = false;
        public bool IsTopMost
        {
            set { _IsTopMost = value;}
        }

        private string _OKButtonText = "";
        public string OKButtonText
        {
            set { _OKButtonText = value; }
        }
        private string _CancelButtonText = "";
        public string CancelButtonText
        {
            set { _CancelButtonText = value; }
        }

        private int _TimeTicketCount = 0;
        private int _MaxDisplayTime = 0;
        private int MaxDisplayTime
        {
            set { _MaxDisplayTime = value; }
        }

        public PromptForm()
        {
            InitializeComponent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Yes;
            this.Close();
        }

        private void PromptForm_Load(object sender, EventArgs e)
        {
            this.TopMost = _IsTopMost;
            if (_OKButtonText.Length > 0)
                btnOK.Text = _OKButtonText;
            if (_CancelButtonText.Length > 0)
                btnCancel.Text = _CancelButtonText;
            if (_MaxDisplayTime > 0)
            {
                timerTicket.Interval = 1000;
                timerTicket.Enabled = true;
            }
            lbInfor.Text = _ShowMessage;
            this.Text = _CaptionText;
            this.CenterToParent();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.No;
            this.Close();
        }

        public static DialogResult ShowPromptMessage(string szMessage, string szCaption)
        {
            PromptForm form = new PromptForm();
            form.ShowMessage = szMessage;
            form.CaptionText = szCaption;
            DialogResult dr = form.ShowDialog();
            return dr;
        }

        public static DialogResult ShowPromptMessage(string szMessage, string szCaption, bool isTopMost, 
            string txtOKButton, string txtCancelButton, int nMaxDisplayTime)
        {
            PromptForm form = new PromptForm();
            form.ShowMessage = szMessage;
            form.CaptionText = szCaption;
            form.IsTopMost = isTopMost;
            form.OKButtonText = txtOKButton;
            form.CancelButtonText = txtCancelButton;
            form.MaxDisplayTime = nMaxDisplayTime;
            DialogResult dr = form.ShowDialog();
            return dr;
        }

        private void timerTicket_Tick(object sender, EventArgs e)
        {
            _TimeTicketCount++;
            if (_TimeTicketCount >= _MaxDisplayTime)
            {
                this.DialogResult = DialogResult.No;
                this.Close();
            }
        }
    }
}
