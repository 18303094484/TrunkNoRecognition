using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace OSPS.AppFramework.ViewBase
{
    public partial class View : UserControl, IView
    {
        public View()
        {
            InitializeComponent();
            _id = Guid.NewGuid().ToString();
        }

        private string _id;
        public string Caption
        {
            get 
            {
                return lblCaption.Text;
            }
            set
            {
                lblCaption.Text = value;
            }
        }

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
                case CommandType.Query :
                    if (OnBeforeQuery())
                        OnQuery();
                    break;
                case CommandType.Save :
                    if (OnBeforeSave())
                        OnSave();
                    break;
                case CommandType.New:
                    OnNew();
                    break;
                case CommandType.Print:
                    OnPrint();
                    break;
                case CommandType.CloseUI:
                    OnCloseUI();
                    break;
            }
        }

        public void UpdatePopupDataSource()
        {
            UpdatePopupSource();
        }

        #endregion

        protected virtual bool OnBeforeQuery()
        {
            return true;
        }

        protected virtual void OnQuery()
        {
        }

        protected virtual bool OnBeforeSave()
        {
            return true;
        }

        protected virtual void OnSave()
        {
        }

        protected virtual void OnCloseUI()
        { 
        }

        protected virtual void OnPrint()
        { 
        }

        protected virtual void OnNew()
        { 
        }

        protected virtual void OnDelete()
        {
        }

        protected virtual void UpdatePopupSource()
        {
        }
    }
}
