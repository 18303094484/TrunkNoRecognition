using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Infragistics.Win.UltraWinEditors;
using System.Data;
using OSPS.AppFramework.AccessDatabase;
using Infragistics.Win.UltraWinGrid;
using Infragistics.Win;

namespace OSPS.Business.CommonFormFunc
{
    public class NetAdvantageFunc
    {
        private static string _ErrorText = "";
        public static string ErrorText
        {
            get { return _ErrorText; }
        }

        private static DataTable GetTotalDataTable(string szTableName, string szDisplayName, string szSortBy)
        {
            DataTable dt = null;
            try
            {
                IDatabaseBridge idb = DatabaseFactory.Create();
                string szSQL = String.Format("Select {0} From {1} Order By {2};", szDisplayName, szTableName, szSortBy);
                dt = idb.GetDataTable(szSQL);
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return dt;
        }

        private static DataTable GetTotalDataTable(string szTableName, string szDisplayName, string szValueName, string szSortBy)
        {
            DataTable dt = null;
            try
            {
                IDatabaseBridge idb = DatabaseFactory.Create();
                string szSQL = String.Format("Select {0}, {1} From {2} Order By {3};", szDisplayName, szValueName, szTableName, szSortBy);
                dt = idb.GetDataTable(szSQL);
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return dt;
        }

        public static void InitComboEditor(ref UltraComboEditor cbEditor, string szTableName, string szDisplayName, string szSortBy)
        {
            try
            {
                DataTable dt = GetTotalDataTable(szTableName, szDisplayName, szSortBy);
                if (dt != null)
                {
                    cbEditor.DataSource = dt;
                    cbEditor.DisplayMember = szDisplayName;
                    cbEditor.SelectedIndex = 0;
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
        }

        public static ValueListItem FindDataValueInCombo(ref UltraComboEditor cbEditor, string szValue)
        {
            ValueListItem retItem = null;
            foreach (ValueListItem item in cbEditor.Items)
            {
                string szItemValue = item.DataValue.ToString();
                if (szItemValue.CompareTo(szValue) == 0)
                {
                    retItem = item;
                    break;
                }
            }
            return retItem;
        }

        public static void InitComboEditor(ref UltraComboEditor cbEditor, string szTableName, string szDisplayName, string szValueName, string szSortBy)
        {
            try
            {
                DataTable dt = null;
                if(String.IsNullOrEmpty(szValueName))
                    dt = GetTotalDataTable(szTableName, szDisplayName, szSortBy);
                else 
                    dt = GetTotalDataTable(szTableName, szDisplayName, szValueName, szSortBy);
                if (dt != null)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        string szName = dr[szDisplayName].ToString();
                        string szValue = "";
                        if(String.IsNullOrEmpty(szValueName))
                            szValue = szName;
                        else
                            szValue = dr[szValueName].ToString();
                        cbEditor.Items.Add(szValue, szName);
                    }
                    cbEditor.SelectedIndex = 0;
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
        }

        public static void InitComboEditor(ref UltraComboEditor cbEditor, DataTable dt, string szDisplayName, string szValueName)
        {
            try
            {
                if (dt != null)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        string szName = dr[szDisplayName].ToString();
                        string szValue = "";
                        if (String.IsNullOrEmpty(szValueName))
                            szValue = szName;
                        else
                            szValue = dr[szValueName].ToString();
                        cbEditor.Items.Add(szValue, szName);
                    }
                    cbEditor.SelectedIndex = 0;
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
        }

        public static int FindInDBGrid(ref UltraGrid DBGrid, string szText, string szCol)
        {
            int nRow = -1;
            try
            {
                int nIndex = 0;
                UltraGridRow row = DBGrid.ActiveRow;
                if (row != null)
                    nIndex = row.Index + 1;

                for (int i = nIndex; i < DBGrid.Rows.Count; i++)
                {
                    if (!String.IsNullOrEmpty(szCol))
                    {
                        string mm = DBGrid.Rows[i].Cells[szCol].Text.ToString();
                        if (mm.IndexOf(szText) >= 0)
                        {
                            nRow = i;
                            break;
                        }
                    }
                    else
                    {
                        for (int j = 0; j < DBGrid.Rows[i].Cells.Count; j++)
                        {
                            if (DBGrid.Rows[i].Cells[j].Hidden) continue;

                            string mm = DBGrid.Rows[i].Cells[j].Text.ToString();
                            if (mm.IndexOf(szText) >= 0)
                            {
                                nRow = i;
                                break;
                            }
                        }
                        if (nRow >= 0) break;
                    }
                }
                if (nRow >= 0)
                {
                    DBGrid.Rows[nRow].Activated = true;
                    row.Activated = false;
                }
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return nRow;
        }

        public static List<UltraGridRow> GetDBGridSelectedRow(UltraGrid dbGrid)
        {
            List<UltraGridRow> listRow = new List<UltraGridRow>();
            for (int i = 0; i < dbGrid.Rows.Count; i++)
            {
                if (dbGrid.Rows[i].Selected)
                {
                    listRow.Add(dbGrid.Rows[i]);
                }
            }
            return listRow;
        }

        public static List<UltraGridRow> GetSelectedItem(ref UltraGrid DBGrid)
        {
            List<UltraGridRow> list = new List<UltraGridRow>();
            foreach (UltraGridRow row in DBGrid.Rows)
            {
                if (row.Selected)
                {
                    list.Add(row);
                }
            }
            return list;
        }

        public static List<string> GetSelectedItem(ref UltraGrid DBGrid, string szColumn)
        {
            List<string> list = new List<string>();
            foreach(UltraGridRow row in DBGrid.Rows)
            {
                if (row.Selected)
                {
                    list.Add(row.Cells[szColumn].Text);
                }
            }
            return list;
        }
    }
}
