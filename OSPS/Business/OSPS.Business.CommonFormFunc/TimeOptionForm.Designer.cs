namespace OSPS.Business.CommonFormFunc
{
    partial class TimeOptionForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(TimeOptionForm));
            this.btnCancel = new Infragistics.Win.Misc.UltraButton();
            this.btnOK = new Infragistics.Win.Misc.UltraButton();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dtEndTime = new System.Windows.Forms.DateTimePicker();
            this.dtEndDate = new System.Windows.Forms.DateTimePicker();
            this.dtStartTime = new System.Windows.Forms.DateTimePicker();
            this.dtStartDate = new System.Windows.Forms.DateTimePicker();
            this.cbTime = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnCancel.Location = new System.Drawing.Point(370, 115);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(131, 55);
            this.btnCancel.TabIndex = 31;
            this.btnCancel.Text = "取消";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOK
            // 
            this.btnOK.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnOK.Location = new System.Drawing.Point(233, 115);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(131, 55);
            this.btnOK.TabIndex = 30;
            this.btnOK.Text = "确定";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.Location = new System.Drawing.Point(102, 66);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(125, 25);
            this.label2.TabIndex = 29;
            this.label2.Text = "结束时间:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.Location = new System.Drawing.Point(102, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(125, 25);
            this.label1.TabIndex = 28;
            this.label1.Text = "起始时间:";
            // 
            // dtEndTime
            // 
            this.dtEndTime.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.dtEndTime.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dtEndTime.Location = new System.Drawing.Point(404, 60);
            this.dtEndTime.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtEndTime.Name = "dtEndTime";
            this.dtEndTime.ShowUpDown = true;
            this.dtEndTime.Size = new System.Drawing.Size(147, 36);
            this.dtEndTime.TabIndex = 27;
            // 
            // dtEndDate
            // 
            this.dtEndDate.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.dtEndDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtEndDate.Location = new System.Drawing.Point(233, 60);
            this.dtEndDate.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtEndDate.Name = "dtEndDate";
            this.dtEndDate.Size = new System.Drawing.Size(165, 36);
            this.dtEndDate.TabIndex = 26;
            // 
            // dtStartTime
            // 
            this.dtStartTime.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.dtStartTime.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dtStartTime.Location = new System.Drawing.Point(404, 19);
            this.dtStartTime.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtStartTime.Name = "dtStartTime";
            this.dtStartTime.ShowUpDown = true;
            this.dtStartTime.Size = new System.Drawing.Size(147, 36);
            this.dtStartTime.TabIndex = 25;
            // 
            // dtStartDate
            // 
            this.dtStartDate.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.dtStartDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtStartDate.Location = new System.Drawing.Point(233, 19);
            this.dtStartDate.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtStartDate.Name = "dtStartDate";
            this.dtStartDate.Size = new System.Drawing.Size(165, 36);
            this.dtStartDate.TabIndex = 24;
            // 
            // cbTime
            // 
            this.cbTime.AutoSize = true;
            this.cbTime.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.cbTime.Location = new System.Drawing.Point(12, 43);
            this.cbTime.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cbTime.Name = "cbTime";
            this.cbTime.Size = new System.Drawing.Size(84, 29);
            this.cbTime.TabIndex = 23;
            this.cbTime.Text = "时间";
            this.cbTime.UseVisualStyleBackColor = true;
            // 
            // TimeOptionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(563, 186);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dtEndTime);
            this.Controls.Add(this.dtEndDate);
            this.Controls.Add(this.dtStartTime);
            this.Controls.Add(this.dtStartDate);
            this.Controls.Add(this.cbTime);
            this.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "TimeOptionForm";
            this.Text = "选择时间";
            this.Load += new System.EventHandler(this.TimeOptionForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Infragistics.Win.Misc.UltraButton btnCancel;
        private Infragistics.Win.Misc.UltraButton btnOK;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dtEndTime;
        private System.Windows.Forms.DateTimePicker dtEndDate;
        private System.Windows.Forms.DateTimePicker dtStartTime;
        private System.Windows.Forms.DateTimePicker dtStartDate;
        private System.Windows.Forms.CheckBox cbTime;
    }
}