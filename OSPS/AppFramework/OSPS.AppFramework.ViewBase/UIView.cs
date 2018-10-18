using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using OSPS.AppFramework.Common;

namespace OSPS.AppFramework.ViewBase
{
    [DesignTimeVisible(false)]
    public partial class UIView : UserControl, IView
    {
        public UIView()
        {
            InitializeComponent();
        }

        private Infragistics.Win.UltraWinToolbars.UltraToolbarsManager Toolbar;

        private string _id="";

        public string ID
        {
            get
            {
                return _id;
            }
        }

        public string EntityName
        {
            get;
            set;
        }

        public string PopupReturnValue
        {
            get;
            set;
        }
        #region IUIBase Members

        public void DoCommand(CommandType cType)
        {
            switch (cType)
            {
                case CommandType.New:
                    OnNew();
                    break;
                case CommandType.Delete:
                    OnDelete();
                    break;
                case CommandType.Modify:
                    OnModify();
                    break;
                case CommandType.Query :
                    if (OnBeforeQuery())
                        OnQuery();
                    break;
                case CommandType.Save :
                    if (OnBeforeSave())
                        OnSave();
                    break;
                case CommandType.Cancel:
                    OnCancel();
                    break;
                case CommandType.Preview:
                    OnPreview();
                    break;
                case CommandType.Print:
                    OnPrint();
                    break;
            }
        }

        public void UpdatePopupDataSource()
        {
            UpdatePopupSource();
        }

        public void SetToolbar(Infragistics.Win.UltraWinToolbars.UltraToolbarsManager toolbar)
        {
            this.Toolbar = toolbar;
        }
        #endregion

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            //if (!this.DesignMode)
            //{
            //    _id = Guid.NewGuid().ToString();
            //    DataRow dr = CommonVariable.MenuData.Select("F_Id = '" + this.GetType().Namespace + "'")[0];
            //    Caption = dr["F_Caption"].ToString();
            //}
        }

        protected virtual void OnNew()
        { 
        }

        protected virtual void OnDelete()
        {
        }

        protected virtual void OnModify()
        {
            
        }

        protected virtual void OnQuery()
        {
        }

        protected virtual void OnSave()
        {
        }

        protected virtual void OnCancel()
        { 
        }

        protected virtual void OnPreview()
        { 
        }

        protected virtual void OnPrint()
        { 
        }

        protected virtual void OnClosing(CancelEventArgs e)
        {
            if (e.Cancel)
                return;
            OnCloseUI();
        }

        protected virtual void OnCloseUI()
        { 
        }

        protected virtual bool OnBeforeQuery()
        {
            return true;
        }

        protected virtual bool OnBeforeSave()
        {
            return true;
        }

        protected virtual void UpdatePopupSource()
        {
        }

        protected void SetButtonState(CommandType button, bool state)
        {
            if (Toolbar.Tools.Exists(button.ToString()))
            {
                Infragistics.Win.UltraWinToolbars.ToolBase tbase = Toolbar.Tools[button.ToString()];
                tbase.SharedProps.Enabled = state;
            }
        }


        #region IView Members


        void IView.OnClosing(CancelEventArgs e)
        {
            this.OnClosing(e);
        }

        #endregion
    }
}
