using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SpeechLib;

namespace OSPS.Device.LEDScreen
{
    public class SoundPlayer
    {
        private static string _szErrorText = "";
        private static string _szBasePath = "";
        public static void SetBasePath(string _basePath)
        {
            _szBasePath = _basePath;
        }
        /// <summary>
        /// 使用语音识别技术播放文本文件
        /// </summary>
        /// <param name="FileName"></param>
        /// <returns></returns>
        public static bool SpeechPlayFile(string FileName)
        {//要加载COM组件:Microsoft speech object Library
            bool bRet = false;
            try
            {
                if (System.IO.File.Exists(FileName))
                {
                    SpeechLib.SpVoiceClass pp = new SpeechLib.SpVoiceClass();
                    SpeechLib.SpFileStreamClass spFs = new SpeechLib.SpFileStreamClass();
                    spFs.Open(FileName, SpeechLib.SpeechStreamFileMode.SSFMOpenForRead, true);
                    SpeechLib.ISpeechBaseStream Istream = spFs as SpeechLib.ISpeechBaseStream;
                    pp.SpeakStream(Istream, SpeechLib.SpeechVoiceSpeakFlags.SVSFIsFilename);
                    spFs.Close();
                    bRet = true;
                }
            }
            catch (Exception ex)
            {
            }
            return bRet;
        }
        /// <summary>
        /// 使用语音识别技术播放字符串
        /// </summary>
        /// <param name="szText"></param>
        /// <returns></returns>
        public static bool SpeechPlayString(string szText)
        {
            bool bRet = false;
            try
            {
                SpeechLib.SpVoiceClass voice = new SpeechLib.SpVoiceClass();
                //voice.Voice = voice.GetVoices(string.Empty, string.Empty).Item(24); //其中3为中文，024为英文
                voice.Speak(szText, SpeechVoiceSpeakFlags.SVSFDefault);
                bRet = true;
            }
            catch (Exception ex)
            {
                _szErrorText = ex.Message;
            }
            return bRet;
        }

        public static bool SoundPlayerFile(string szFilename)
        {
            bool bRet = false;
            try
            {
                System.Media.SoundPlayer player = new System.Media.SoundPlayer(szFilename);
                player.PlaySync();
                bRet = true;
            }
            catch (Exception ex)
            {
                _szErrorText = ex.Message;
            }
            return bRet;
        }

        public static bool SoundPlayerString(string szText)
        {
            bool bRet = false;
            try
            {
                foreach (char ch in szText.ToCharArray())
                {
                    string szFilename = _szBasePath + "\\WaveFile\\" + ch.ToString() + ".wav";
                    SoundPlayerFile(szFilename);
                }
                bRet = true;
            }
            catch (Exception ex)
            {
                _szErrorText = ex.Message;
            }
            return bRet;
        }

        public static bool PlayTicket(string szText, int nWindowID)
        {
            bool bRet = false;
            //播放“请”
            string szFilename = _szBasePath + "\\WaveFile\\Please.wav";
            bRet = SoundPlayerFile(szFilename);
            //判断是否为电商客户，如果是电商客户，播放“电商客户”
            if (szText.Length >= 5)
            {//表明为特殊客户
                string szFirstChar = szText.Substring(0, 1);
                if (szFirstChar.CompareTo("V") == 0)
                {
                    szFilename = _szBasePath + "\\WaveFile\\ElecBusinessUser.wav";
                    bRet = SoundPlayerFile(szFilename);
                }
            }
            //播放字符串
            bRet = SoundPlayerString(szText);
            //播放“到”
            szFilename = _szBasePath + "\\WaveFile\\To.wav";
            bRet = SoundPlayerFile(szFilename);
            //播放窗口号
            bRet = SoundPlayerString(nWindowID.ToString());
            //播放“号窗口办理”
            szFilename = _szBasePath + "\\WaveFile\\Window.wav";
            bRet = SoundPlayerFile(szFilename);
            return bRet;
        }

        public static bool PlayLoginTruck(string szText)
        {
            bool bRet = false;
            //播放“请车牌号为”
            string szFilename = _szBasePath + "\\WaveFile\\Truck.wav";
            bRet = SoundPlayerFile(szFilename);
            //播放车牌号
            bRet = SoundPlayerString(szText);
            //播放“的车辆进场装车”
            szFilename = _szBasePath + "\\WaveFile\\Login.wav";
            bRet = SoundPlayerFile(szFilename);
            return bRet;
        }

        public static bool PlayDingDong()
        {
            //播放“叮咚”
            string szFilename = _szBasePath + "\\WaveFile\\notify.wav";
            bool bRet = SoundPlayerFile(szFilename);
            return bRet;
        }

        public static bool PlayCreatingCard()
        {
            string szFilename = _szBasePath + "\\WaveFile\\" + "CreatingCard.wav";
            return SoundPlayerFile(szFilename);
        }

        public static bool PlayCreateComplete()
        {
            string szFilename = _szBasePath + "\\WaveFile\\" + "CreateComplete.wav";
            return SoundPlayerFile(szFilename);
        }

        public static bool PlayDing()
        {
            string szFilename = _szBasePath + "\\WaveFile\\" + "ding.wav";
            return SoundPlayerFile(szFilename);
        }
        /// <summary>
        /// 读取化验结果错误
        /// 读取化验结果错误，请移走IC卡，稍候再试!
        /// </summary>
        /// <returns></returns>
        public static bool PlayReadHYStatusError()
        {
            string szFilename = _szBasePath + "\\WaveFile\\" + "ReadHYStatusError.wav";
            return SoundPlayerFile(szFilename);
        }
        /// <summary>
        /// 车辆没有化验结果
        /// 您的车辆没有化验确认，请到化验室确认后才可以过磅!
        /// </summary>
        /// <returns></returns>
        public static bool PlayWithoutHYStatus()
        {
            string szFilename = _szBasePath + "\\WaveFile\\" + "IncorrectHYStatus.wav";
            return SoundPlayerFile(szFilename);
        }
    }
}
