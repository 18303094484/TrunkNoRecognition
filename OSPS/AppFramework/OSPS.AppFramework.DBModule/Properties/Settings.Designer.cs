﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:2.0.50727.8793
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace OSPS.AppFramework.DBModule.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "9.0.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=.\\SQLEXPRESS;Initial Catalog=OSPS;Persist Security Info=True;User ID=" +
            "sa;Password=pass123;Pooling=False")]
        public string OSPSConnectionString {
            get {
                return ((string)(this["OSPSConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=SONGZS2;Initial Catalog=OSPS;Integrated Security=True")]
        public string OSPSConnectionString1 {
            get {
                return ((string)(this["OSPSConnectionString1"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=01777FDAD3474C3;Initial Catalog=OSPS;Persist Security Info=True;User " +
            "ID=sa")]
        public string OSPSConnectionString2 {
            get {
                return ((string)(this["OSPSConnectionString2"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=127.0.0.1;Initial Catalog=HXOSPS;Persist Security Info=True;User ID=r" +
            "oot")]
        public string HXOSPSConnectionString {
            get {
                return ((string)(this["HXOSPSConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=127.0.0.1;Initial Catalog=HXQueue;Persist Security Info=True;User ID=" +
            "root")]
        public string HXQueueConnectionString {
            get {
                return ((string)(this["HXQueueConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=127.0.0.1;Initial Catalog=HXPDOSPS;Persist Security Info=True;User ID" +
            "=root")]
        public string HXPDOSPSConnectionString {
            get {
                return ((string)(this["HXPDOSPSConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=8F2F0C091E88454;Initial Catalog=HXQueue;Persist Security Info=True;Us" +
            "er ID=sa")]
        public string HXQueueConnectionString1 {
            get {
                return ((string)(this["HXQueueConnectionString1"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=127.0.0.1;Initial Catalog=ABQueue;User ID=sa")]
        public string ABQueueConnectionString {
            get {
                return ((string)(this["ABQueueConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=127.0.0.1;Initial Catalog=ABPDOSPS;Persist Security Info=True;User ID" +
            "=sa")]
        public string ABPDOSPSConnectionString {
            get {
                return ((string)(this["ABPDOSPSConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=10.80.176.222;Initial Catalog=ABPDOSPS;Persist Security Info=True;Use" +
            "r ID=sa;Password=Password123")]
        public string ABPDOSPSConnectionString1 {
            get {
                return ((string)(this["ABPDOSPSConnectionString1"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=127.0.0.1;Initial Catalog=LZPDOSPS;User ID=sa")]
        public string LZPDOSPSConnectionString {
            get {
                return ((string)(this["LZPDOSPSConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=10.81.36.32;Initial Catalog=LZPDOSPS;User ID=sa")]
        public string LZPDOSPSConnectionString1 {
            get {
                return ((string)(this["LZPDOSPSConnectionString1"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=YYX\\MSSQLSERVER_R2;Initial Catalog=ZHOSPS;Persist Security Info=True;" +
            "User ID=sa;Password=1234")]
        public string ZHOSPSConnectionString {
            get {
                return ((string)(this["ZHOSPSConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=YYX\\MSSQLSERVER_R2;Initial Catalog=LZOSPS;Persist Security Info=True;" +
            "User ID=sa")]
        public string LZOSPSConnectionString {
            get {
                return ((string)(this["LZOSPSConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=YYX\\MSSQLSERVER_R2;Initial Catalog=ZHOSPS;Persist Security Info=True;" +
            "User ID=sa")]
        public string ZHOSPSConnectionString1 {
            get {
                return ((string)(this["ZHOSPSConnectionString1"]));
            }
        }
    }
}