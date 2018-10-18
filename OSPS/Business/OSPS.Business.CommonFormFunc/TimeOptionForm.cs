using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace OSPS.Business.CommonFormFunc
{
    public partial class TimeOptionForm : Form
    {
        private DateTime _beginTime = DateTime.Now;
        private DateTime _endTime = DateTime.Now;
        private bool _cbChecked = false;

        public DateTime BeginTime
        {
            get { return _beginTime; }
            set { _beginTime = value; }
        }

        public DateTime EndTime
        {
            get { return _endTime; }
            set { _endTime = value; }
        }

        public bool DateTimeChecked
        {
            get { return _cbChecked; }
        }

        public TimeOptionForm()
        {
            InitializeComponent();
            cbTime.Checked = true;
            dtStartDate.Value = _beginTime;
            dtStartTime.Value = _beginTime;
            dtEndDate.Value = _endTime;
            dtEndTime.Value = _endTime;
        }

        private void TimeOptionForm_Load(object sender, EventArgs e)
        {
            this.CenterToParent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            _cbChecked = cbTime.Checked;

            if (cbTime.Checked)
            {
                _beginTime = new DateTime(dtStartDate.Value.Year, dtStartDate.Value.Month, dtStartDate.Value.Day,
                    dtStartTime.Value.Hour, dtStartTime.Value.Minute, dtStartTime.Value.Second);
                _endTime = new DateTime(dtEndDate.Value.Year, dtEndDate.Value.Month, dtEndDate.Value.Day,
                    dtEndTime.Value.Hour, dtEndTime.Value.Minute, dtEndTime.Value.Second);
            }
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }
    }
}
