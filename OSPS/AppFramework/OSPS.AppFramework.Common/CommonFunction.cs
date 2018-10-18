using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Win32;
using System.Net;
using System.Drawing;
using System.IO;
using Infragistics.Win.UltraWinGrid;
using System.Text.RegularExpressions;

namespace OSPS.AppFramework.Common
{
    public class CommonFunction
    {
        private static string _ErrorText = "";
        public static string ErrorText
        {
            get { return _ErrorText; }
        }
        public static bool WriteLogger(string filename, string format, params object[] args)
        {
            string szText = String.Format(format, args);
            return WriteLogger(filename, szText);
        }

        public static bool WriteLogger(string filename, string text)
        {
            try
            {
                Logger log = new Logger(filename);
                text = string.Format("时间：{0} 事件：{1} ", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss:fff"), text);
                log.Write(text);
                log.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
            finally
            {
            }

        }

        public static string ConvertMulLineString(string szText, string szGap)
        {
            string szReturn = "\r\n";
            string szMulLines = szText.Replace(szGap, szReturn);
            return szMulLines;
        }

        public static Color RgbToColor(int color)
        {
            return Color.FromArgb(color & 0x0000ff, (color & 0x00ff00) >> 8, (color & 0xff0000) >> 16);
        }

        public static string GetLocalIp()
        {
            string strHostIP = "";
            IPHostEntry oIPHost = Dns.Resolve(Environment.MachineName);
            //Dns.GetHostAddresses(Environment.MachineName);
            
            if (oIPHost.AddressList.Length > 0)
                strHostIP = oIPHost.AddressList[0].ToString();
            return strHostIP;
        }

        public static string ConvertCharToString(char[] arrayChar)
        {
            StringBuilder sb = new StringBuilder();
            foreach (char c in arrayChar)
            {
                if (c == '\0') break;
                sb.Append(c);
            }
            string s = sb.ToString();
            return s;
        }

        public static byte[] ConvertStringToByte(string str)
        {
            byte[] byteArray = System.Text.Encoding.Default.GetBytes(str);
            return byteArray;
        }

        public static string ConvertByteToString(byte[] byteValue)
        {
            string s = System.Text.Encoding.Default.GetString(byteValue);
            int nPos = s.IndexOf('\0');
            if (nPos >= 0)
                s = s.Substring(0, nPos);
            return s;
        }

        public static string ConvertByteToString(byte[] byteValue, int nIndex)
        {
            int nLen = byteValue.Length - nIndex;
            if(nLen <= 0)  return "";
            byte[] byteDes = new byte[nLen];
            Array.Copy(byteValue, nIndex, byteDes, 0, nLen);
            string s = System.Text.Encoding.Default.GetString(byteDes);
            int nPos = s.IndexOf('\0');
            if (nPos >= 0)
                s = s.Substring(0, nPos);
            return s;
        }

        public static void MyMemcpy(byte[,] desArray, int nRow, byte[] srcArray, int nSrcIndex, int nLen)
        {
            for (int i = 0; i < nLen; i++)
            {
                desArray[nRow, i] = srcArray[i + nSrcIndex];
            }
        }

        public static void MyMemcpy(byte[] desArray, int nDesIndex, byte[,] srcArray, int nRow, int nLen)
        {
            for (int i = 0; i < nLen; i++)
            {
                desArray[nDesIndex + i] = srcArray[nRow, i];
            }
        }

        public static string[] GetCommKeys()
        {
            string[] values = null;
            try
            {
                RegistryKey hklm = Registry.LocalMachine;
                RegistryKey hs = hklm.OpenSubKey(@"HARDWARE\DEVICEMAP\SERIALCOMM");
                //Console.WriteLine(hs.ValueCount.ToString());
                values = new string[hs.ValueCount];
                for (int i = 0; i < hs.ValueCount; i++)
                {
                    values[i] = hs.GetValue(hs.GetValueNames()[i]).ToString();
                }
            }
            catch (Exception ee)
            {
                Console.Write(ee.Message);
            }
            return values;
        }

        public static string EncryptPassword(string password)
        {

            return "";
        }

        public static bool IsValidateType(string Expression, string DataType)
        {
            bool bRet = false;

            switch (DataType)
            {
                case "Int":
                    try
                    {
                        int.Parse(Expression);
                        bRet = true;
                    }
                    catch
                    {
                    }
                    break;
                case "Float":
                    try
                    {
                        float.Parse(Expression);
                        bRet = true;
                    }
                    catch
                    {
                    }
                    break;
                case "Double":
                    try
                    {
                        Double.Parse(Expression);
                        bRet = true;
                    }
                    catch
                    {
                    }
                    break;
                case "DateTime":
                    try
                    {
                        DateTime.Parse(Expression);
                        bRet = true;
                    }
                    catch
                    {
                    }
                    break;
                default:
                    break;
            }
            return bRet;
        }

        public static int GetIntValue(string s)
        {
            int nValue = 0;
            try
            {
                nValue = int.Parse(s);
            }
            catch (Exception ex)
            {
            }
            return nValue;
        }

        public static float GetFloatValue(string s)
        {
            float fValue = 0;
            try
            {
                fValue = float.Parse(s);
            }
            catch (Exception ex)
            {
            }
            return fValue;
        }

        public static double GetDoubleValue(string s)
        {
            double dValue = 0;
            try
            {
                dValue = double.Parse(s);
            }
            catch (Exception ex)
            {
            }
            return dValue;
        }

        public static DateTime GetDateTimeValue(string s)
        {
            DateTime dValue = DateTime.Now;
            try
            {
                dValue = DateTime.Parse(s);
            }
            catch (Exception ex)
            {
            }
            return dValue;
        }

        public static Decimal GetDecimalValue(string s)
        {
            Decimal dValue = 0.0M;
            try
            {
                dValue = Decimal.Parse(s);
            }
            catch (Exception ex)
            {
            }
            return dValue;
        }

        public static string ReadTextFile(string szFilename)
        {
            string szContent = "";
            try
            {
                FileStream aFile = new FileStream(szFilename, FileMode.Open);
                StreamReader sr = new StreamReader(aFile, System.Text.Encoding.Default);
                szContent = sr.ReadToEnd();
                sr.Close();
                aFile.Close();
            }
            catch (Exception ex)
            {
            }
            return szContent;
        }

        public static string ByteArrayToHexString(byte[] data)
        {
            StringBuilder sb = new StringBuilder(data.Length * 3);
            foreach (byte b in data)
                sb.Append(Convert.ToString(b, 16).PadLeft(2, '0'));
            return sb.ToString().ToUpper();
        }

        public static bool GetBooleanValue(string szValue)
        {
            bool bRet = false;
            try
            {
                bRet = Convert.ToBoolean(szValue);
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }

        public static bool IsBetweenDays(DateTime dtTime, int nDays)
        {
            TimeSpan timeSpan = new TimeSpan(nDays, 0, 0, 0);
            DateTime nextTime = DateTime.Now + timeSpan;
            if (dtTime < nextTime) return true;
            else return false;
        }

        public static DateTime GetTodayLastTime(DateTime dtTime)
        {
            DateTime dtLastTime = new DateTime(dtTime.Year, dtTime.Month, dtTime.Day, 23, 59, 59);
            return dtLastTime;
        }

        /// <summary>
        /// 钱的对比，需要使用整数进行对比，所以转换为分
        /// </summary>
        /// <param name="f1"></param>
        /// <param name="f2"></param>
        /// <returns></returns>
        public static int CompareMoney(double f1, double f2)
        {
            Int64 nF1 = Convert.ToInt64(f1 * 100);
            Int64 nF2 = Convert.ToInt64(f2 * 100);
            if (nF1 > nF2) return 1;
            else if (nF1 == nF2) return 0;
            else return -1;
        }
        /// <summary>
        /// 浮点数的对比，扩大1000倍，用整数进行对比
        /// </summary>
        /// <param name="fPrice"></param>
        /// <param name="p"></param>
        /// <returns></returns>
        public static int CompareDoulbeValue(double fValue1, double fValue2)
        {
            Int64 nF1 = Convert.ToInt64(fValue1 * 1000);
            Int64 nF2 = Convert.ToInt64(fValue2 * 1000);
            if (nF1 > nF2) return 1;
            else if (nF1 == nF2) return 0;
            else return -1;
        }
        public static int CompareFloatValue(float fValue1, float fValue2)
        {
            Int64 nF1 = Convert.ToInt64(fValue1 * 1000);
            Int64 nF2 = Convert.ToInt64(fValue2 * 1000);
            if (nF1 > nF2) return 1;
            else if (nF1 == nF2) return 0;
            else return -1;
        }

        public static string ConvertBytesToHexString(byte[] InBytes)
        {
            string StringOut = "";
            foreach (byte InByte in InBytes)
            {
                StringOut = StringOut + String.Format("{0:X2} ", InByte);
            }
            return StringOut;
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
                            if (DBGrid.Rows[i].Cells[j].Column.Hidden) continue;

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

        public static Int64 GetInt64Value(string szValue)
        {
            Int64 nValue = 0;
            try
            {
                nValue = Convert.ToInt64(szValue);
            }
            catch (Exception ex)
            {
                _ErrorText = ex.Message;
            }
            return nValue;
        }

        #region 验证身份证
        public static bool CheckIDCard(string Id)
        {
            if (Id.Length == 18)
            {
                bool check = CheckIDCard18(Id);
                return check;
            }
            else if (Id.Length == 15)
            {
                bool check = CheckIDCard15(Id);
                return check;
            }
            else
            {
                return false;
            }
        }

        public static bool CheckIDCard18(string Id)
        {
            long n = 0;
            if (long.TryParse(Id.Remove(17), out n) == false || n < Math.Pow(10, 16) || long.TryParse(Id.Replace('x', '0').Replace('X', '0'), out n) == false)
            {
                return false;//数字验证  
            }
            string address = "11x22x35x44x53x12x23x36x45x54x13x31x37x46x61x14x32x41x50x62x15x33x42x51x63x21x34x43x52x64x65x71x81x82x91";
            if (address.IndexOf(Id.Remove(2)) == -1)
            {
                return false;//省份验证  
            }

            string birth = Id.Substring(6, 8).Insert(6, "-").Insert(4, "-");
            DateTime time = new DateTime();
            if (DateTime.TryParse(birth, out time) == false)
            {
                return false;//生日验证  
            }

            string[] arrVarifyCode = ("1,0,x,9,8,7,6,5,4,3,2").Split(',');
            string[] Wi = ("7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2").Split(',');
            char[] Ai = Id.Remove(17).ToCharArray();
            int sum = 0;
            for (int i = 0; i < 17; i++)
            {
                sum += int.Parse(Wi[i]) * int.Parse(Ai[i].ToString());
            }
            int y = -1;
            DivRem(sum, 11, out y);
            if (arrVarifyCode[y] != Id.Substring(17, 1).ToLower())
            {
                return false;//校验码验证  
            }
            return true;//符合GB11643-1999标准  
        }

        public static int DivRem(int a, int b, out int result)
        {
            result = a % b;
            return (a / b);
        }

        public static bool CheckIDCard15(string Id)
        {
            long n = 0;
            if (long.TryParse(Id, out n) == false || n < Math.Pow(10, 14))
            {
                return false;//数字验证  
            }
            string address = "11x22x35x44x53x12x23x36x45x54x13x31x37x46x61x14x32x41x50x62x15x33x42x51x63x21x34x43x52x64x65x71x81x82x91";
            if (address.IndexOf(Id.Remove(2)) == -1)
            {
                return false;//省份验证  
            }
            string birth = Id.Substring(6, 6).Insert(4, "-").Insert(2, "-");
            DateTime time = new DateTime();
            if (DateTime.TryParse(birth, out time) == false)
            {
                return false;//生日验证  
            }
            return true;//符合15位身份证标准  
        }
        #endregion  

        #region 验证车牌号
        public static bool IsVehicleNumber(string vehicleNumber)
        {
            bool result = false;
            if (vehicleNumber.Length == 7)
            {
                string express = @"^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$";
                result = Regex.IsMatch(vehicleNumber, express);
            }
            return result;
        }
        #endregion
    }
}
