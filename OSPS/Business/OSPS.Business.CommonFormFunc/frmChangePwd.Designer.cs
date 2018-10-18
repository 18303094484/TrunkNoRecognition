namespace OSPS.Business.CommonFormFunc
{
    partial class frmChangePwd
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmChangePwd));
            this.btnCancel = new Infragistics.Win.Misc.UltraButton();
            this.btnOK = new Infragistics.Win.Misc.UltraButton();
            this.ultraLabel1 = new Infragistics.Win.Misc.UltraLabel();
            this.ultraLabel2 = new Infragistics.Win.Misc.UltraLabel();
            this.ultraLabel3 = new Infragistics.Win.Misc.UltraLabel();
            this.txtOldPwd = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.txtNewPwd = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.txtConfirmPwd = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            ((System.ComponentModel.ISupportInitialize)(this.txtOldPwd)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNewPwd)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtConfirmPwd)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(266, 182);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(5);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(124, 45);
            this.btnCancel.TabIndex = 4;
            this.btnCancel.Text = "取消";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(134, 182);
            this.btnOK.Margin = new System.Windows.Forms.Padding(5);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(124, 45);
            this.btnOK.TabIndex = 3;
            this.btnOK.Text = "确认";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // ultraLabel1
            // 
            this.ultraLabel1.AutoSize = true;
            this.ultraLabel1.Location = new System.Drawing.Point(14, 14);
            this.ultraLabel1.Margin = new System.Windows.Forms.Padding(5);
            this.ultraLabel1.Name = "ultraLabel1";
            this.ultraLabel1.Size = new System.Drawing.Size(110, 26);
            this.ultraLabel1.TabIndex = 5;
            this.ultraLabel1.Text = "输入原密码";
            // 
            // ultraLabel2
            // 
            this.ultraLabel2.AutoSize = true;
            this.ultraLabel2.Location = new System.Drawing.Point(14, 70);
            this.ultraLabel2.Margin = new System.Windows.Forms.Padding(5);
            this.ultraLabel2.Name = "ultraLabel2";
            this.ultraLabel2.Size = new System.Drawing.Size(110, 26);
            this.ultraLabel2.TabIndex = 6;
            this.ultraLabel2.Text = "输入新密码";
            // 
            // ultraLabel3
            // 
            this.ultraLabel3.AutoSize = true;
            this.ultraLabel3.Location = new System.Drawing.Point(14, 129);
            this.ultraLabel3.Margin = new System.Windows.Forms.Padding(5);
            this.ultraLabel3.Name = "ultraLabel3";
            this.ultraLabel3.Size = new System.Drawing.Size(110, 26);
            this.ultraLabel3.TabIndex = 7;
            this.ultraLabel3.Text = "确认新密码";
            // 
            // txtOldPwd
            // 
            this.txtOldPwd.AutoSize = false;
            this.txtOldPwd.Location = new System.Drawing.Point(134, 4);
            this.txtOldPwd.Margin = new System.Windows.Forms.Padding(5);
            this.txtOldPwd.MaxLength = 50;
            this.txtOldPwd.Name = "txtOldPwd";
            this.txtOldPwd.PasswordChar = '*';
            this.txtOldPwd.Size = new System.Drawing.Size(256, 42);
            this.txtOldPwd.TabIndex = 0;
            this.txtOldPwd.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtOldPwd_KeyPress);
            // 
            // txtNewPwd
            // 
            this.txtNewPwd.AutoSize = false;
            this.txtNewPwd.Location = new System.Drawing.Point(134, 60);
            this.txtNewPwd.Margin = new System.Windows.Forms.Padding(5);
            this.txtNewPwd.MaxLength = 50;
            this.txtNewPwd.Name = "txtNewPwd";
            this.txtNewPwd.PasswordChar = '*';
            this.txtNewPwd.Size = new System.Drawing.Size(256, 42);
            this.txtNewPwd.TabIndex = 1;
            this.txtNewPwd.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtNewPwd_KeyPress);
            // 
            // txtConfirmPwd
            // 
            this.txtConfirmPwd.AutoSize = false;
            this.txtConfirmPwd.Location = new System.Drawing.Point(134, 119);
            this.txtConfirmPwd.Margin = new System.Windows.Forms.Padding(5);
            this.txtConfirmPwd.MaxLength = 50;
            this.txtConfirmPwd.Name = "txtConfirmPwd";
            this.txtConfirmPwd.PasswordChar = '*';
            this.txtConfirmPwd.Size = new System.Drawing.Size(256, 42);
            this.txtConfirmPwd.TabIndex = 2;
            this.txtConfirmPwd.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtConfirmPwd_KeyPress);
            // 
            // frmChangePwd
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancel;
            this.ClientSize = new System.Drawing.Size(406, 236);
            this.ControlBox = false;
            this.Controls.Add(this.txtConfirmPwd);
            this.Controls.Add(this.txtNewPwd);
            this.Controls.Add(this.txtOldPwd);
            this.Controls.Add(this.ultraLabel3);
            this.Controls.Add(this.ultraLabel2);
            this.Controls.Add(this.ultraLabel1);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.btnCancel);
            this.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(5);
            this.Name = "frmChangePwd";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "修改密码";
            this.Load += new System.EventHandler(this.frmChangePwd_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtOldPwd)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNewPwd)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtConfirmPwd)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Infragistics.Win.Misc.UltraButton btnCancel;
        private Infragistics.Win.Misc.UltraButton btnOK;
        private Infragistics.Win.Misc.UltraLabel ultraLabel1;
        private Infragistics.Win.Misc.UltraLabel ultraLabel2;
        private Infragistics.Win.Misc.UltraLabel ultraLabel3;
        private Infragistics.Win.UltraWinEditors.UltraTextEditor txtOldPwd;
        private Infragistics.Win.UltraWinEditors.UltraTextEditor txtNewPwd;
        private Infragistics.Win.UltraWinEditors.UltraTextEditor txtConfirmPwd;
    }
}