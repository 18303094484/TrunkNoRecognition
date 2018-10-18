using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace OSPS.AppFramework.ViewBase
{
    public interface IView
    {
        void DoCommand(CommandType cType);
        void UpdatePopupDataSource();
        void SetToolbar(Infragistics.Win.UltraWinToolbars.UltraToolbarsManager toolbar);
        void OnClosing(CancelEventArgs e);
    }

    public enum CommandType
    {
        New,
        Save,
        Modify,
        Cancel,
        Query,
        Delete,
        CloseUI,
        Preview,
        Print,
        Exit
    }
}
