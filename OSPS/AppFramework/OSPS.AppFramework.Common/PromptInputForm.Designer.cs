namespace OSPS.AppFramework.Common
{
    partial class PromptInputForm
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
            Infragistics.Win.Appearance appearance1 = new Infragistics.Win.Appearance();
            this.btnCancel = new Infragistics.Win.Misc.UltraButton();
            this.btnOK = new Infragistics.Win.Misc.UltraButton();
            this.lbInfor = new Infragistics.Win.Misc.UltraLabel();
            this.lbPrompt = new Infragistics.Win.Misc.UltraLabel();
            this.txtReason = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            ((System.ComponentModel.ISupportInitialize)(this.txtReason)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(262, 189);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(107, 41);
            this.btnCancel.TabIndex = 8;
            this.btnCancel.Text = "否";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(137, 189);
            this.btnOK.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(107, 41);
            this.btnOK.TabIndex = 7;
            this.btnOK.Text = "是";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // lbInfor
            // 
            appearance1.TextHAlignAsString = "Left";
            this.lbInfor.Appearance = appearance1;
            this.lbInfor.BorderStyleInner = Infragistics.Win.UIElementBorderStyle.RaisedSoft;
            this.lbInfor.Location = new System.Drawing.Point(8, 8);
            this.lbInfor.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.lbInfor.Name = "lbInfor";
            this.lbInfor.Size = new System.Drawing.Size(491, 72);
            this.lbInfor.TabIndex = 6;
            this.lbInfor.Text = "提示";
            // 
            // lbPrompt
            // 
            this.lbPrompt.AutoSize = true;
            this.lbPrompt.Location = new System.Drawing.Point(8, 94);
            this.lbPrompt.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.lbPrompt.Name = "lbPrompt";
            this.lbPrompt.Size = new System.Drawing.Size(86, 32);
            this.lbPrompt.TabIndex = 9;
            this.lbPrompt.Text = "原因：";
            // 
            // txtReason
            // 
            this.txtReason.AutoSize = false;
            this.txtReason.Location = new System.Drawing.Point(8, 130);
            this.txtReason.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtReason.Name = "txtReason";
            this.txtReason.Size = new System.Drawing.Size(491, 46);
            this.txtReason.TabIndex = 10;
            // 
            // PromptInputForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(508, 241);
            this.Controls.Add(this.txtReason);
            this.Controls.Add(this.lbPrompt);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.lbInfor);
            this.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "PromptInputForm";
            this.Text = "提示";
            this.Load += new System.EventHandler(this.PromptInputForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtReason)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Infragistics.Win.Misc.UltraButton btnCancel;
        private Infragistics.Win.Misc.UltraButton btnOK;
        private Infragistics.Win.Misc.UltraLabel lbInfor;
        private Infragistics.Win.Misc.UltraLabel lbPrompt;
        private Infragistics.Win.UltraWinEditors.UltraTextEditor txtReason;
    }
}