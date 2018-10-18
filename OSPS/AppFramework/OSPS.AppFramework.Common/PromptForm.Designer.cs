namespace OSPS.AppFramework.Common
{
    partial class PromptForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Infragistics.Win.Appearance appearance3 = new Infragistics.Win.Appearance();
            this.btnCancel = new Infragistics.Win.Misc.UltraButton();
            this.btnOK = new Infragistics.Win.Misc.UltraButton();
            this.lbInfor = new Infragistics.Win.Misc.UltraLabel();
            this.timerTicket = new System.Windows.Forms.Timer(this.components);
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(326, 128);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(2);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(156, 59);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "否";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(65, 128);
            this.btnOK.Margin = new System.Windows.Forms.Padding(2);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(156, 59);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "是";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // lbInfor
            // 
            appearance3.TextHAlignAsString = "Left";
            this.lbInfor.Appearance = appearance3;
            this.lbInfor.BorderStyleInner = Infragistics.Win.UIElementBorderStyle.RaisedSoft;
            this.lbInfor.Location = new System.Drawing.Point(9, 9);
            this.lbInfor.Margin = new System.Windows.Forms.Padding(2);
            this.lbInfor.Name = "lbInfor";
            this.lbInfor.Size = new System.Drawing.Size(529, 99);
            this.lbInfor.TabIndex = 3;
            this.lbInfor.Text = "提示";
            // 
            // timerTicket
            // 
            this.timerTicket.Tick += new System.EventHandler(this.timerTicket_Tick);
            // 
            // PromptForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(14F, 27F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(545, 214);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.lbInfor);
            this.Font = new System.Drawing.Font("宋体", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(5);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "PromptForm";
            this.Text = "提示";
            this.Load += new System.EventHandler(this.PromptForm_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private Infragistics.Win.Misc.UltraButton btnCancel;
        private Infragistics.Win.Misc.UltraButton btnOK;
        private Infragistics.Win.Misc.UltraLabel lbInfor;
        private System.Windows.Forms.Timer timerTicket;

    }
}