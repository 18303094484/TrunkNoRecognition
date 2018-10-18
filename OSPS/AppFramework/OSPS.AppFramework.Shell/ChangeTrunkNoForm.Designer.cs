namespace OSPS.AppFramework.Shell
{
    partial class ChangeTrunkNoForm
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
            this.ultraLabel1 = new Infragistics.Win.Misc.UltraLabel();
            this.ultraLabel2 = new Infragistics.Win.Misc.UltraLabel();
            this.ultraLabel3 = new Infragistics.Win.Misc.UltraLabel();
            this.btnChenge = new Infragistics.Win.Misc.UltraButton();
            this.txtCancel = new Infragistics.Win.Misc.UltraButton();
            this.txtTrueTrunkNo = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.txtEnterTime = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.txtTrunkNo = new Infragistics.Win.Misc.UltraLabel();
            ((System.ComponentModel.ISupportInitialize)(this.txtTrueTrunkNo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEnterTime)).BeginInit();
            this.SuspendLayout();
            // 
            // ultraLabel1
            // 
            this.ultraLabel1.Location = new System.Drawing.Point(50, 42);
            this.ultraLabel1.Name = "ultraLabel1";
            this.ultraLabel1.Size = new System.Drawing.Size(179, 23);
            this.ultraLabel1.TabIndex = 0;
            this.ultraLabel1.Text = "进场识别车牌号:";
            // 
            // ultraLabel2
            // 
            this.ultraLabel2.Location = new System.Drawing.Point(50, 98);
            this.ultraLabel2.Name = "ultraLabel2";
            this.ultraLabel2.Size = new System.Drawing.Size(128, 23);
            this.ultraLabel2.TabIndex = 1;
            this.ultraLabel2.Text = "实际车牌号:";
            // 
            // ultraLabel3
            // 
            this.ultraLabel3.Location = new System.Drawing.Point(50, 152);
            this.ultraLabel3.Name = "ultraLabel3";
            this.ultraLabel3.Size = new System.Drawing.Size(128, 23);
            this.ultraLabel3.TabIndex = 2;
            this.ultraLabel3.Text = "入场时间:";
            // 
            // btnChenge
            // 
            this.btnChenge.Location = new System.Drawing.Point(81, 218);
            this.btnChenge.Name = "btnChenge";
            this.btnChenge.Size = new System.Drawing.Size(121, 54);
            this.btnChenge.TabIndex = 3;
            this.btnChenge.Text = "修改";
            this.btnChenge.Click += new System.EventHandler(this.btnChenge_Click);
            // 
            // txtCancel
            // 
            this.txtCancel.Location = new System.Drawing.Point(290, 218);
            this.txtCancel.Name = "txtCancel";
            this.txtCancel.Size = new System.Drawing.Size(121, 54);
            this.txtCancel.TabIndex = 4;
            this.txtCancel.Text = "取消";
            this.txtCancel.Click += new System.EventHandler(this.txtCancel_Click);
            // 
            // txtTrueTrunkNo
            // 
            this.txtTrueTrunkNo.Font = new System.Drawing.Font("宋体", 18F);
            this.txtTrueTrunkNo.Location = new System.Drawing.Point(223, 95);
            this.txtTrueTrunkNo.Name = "txtTrueTrunkNo";
            this.txtTrueTrunkNo.Size = new System.Drawing.Size(144, 34);
            this.txtTrueTrunkNo.TabIndex = 6;
            // 
            // txtEnterTime
            // 
            this.txtEnterTime.Location = new System.Drawing.Point(223, 149);
            this.txtEnterTime.Name = "txtEnterTime";
            this.txtEnterTime.Size = new System.Drawing.Size(221, 30);
            this.txtEnterTime.TabIndex = 7;
            // 
            // txtTrunkNo
            // 
            appearance1.TextHAlignAsString = "Center";
            appearance1.TextVAlignAsString = "Middle";
            this.txtTrunkNo.Appearance = appearance1;
            this.txtTrunkNo.BorderStyleInner = Infragistics.Win.UIElementBorderStyle.Inset;
            this.txtTrunkNo.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtTrunkNo.Location = new System.Drawing.Point(223, 42);
            this.txtTrunkNo.Margin = new System.Windows.Forms.Padding(3, 1, 3, 1);
            this.txtTrunkNo.Name = "txtTrunkNo";
            this.txtTrunkNo.Size = new System.Drawing.Size(144, 39);
            this.txtTrunkNo.TabIndex = 8;
            // 
            // ChangeTrunkNoForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(491, 310);
            this.Controls.Add(this.txtTrunkNo);
            this.Controls.Add(this.txtEnterTime);
            this.Controls.Add(this.txtTrueTrunkNo);
            this.Controls.Add(this.txtCancel);
            this.Controls.Add(this.btnChenge);
            this.Controls.Add(this.ultraLabel3);
            this.Controls.Add(this.ultraLabel2);
            this.Controls.Add(this.ultraLabel1);
            this.Font = new System.Drawing.Font("宋体", 15F);
            this.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ChangeTrunkNoForm";
            this.Text = "修改进场车牌号";
            this.Load += new System.EventHandler(this.ChangeTrunkNoForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtTrueTrunkNo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEnterTime)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Infragistics.Win.Misc.UltraLabel ultraLabel1;
        private Infragistics.Win.Misc.UltraLabel ultraLabel2;
        private Infragistics.Win.Misc.UltraLabel ultraLabel3;
        private Infragistics.Win.Misc.UltraButton btnChenge;
        private Infragistics.Win.Misc.UltraButton txtCancel;
        private Infragistics.Win.UltraWinEditors.UltraTextEditor txtTrueTrunkNo;
        private Infragistics.Win.UltraWinEditors.UltraTextEditor txtEnterTime;
        private Infragistics.Win.Misc.UltraLabel txtTrunkNo;
    }
}