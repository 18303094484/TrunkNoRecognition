using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OSPS.AppFramework.VLicense
{
    public class MyEncoder
    {
        private static string _Key = "WXTR7839XVD50Ihec";
        private static string _TABLE1 = "WY45IU37-AFNBJHT";
        private static string _TABLE2 = "KLSD96WR5X-Q0123";

        private static int Find(char c, int table)
        {
            char[] TABLE1 = _TABLE1.ToCharArray();
            char[] TABLE2 = _TABLE2.ToCharArray();

	        if( table == 1)
	        {
		        for (int i = 0; i < 16; i++)
		        {
			        if (TABLE1[i] == c)
				        return i;
		        }
	        }
	        else
	        {
		        for (int i = 0; i < 16; i++)
		        {
			        if (TABLE2[i] == c)
				        return i;
		        }
	        }

	        return -1;
        }

        public static string Encode(string szFrom)
        {
	        char[] str = new char[16];
	        bool bEnd = false;

            string szTo = "";
            if(String.IsNullOrEmpty(szFrom))    return szTo;
            // Fill right with Space
            char[] from = szFrom.ToCharArray();
	        for(int i = 0; i < 16; i++)
	        {
		        if(i < from.Length)
			        str[i] = from[i];
		        else
			        str[i] = ' ';
	        }

	        // XOR KEY
            char[] KEY = _Key.ToCharArray();
	        for(int i = 0; i < 16; i++)
		        str[i] ^= KEY[i];

            char[] to = new char[32];
            char[] TABLE1 = _TABLE1.ToCharArray();
            char[] TABLE2 = _TABLE2.ToCharArray();
            for (int i = 0; i < 16; i++)
	        {
		        int high = (str[i] >> 4) & 0x0F;
		        int low = str[i] & 0x0F;

		        to[i*2] = TABLE1[high];
		        to[i*2+1] = TABLE2[low];
	        }
            szTo = new string(to);
            return szTo;
        }

        public static string Decode(string szFrom)
        {
	        char[] str = new char[16];
	        int i;
            string szTo = "";
            if(String.IsNullOrEmpty(szFrom))    return szTo;
            char[] from = szFrom.ToCharArray();
	        for(i = 0; i < 16; i++)
	        {
		        int high = Find(from[i*2], 1);
		        int low = Find(from[i*2+1], 2);
		        str[i] = Convert.ToChar(((high << 4 ) & 0xF0) | (low & 0x0F));
	        }
            char[] KEY = _Key.ToCharArray();
	        for(i = 0; i < 16; i++)
		        str[i] ^= KEY[i];

            szTo = new string(str);
            szTo = szTo.Replace(" ", "");
            return szTo;
        }
    }
}
