namespace OSPS.AppFramework.Shell
{
    partial class frmMain
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
            Infragistics.Win.Appearance appearance1 = new Infragistics.Win.Appearance();
            Infragistics.Win.Appearance appearance2 = new Infragistics.Win.Appearance();
            Infragistics.Win.Appearance appearance3 = new Infragistics.Win.Appearance();
            Infragistics.Win.Appearance appearance4 = new Infragistics.Win.Appearance();
            Infragistics.Win.Appearance appearance5 = new Infragistics.Win.Appearance();
            Infragistics.Win.Appearance appearance6 = new Infragistics.Win.Appearance();
            Infragistics.Win.Appearance appearance7 = new Infragistics.Win.Appearance();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.tlpMain = new System.Windows.Forms.TableLayoutPanel();
            this.tlpLine1 = new System.Windows.Forms.TableLayoutPanel();
            this.picLogo = new System.Windows.Forms.PictureBox();
            this.lbTitle = new Infragistics.Win.Misc.UltraLabel();
            this.tlpLine1_Button = new System.Windows.Forms.TableLayoutPanel();
            this.lbVersion = new Infragistics.Win.Misc.UltraLabel();
            this.btnExit = new Infragistics.Win.Misc.UltraButton();
            this.btnLogoff = new Infragistics.Win.Misc.UltraButton();
            this.btnTest = new Infragistics.Win.Misc.UltraButton();
            this.pbPreview = new System.Windows.Forms.PictureBox();
            this.tlpLine5 = new System.Windows.Forms.TableLayoutPanel();
            this.lbAgent = new Infragistics.Win.Misc.UltraLabel();
            this.lbCurrTime = new Infragistics.Win.Misc.UltraLabel();
            this.lbCompany = new Infragistics.Win.Misc.UltraLabel();
            this.lOrderState = new Infragistics.Win.Misc.UltraLabel();
            this.timerCount = new System.Windows.Forms.Timer(this.components);
            this.tlpMain.SuspendLayout();
            this.tlpLine1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).BeginInit();
            this.tlpLine1_Button.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbPreview)).BeginInit();
            this.tlpLine5.SuspendLayout();
            this.SuspendLayout();
            // 
            // tlpMain
            // 
            this.tlpMain.CellBorderStyle = System.Windows.Forms.TableLayoutPanelCellBorderStyle.Inset;
            this.tlpMain.ColumnCount = 1;
            this.tlpMain.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpMain.Controls.Add(this.tlpLine1, 0, 0);
            this.tlpMain.Controls.Add(this.pbPreview, 0, 1);
            this.tlpMain.Controls.Add(this.tlpLine5, 0, 2);
            this.tlpMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tlpMain.Location = new System.Drawing.Point(0, 0);
            this.tlpMain.Name = "tlpMain";
            this.tlpMain.RowCount = 3;
            this.tlpMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 80F));
            this.tlpMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 45F));
            this.tlpMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tlpMain.Size = new System.Drawing.Size(1261, 452);
            this.tlpMain.TabIndex = 3;
            // 
            // tlpLine1
            // 
            this.tlpLine1.BackColor = System.Drawing.Color.SeaGreen;
            this.tlpLine1.ColumnCount = 3;
            this.tlpLine1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 220F));
            this.tlpLine1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpLine1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 614F));
            this.tlpLine1.Controls.Add(this.picLogo, 0, 0);
            this.tlpLine1.Controls.Add(this.lbTitle, 1, 0);
            this.tlpLine1.Controls.Add(this.tlpLine1_Button, 2, 0);
            this.tlpLine1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tlpLine1.Location = new System.Drawing.Point(3, 3);
            this.tlpLine1.Margin = new System.Windows.Forms.Padding(1);
            this.tlpLine1.Name = "tlpLine1";
            this.tlpLine1.RowCount = 1;
            this.tlpLine1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpLine1.Size = new System.Drawing.Size(1255, 78);
            this.tlpLine1.TabIndex = 0;
            // 
            // picLogo
            // 
            this.picLogo.Image = global::OSPS.AppFramework.Shell.Properties.Resources.logoB;
            this.picLogo.Location = new System.Drawing.Point(5, 5);
            this.picLogo.Margin = new System.Windows.Forms.Padding(5);
            this.picLogo.Name = "picLogo";
            this.picLogo.Size = new System.Drawing.Size(210, 68);
            this.picLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picLogo.TabIndex = 0;
            this.picLogo.TabStop = false;
            // 
            // lbTitle
            // 
            appearance1.ForeColor = System.Drawing.Color.Gold;
            appearance1.TextHAlignAsString = "Center";
            appearance1.TextVAlignAsString = "Middle";
            this.lbTitle.Appearance = appearance1;
            this.lbTitle.Font = new System.Drawing.Font("Microsoft Sans Serif", 25.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbTitle.Location = new System.Drawing.Point(223, 3);
            this.lbTitle.Name = "lbTitle";
            this.lbTitle.Size = new System.Drawing.Size(415, 72);
            this.lbTitle.TabIndex = 1;
            this.lbTitle.Text = "车牌识别系统";
            // 
            // tlpLine1_Button
            // 
            this.tlpLine1_Button.ColumnCount = 4;
            this.tlpLine1_Button.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 140F));
            this.tlpLine1_Button.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 140F));
            this.tlpLine1_Button.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 140F));
            this.tlpLine1_Button.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpLine1_Button.Controls.Add(this.lbVersion, 3, 1);
            this.tlpLine1_Button.Controls.Add(this.btnExit, 2, 1);
            this.tlpLine1_Button.Controls.Add(this.btnLogoff, 1, 1);
            this.tlpLine1_Button.Controls.Add(this.btnTest, 0, 1);
            this.tlpLine1_Button.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tlpLine1_Button.Location = new System.Drawing.Point(641, 0);
            this.tlpLine1_Button.Margin = new System.Windows.Forms.Padding(0);
            this.tlpLine1_Button.Name = "tlpLine1_Button";
            this.tlpLine1_Button.RowCount = 2;
            this.tlpLine1_Button.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpLine1_Button.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 61F));
            this.tlpLine1_Button.Size = new System.Drawing.Size(614, 78);
            this.tlpLine1_Button.TabIndex = 2;
            // 
            // lbVersion
            // 
            appearance2.ForeColor = System.Drawing.Color.Gold;
            appearance2.TextVAlignAsString = "Middle";
            this.lbVersion.Appearance = appearance2;
            this.lbVersion.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbVersion.Location = new System.Drawing.Point(423, 20);
            this.lbVersion.Name = "lbVersion";
            this.lbVersion.Size = new System.Drawing.Size(188, 55);
            this.lbVersion.TabIndex = 7;
            this.lbVersion.Text = "服务电话：18906471879";
            // 
            // btnExit
            // 
            this.btnExit.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnExit.Location = new System.Drawing.Point(283, 20);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(134, 55);
            this.btnExit.TabIndex = 6;
            this.btnExit.Text = "退出";
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnLogoff
            // 
            this.btnLogoff.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnLogoff.Location = new System.Drawing.Point(143, 20);
            this.btnLogoff.Name = "btnLogoff";
            this.btnLogoff.Size = new System.Drawing.Size(134, 55);
            this.btnLogoff.TabIndex = 8;
            this.btnLogoff.Text = "注销";
            this.btnLogoff.Click += new System.EventHandler(this.btnLogoff_Click);
            // 
            // btnTest
            // 
            this.btnTest.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnTest.Location = new System.Drawing.Point(3, 20);
            this.btnTest.Name = "btnTest";
            this.btnTest.Size = new System.Drawing.Size(134, 55);
            this.btnTest.TabIndex = 9;
            this.btnTest.Text = "手动抓拍";
            this.btnTest.Click += new System.EventHandler(this.btnTest_Click);
            // 
            // pbPreview
            // 
            this.pbPreview.BackColor = System.Drawing.SystemColors.ControlDark;
            this.pbPreview.Location = new System.Drawing.Point(5, 87);
            this.pbPreview.Name = "pbPreview";
            this.pbPreview.Size = new System.Drawing.Size(1251, 313);
            this.pbPreview.TabIndex = 4;
            this.pbPreview.TabStop = false;
            // 
            // tlpLine5
            // 
            this.tlpLine5.CellBorderStyle = System.Windows.Forms.TableLayoutPanelCellBorderStyle.Inset;
            this.tlpLine5.ColumnCount = 4;
            this.tlpLine5.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 110F));
            this.tlpLine5.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 300F));
            this.tlpLine5.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpLine5.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 442F));
            this.tlpLine5.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tlpLine5.Controls.Add(this.lbAgent, 0, 0);
            this.tlpLine5.Controls.Add(this.lbCurrTime, 3, 0);
            this.tlpLine5.Controls.Add(this.lbCompany, 2, 0);
            this.tlpLine5.Controls.Add(this.lOrderState, 1, 0);
            this.tlpLine5.Location = new System.Drawing.Point(2, 405);
            this.tlpLine5.Margin = new System.Windows.Forms.Padding(0);
            this.tlpLine5.Name = "tlpLine5";
            this.tlpLine5.RowCount = 1;
            this.tlpLine5.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpLine5.Size = new System.Drawing.Size(1257, 45);
            this.tlpLine5.TabIndex = 3;
            // 
            // lbAgent
            // 
            appearance3.TextHAlignAsString = "Center";
            appearance3.TextVAlignAsString = "Middle";
            this.lbAgent.Appearance = appearance3;
            this.lbAgent.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbAgent.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbAgent.Location = new System.Drawing.Point(5, 5);
            this.lbAgent.Name = "lbAgent";
            this.lbAgent.Size = new System.Drawing.Size(104, 35);
            this.lbAgent.TabIndex = 0;
            this.lbAgent.Text = "设备未登录";
            // 
            // lbCurrTime
            // 
            appearance4.TextHAlignAsString = "Center";
            appearance4.TextVAlignAsString = "Middle";
            this.lbCurrTime.Appearance = appearance4;
            this.lbCurrTime.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbCurrTime.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbCurrTime.Location = new System.Drawing.Point(816, 5);
            this.lbCurrTime.Name = "lbCurrTime";
            this.lbCurrTime.Size = new System.Drawing.Size(436, 35);
            this.lbCurrTime.TabIndex = 1;
            this.lbCurrTime.Text = "2014-07-27 12:00:00";
            // 
            // lbCompany
            // 
            appearance5.TextHAlignAsString = "Center";
            appearance5.TextVAlignAsString = "Middle";
            this.lbCompany.Appearance = appearance5;
            this.lbCompany.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbCompany.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            appearance6.BorderColor = System.Drawing.Color.Transparent;
            this.lbCompany.HotTrackAppearance = appearance6;
            this.lbCompany.Location = new System.Drawing.Point(419, 5);
            this.lbCompany.Name = "lbCompany";
            this.lbCompany.Size = new System.Drawing.Size(389, 35);
            this.lbCompany.TabIndex = 2;
            this.lbCompany.Text = "北京诺易斯特科技有限公司";
            // 
            // lOrderState
            // 
            appearance7.TextHAlignAsString = "Center";
            appearance7.TextVAlignAsString = "Middle";
            this.lOrderState.Appearance = appearance7;
            this.lOrderState.BorderStyleInner = Infragistics.Win.UIElementBorderStyle.Inset;
            this.lOrderState.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lOrderState.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lOrderState.Location = new System.Drawing.Point(117, 3);
            this.lOrderState.Margin = new System.Windows.Forms.Padding(3, 1, 3, 1);
            this.lOrderState.Name = "lOrderState";
            this.lOrderState.Size = new System.Drawing.Size(294, 39);
            this.lOrderState.TabIndex = 4;
            // 
            // timerCount
            // 
            this.timerCount.Enabled = true;
            this.timerCount.Tick += new System.EventHandler(this.timerCount_Tick);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1261, 452);
            this.Controls.Add(this.tlpMain);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainForm";
            this.Text = "车牌识别系统";
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.tlpMain.ResumeLayout(false);
            this.tlpLine1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).EndInit();
            this.tlpLine1_Button.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pbPreview)).EndInit();
            this.tlpLine5.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel tlpMain;
        private System.Windows.Forms.TableLayoutPanel tlpLine1;
        private System.Windows.Forms.PictureBox picLogo;
        private Infragistics.Win.Misc.UltraLabel lbTitle;
        private System.Windows.Forms.TableLayoutPanel tlpLine1_Button;
        private Infragistics.Win.Misc.UltraLabel lbVersion;
        private Infragistics.Win.Misc.UltraButton btnExit;
        private Infragistics.Win.Misc.UltraButton btnLogoff;
        private Infragistics.Win.Misc.UltraButton btnTest;
        private System.Windows.Forms.TableLayoutPanel tlpLine5;
        private Infragistics.Win.Misc.UltraLabel lbAgent;
        private Infragistics.Win.Misc.UltraLabel lbCurrTime;
        private Infragistics.Win.Misc.UltraLabel lbCompany;
        private Infragistics.Win.Misc.UltraLabel lOrderState;
        private System.Windows.Forms.PictureBox pbPreview;
        private System.Windows.Forms.Timer timerCount;

    }
}