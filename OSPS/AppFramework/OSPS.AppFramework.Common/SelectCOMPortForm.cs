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
    public partial class SelectCOMPortForm : Form
    {
        private string portConfigureName;
        public string PortConfigureName
        {
            set { portConfigureName = value; }
        }

        private string _comport;

        public string COMPort
        {
            get { return _comport; }
            set { _comport = value; }
        }

        public SelectCOMPortForm()
        {
            InitializeComponent();
            this.CenterToParent();
        }

        public static string GetICCardPort(string configureName)
        {
            string port = "COM1";
            try
            {
                LocalSettings localSetting = LocalSettings.LoadSettings();
                port = localSetting.GetICCardPort(configureName);
            }
            catch (Exception ex)
            {
            }
            return port;
        }

        private int InitCOMPort()
        {
            int nCount = 0;
            int nCurrentSelect = -1;
            //读取配置的串口
            _comport = GetICCardPort(portConfigureName);
            string szCurrentPort = _comport;

            string[] portArray = CommonFunction.GetCommKeys();
            foreach (string s in portArray)
            {
                if (s.CompareTo(szCurrentPort) == 0)
                {
                    nCurrentSelect = nCount;
                }
                cbCOMPort.Items.Add(s);
                nCount++;
            }
            if (nCurrentSelect >= 0)
            {

                cbCOMPort.SelectedIndex = nCurrentSelect;
            }
            else
            {
                if (nCount > 0)
                    cbCOMPort.SelectedIndex = 0;
            }
            return nCount;
        }

        private void SelectCOMPortForm_Load(object sender, EventArgs e)
        {
            int nCount = InitCOMPort();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (cbCOMPort.Text.Length == 0)
            {
                MessageBox.Show("请选择串口!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            try
            {
                _comport = cbCOMPort.Text;
                LocalSettings localSetting = LocalSettings.LoadSettings();
                localSetting.SetICCardPort(portConfigureName, _comport);
                LocalSettings.SaveSettings(localSetting);

                this.DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}
