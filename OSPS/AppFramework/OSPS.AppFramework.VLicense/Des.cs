using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OSPS.AppFramework.VLicense
{
    public class Des
    {
        private string CodeTable0 = "RDAE2TP7L9MNQH5X";
        private string CodeTable1 = "G6HVF8YZ1SWABK4C";
        private string CodeTable2 = "9N5RDAMXP7QHE2TL";
        private string CodeTable3 = "GZA6VK4CHF1SBW8Y";

        private int[]  NumInsertPos = new int[]{2,0,3,1};

        // Trim the id and right fill with SPACE
        private void PreEncryptProcess(char[] mIn, ref char[] mOut)
        {
	        int j = 0;
	        for (int i = 0; i < 16; i++)
	        {
                if (mIn[j] == ' ' || mIn[j] == '\t')
                {
                    j++;
                    continue;
                }

		        if ( mIn[j] == '\0' )
			        mOut[i] = ' ';
		        else
			        mOut[i] = mIn[j];
		        j++;
	        }
        }

        // mIn: 12 Bytes, mOut 32 Bytes
        private void EncryptProcess(char[] mInChar, ref char[] mOut)
        {
            int[] temp = new int[8];
            byte[] mIn = System.Text.Encoding.Default.GetBytes(mInChar);
	        // bit mapping talbe -- In(Byte, Bit)
	        //
	        // Byte Bit7  Bit6  Bit5  Bit4  Bit3  Bit2  Bit1  Bit0
	        // ---------------------------------------------------  
	        //  0   (5,3) (4,4) (3,4) (7,3) (0,4) (1,4) (6,1) (2,7)
	        //  1   (1,3) (0,5) (7,1) (3,7) (5,1) (2,3) (4,1) (6,6)
	        //  2   (2,5) (7,4) (6,7) (1,5) (3,0) (4,6) (0,0) (5,7)
	        //  3   (0,1) (3,5) (5,2) (4,0) (2,6) (6,2) (7,0) (1,1)
	        //  4   (3,1) (5,5) (1,0) (6,5) (7,7) (0,2) (2,0) (4,7)
	        //  5   (4,5) (6,4) (2,2) (0,3) (1,6) (5,4) (3,2) (7,2)
	        //  6   (7,6) (2,4) (4,3) (5,6) (6,0) (3,3) (1,7) (0,7)
	        //  7   (6,3) (1,2) (0,6) (2,1) (4,2) (7,5) (5,0) (3,6)
	        temp[0] = ((mIn[5] & 0x08) << 4) | ((mIn[4] & 0x10) << 2) | ((mIn[3] & 0x10) << 1) | ((mIn[7] & 0x08) << 1) | ((mIn[0] & 0x10) >> 1) | ((mIn[1] & 0x10) >> 2) | ((mIn[6] & 0x02) >> 0) | ((mIn[2] & 0x80) >> 7);
	        temp[1] = ((mIn[1] & 0x08) << 4) | ((mIn[0] & 0x20) << 1) | ((mIn[7] & 0x02) << 4) | ((mIn[3] & 0x80) >> 3) | ((mIn[5] & 0x02) << 2) | ((mIn[2] & 0x08) >> 1) | ((mIn[4] & 0x02) >> 0) | ((mIn[6] & 0x40) >> 6);
	        temp[2] = ((mIn[2] & 0x20) << 2) | ((mIn[7] & 0x10) << 2) | ((mIn[6] & 0x80) >> 2) | ((mIn[1] & 0x20) >> 1) | ((mIn[3] & 0x01) << 3) | ((mIn[4] & 0x40) >> 4) | ((mIn[0] & 0x01) << 1) | ((mIn[5] & 0x80) >> 7);
	        temp[3] = ((mIn[0] & 0x02) << 6) | ((mIn[3] & 0x20) << 1) | ((mIn[5] & 0x04) << 3) | ((mIn[4] & 0x01) << 4) | ((mIn[2] & 0x40) >> 3) | ((mIn[6] & 0x04) >> 0) | ((mIn[7] & 0x01) << 1) | ((mIn[1] & 0x02) >> 1);
	        temp[4] = ((mIn[3] & 0x02) << 6) | ((mIn[5] & 0x20) << 1) | ((mIn[1] & 0x01) << 5) | ((mIn[6] & 0x20) >> 1) | ((mIn[7] & 0x80) >> 4) | ((mIn[0] & 0x04) >> 0) | ((mIn[2] & 0x01) << 1) | ((mIn[4] & 0x80) >> 7);
	        temp[5] = ((mIn[4] & 0x20) << 2) | ((mIn[6] & 0x10) << 2) | ((mIn[2] & 0x04) << 3) | ((mIn[0] & 0x08) << 1) | ((mIn[1] & 0x40) >> 3) | ((mIn[5] & 0x10) >> 2) | ((mIn[3] & 0x04) >> 1) | ((mIn[7] & 0x04) >> 2);
	        temp[6] = ((mIn[7] & 0x40) << 1) | ((mIn[2] & 0x10) << 2) | ((mIn[4] & 0x08) << 2) | ((mIn[5] & 0x40) >> 2) | ((mIn[6] & 0x01) << 3) | ((mIn[3] & 0x08) >> 1) | ((mIn[1] & 0x80) >> 6) | ((mIn[0] & 0x80) >> 7);
	        temp[7] = ((mIn[6] & 0x08) << 4) | ((mIn[1] & 0x04) << 4) | ((mIn[0] & 0x40) >> 1) | ((mIn[2] & 0x02) << 3) | ((mIn[4] & 0x04) << 1) | ((mIn[7] & 0x20) >> 3) | ((mIn[5] & 0x01) << 1) | ((mIn[3] & 0x40) >> 6);

	        // Coding according to CodeTable0 and CodeTable1
	        //
	        // Byte CodeTable Index
	        // -----------------------------
	        //  0       0     temp[7]_high
	        //  1       1     temp[1]_low
	        //  2       0     temp[2]_low
	        //  3       0     temp[0]_high
	        //  4       1     temp[6]_high
	        //  5       1     temp[4]_low
	        //  6       1     temp[3]_low
	        //  7       1     temp[2]_high
	        //  8       0     temp[6]_low
	        //  9       0     temp[3]_high
	        //  10      1     temp[0]_low
	        //  11      1     temp[4]_high
	        //  12      0     temp[5]_high
	        //  13      0     temp[1]_high
	        //  14      0     temp[5]_low
	        //  15      1     temp[7]_low

	        mOut[0] = CodeTable0[(temp[7] & 0xF0) >> 4];
	        mOut[1] = CodeTable1[temp[1] & 0x0F];
	        mOut[2] = CodeTable0[temp[2] & 0x0F];
	        mOut[3] = CodeTable0[(temp[0] & 0xF0) >> 4];
	        mOut[4] = CodeTable1[(temp[6] & 0xF0) >> 4];
	        mOut[5] = CodeTable1[temp[4] & 0x0F];
	        mOut[6] = CodeTable1[temp[3] & 0x0F];
	        mOut[7] = CodeTable1[(temp[2] & 0xF0) >> 4];
	        mOut[8] = CodeTable0[temp[6] & 0x0F];
	        mOut[9] = CodeTable0[(temp[3] & 0xF0) >> 4];
	        mOut[10] = CodeTable1[temp[0] & 0x0F];
	        mOut[11] = CodeTable1[(temp[4] & 0xF0) >> 4];
	        mOut[12] = CodeTable0[(temp[5] & 0xF0) >> 4];
	        mOut[13] = CodeTable0[(temp[1] & 0xF0) >> 4];
	        mOut[14] = CodeTable0[temp[5] & 0x0F];
	        mOut[15] = CodeTable1[temp[7] & 0x0F];
        }

        // Add '-' into the key for each 4 bytes
        private void PostEncryptProcess(char[] mIn, ref char[]mOut, int totalbyte, int nByte)
        {
	        int j = 0;

	        for (int i = 0; i < totalbyte; i++)
	        {
		        if ( (i != 0) && (i % nByte == 0) )
			        mOut[j++] = '-';

		        mOut[j++] = mIn[i];
	        }
        }

        public string GetKey(string id)
        {
            char[] szKey = new char[19];
            char[] chID = id.ToCharArray();
            SN_Encrypt(chID, ref szKey);
            string strKey = new string(szKey);
            return strKey;
        }

        public int SN_Encrypt(char[] id, ref char[] key)
        {
            char[] tempID = new char[32];
            char[] tempKey1 = new char[32];

	        //Try sn to 16
            char[] idTemp = new char[16];
            if (id.Length > 16)
            {
                Array.Copy(id, idTemp, 16);
            }
            else
            {
                Array.Copy(id, idTemp, id.Length);
            }

            PreEncryptProcess(idTemp, ref tempID);
	        EncryptProcess(tempID, ref tempKey1);
	        PostEncryptProcess(tempKey1, ref key, 16, 4);
	        return 1;
        }
    }
}
