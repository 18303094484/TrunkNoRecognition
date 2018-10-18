<?xml version="1.0" encoding="utf-8"?>
<styleLibrary>
  <styleSets defaultStyleSet="Default">
    <styleSet name="Default" useOsThemes="False" useFlatMode="True">
      <componentStyles>
        <componentStyle name="Inbox Form">
          <properties>
            <property name="BackColor">241, 247, 231</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox ListBox">
          <properties>
            <property name="Font">Segoe UI, 8.25pt</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox MonthCalendar">
          <properties>
            <property name="TitleBackColor">158, 198, 27</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox Panel">
          <properties>
            <property name="BackColor">241, 247, 231</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraCalculator" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="ImageTransparentColor">Transparent</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraDockManager" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="CaptionGrabHandleStyle">None</property>
            <property name="GroupPaneTabStyle">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraExplorerBar" viewStyle="Standard" useOsThemes="False" />
        <componentStyle name="UltraListView" headerStyle="Standard" />
        <componentStyle name="UltraTabbedMdiManager">
          <properties>
            <property name="TabStyle">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabControl" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="Style">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabStripControl">
          <properties>
            <property name="Style">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraToolbarsManager" useOsThemes="False" useFlatMode="True" />
      </componentStyles>
      <styles>
        <style role="Base">
          <states>
            <state name="Normal" foreColor="DimGray" fontName="Arial" textVAlign="Middle" themedElementAlpha="Transparent" />
          </states>
        </style>
        <style role="Button" buttonStyle="FlatBorderless">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>buttonAppletini_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonAppletini_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="CalendarComboControlArea">
          <states>
            <state name="Normal" borderColor="LightGray" />
          </states>
        </style>
        <style role="ComboDropDownButton">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="DayViewAllDayEventArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DayViewControlArea">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DayViewTimeSlotNonWorkingHour">
          <states>
            <state name="Normal" backColor="WhiteSmoke" borderColor="Gainsboro" backGradientStyle="None" />
            <state name="Selected" backColor="WhiteSmoke" imageBackgroundStyle="Stretched" backGradientStyle="None" />
          </states>
        </style>
        <style role="DayViewTimeSlotWorkingHour">
          <states>
            <state name="Normal" backColor="WhiteSmoke" borderColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" borderColor="Transparent">
              <resources>
                <name>gridRowAppletini_Active</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockControlPaneContentArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockPaneCaption">
          <states>
            <state name="Normal">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockPaneCaptionHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockSlidingGroupHeaderHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" borderColor="Transparent" />
          </states>
        </style>
        <style role="DockSlidingGroupHeaderVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="EditorControl">
          <states>
            <state name="Normal" borderColor="Silver">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarControlArea">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarGroupHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>explorerBarGroupHeaderAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>explorerBarGroupHeaderAppletini_HotTracked</name>
              </resources>
            </state>
            <state name="Active">
              <resources>
                <name>explorerBarGroupHeaderAppletini_Active</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaInner">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="2, 1, 2, 2">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA9wAAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABkIBgAAAFnkjOsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAYElEQVRIS+3XsQ2AMBBDUTMIYidmZDEWiUkyAG5dfCRXbk4PNznuR0PSNdPwvVoH2VZDNg4H/fwNhNJOEUIoCaSeDSGUBFLPhhBKAqlnQwglgdT3bmhedpZkvzq8qEriD0cpg2k2sBtbAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarItem">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" backColor="Transparent" foreColor="DarkGreen" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="5, 2, 7, 4" />
          </states>
        </style>
        <style role="ExplorerBarNavigationOverflowButtonArea">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridBandHeader">
          <states>
            <state name="Normal" backColor="LightGray" foreColor="53, 106, 0" borderColor="Transparent" textHAlign="Left" imageBackgroundStyle="Stretched" fontBold="True" fontSize="12" backColor2="White" backGradientStyle="Vertical" imageBackgroundStretchMargins="2, 4, 2, 5" />
          </states>
        </style>
        <style role="GridCaption">
          <states>
            <state name="Normal" backColor="WhiteSmoke" borderColor="Transparent" fontBold="True" fontSize="11" backGradientStyle="None" />
          </states>
        </style>
        <style role="GridCell">
          <states>
            <state name="Normal" borderColor="Transparent" />
            <state name="Selected" borderColor="Transparent" />
            <state name="Active" backColor="Transparent" foreColor="53, 106, 0" borderColor="Transparent" backGradientStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABYIBgAAAKiyPj4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAd0lEQVRIS+3RWwqCUACE4XH/u1EX0R58EcKw0MPJvGYx6gp6/QMHvvdhJvEekXIUIkWf72oSLetkEo3vziTq52ASddPdJIpjZRKFoTSJ2qEwiW7xYhKVbW4SXUNuElUxM4nqZ2YSPV6pSdT0qUnOQr/eOBf6u4U2JXbkQIW6lM4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="EditMode" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="3, 6, 4, 6">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAZwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAQAAAABUIBgAAAPYq6JoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAAA0ElEQVRYR+2YMQrDMAxF1SkHCd1K517VnpLN4EN0SUPn0ilkCSHEg8EUOsWx1SqhvYQkMBhv71uWvnUIr4TPxx36voNlWYBDFEUBZXmE0/kC0DQtWmsxhIBcYp5nNMYgsUNVVei958L+55ymCeu6RlBKsYMn4JQSaq35CkAiiACSAfIEpAaw7QJSBKULSBsUHyBGSIyQGKHdCOWc2f0IY4x7EfzOA7Jzjp0AwzDQPCDD9dZu05FxHHFdVxZC0IXTIIjYoXvHbUMHlBIc1g+e2D/REn/ywFApiQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="GridColumnHeader">
          <states>
            <state name="Normal" textHAlign="Left" fontBold="True" fontSize="10" imageBackgroundStretchMargins="6, 3, 7, 7">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridControlAreaBase">
          <states>
            <state name="Normal" backColor="White" borderColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBox">
          <states>
            <state name="Normal" backColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBoxPrompt">
          <states>
            <state name="Normal" backColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridHeader" borderStyle="None" />
        <style role="GridRow">
          <states>
            <state name="Normal" backColor="White" borderColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="WhiteSmoke" foreColor="DimGray" backGradientStyle="None" backHatchStyle="None" />
            <state name="Active">
              <resources>
                <name>gridRowAppletini_Active</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridRowSelector">
          <states>
            <state name="Normal" backColor="WhiteSmoke" foreColor="172, 22, 47" borderColor="WhiteSmoke" imageHAlign="Right" imageVAlign="Middle" backGradientStyle="None" />
            <state name="FilterRow" backColor="IndianRed" backGradientStyle="None" />
          </states>
        </style>
        <style role="GridRowSelectorHeader">
          <states>
            <state name="Normal" backColor="WhiteSmoke" backGradientStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemAreaHorizontalBottom">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemAreaVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GroupPaneTabItemAreaVerticalRight">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemHorizontalBottom">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemHorizontalTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemVerticalLeft">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemVerticalRight">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" borderColor="Transparent" />
          </states>
        </style>
        <style role="ListViewColumnHeader">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ListViewControlArea">
          <states>
            <state name="Normal" borderColor="Gainsboro" />
          </states>
        </style>
        <style role="ListViewGroupHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>listViewGroupHeaderAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MainMenubarHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MaskPromptChar">
          <states>
            <state name="Normal" borderColor="Silver" />
          </states>
        </style>
        <style role="MenuItemAddRemoveTool">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="ProgressBarFill">
          <states>
            <state name="Normal">
              <resources>
                <name>progressBarFillAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleAppointment">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleCurrentDayHeader">
          <states>
            <state name="Normal" backColor="83, 166, 0" backColor2="79, 118, 0" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="ScheduleDay">
          <states>
            <state name="Normal" backColor="White" foreColor="DimGray" borderColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="DarkGreen" foreColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleDayHeader">
          <states>
            <state name="Normal" backColor="82, 153, 0" foreColor="White" fontBold="True" backColor2="164, 201, 52" backGradientStyle="Vertical" />
            <state name="Selected" backColor="0, 96, 0" foreColor="White" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
            <state name="Active" imageBackgroundStyle="Stretched" />
          </states>
        </style>
        <style role="ScheduleDayOfWeekHeader">
          <states>
            <state name="Normal" backColor="White" foreColor="48, 96, 0" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleMonthHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleOwner">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" />
          </states>
        </style>
        <style role="ScheduleOwnerHeader">
          <states>
            <state name="Normal" imageBackgroundStretchMargins="3, 3, 5, 3">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleWeekHeader">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarArrowUp">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" />
            <state name="Pressed" backColor="Transparent" backGradientStyle="None" />
          </states>
        </style>
        <style role="ScrollBarHorizontal">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="11, 0, 12, 0" />
          </states>
        </style>
        <style role="ScrollBarThumbHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarThumbHorizontalAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbHorizontalAppletini_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarThumbHorizontalAppletini_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarThumbVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarThumbVerticalAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbVerticalAppletini_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarThumbVerticalAppletini_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarTrackHorizontalAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackSectionBottom">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 0, 0, 8" />
          </states>
        </style>
        <style role="ScrollBarTrackSectionTop">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 7, 0, 0" />
          </states>
        </style>
        <style role="ScrollBarTrackVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarTrackVerticalAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarVertical">
          <states>
            <state name="Normal" backColor="White" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 12, 0, 12" />
          </states>
        </style>
        <style role="SpinButtonUp">
          <states>
            <state name="Normal" foreColor="White" />
          </states>
        </style>
        <style role="SpinButtonUpMinValue">
          <states>
            <state name="Normal" foreColor="White" />
          </states>
        </style>
        <style role="StatusBarPanel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarProgressBar">
          <states>
            <state name="Normal">
              <resources>
                <name>ultraProgressBarAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlClientArea">
          <states>
            <state name="Normal" borderColor="107, 168, 18" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 16, 0, 0" />
          </states>
        </style>
        <style role="TabControlClientAreaHorizontal">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabControlTabItemAreaHorizontalTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabControlTabsAreaHorizontalTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlTabsAreaVerticalRight">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabItemHorizontalBottom" buttonStyle="FlatBorderless">
          <states>
            <state name="Normal" imageBackgroundStretchMargins="9, 0, 12, 11">
              <resources>
                <name>tabItemHorizontalBottomAppletini_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalBottomAppletini_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemHorizontalTop">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalTopAppletini_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalTopAppletini_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalLeft">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemVerticalLeftAppletini_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalLeftAppletini_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalRight">
          <states>
            <state name="Normal" imageBackgroundStretchMargins="0, 9, 16, 9">
              <resources>
                <name>tabItemVerticalRightAppletini_Normal</name>
              </resources>
            </state>
            <state name="Selected" imageBackgroundStretchMargins="0, 8, 10, 12">
              <resources>
                <name>tabtemVerticalRightAppletini_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TaskPaneToolbar">
          <states>
            <state name="Normal">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TaskPaneToolbarMenu">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarBase">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarCloseButton">
          <states>
            <state name="Normal" foreColor="DimGray" fontBold="True">
              <resources>
                <name>buttonAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarDockAreaFloating">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="ToolbarDockAreaTop">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarFloatingCaption">
          <states>
            <state name="Normal">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarGrabHandle">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItem">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemButton">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>backgroundAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemFontList">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemLabel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemMaskedEdit">
          <states>
            <state name="HotTracked">
              <resources>
                <name>backgroundAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupColorPicker">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>backgroundAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupControlContainer">
          <states>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>backgroundAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupMenu">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>backgroundAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemQuickCustomize">
          <states>
            <state name="Normal" foreColor="Black">
              <resources>
                <name>buttonAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonAppletini_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 4, 4, 4">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAegEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA40lEQVQ4T7WVMQuDMBBG7R9s+zPd1U3BRRAlRRBBEERwlBCnKrTlay6tKXSrvQhvvMcRzMsBgOfkC8PQ05w1F81Dc9PcdyL03Imcm/Tati2klJjneRfTNKFpGmipIrmXJAmEEBiGgYWiKBDHMWhjVFWFuq5ZIBc5jbgsS1asOM9zcGLFWZaBE/cb+74PTuzGQRCAEyumf5kT92fMdTk2j9246zpwYsRRFJlGjOPIQt/3ryudpqmp0t6qfc9RK8hJrThqJMmVUliWBeu6/gzN0hm/O34i8SanSFPo/+ETenqaXPAEvtFyAQWxeMIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
              <resources>
                <name>buttonAppletini_Pressed</name>
              </resources>
            </state>
            <state name="Active" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarItemStateButton">
          <states>
            <state name="HotTracked">
              <resources>
                <name>backgroundAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneLabel">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="53, 106, 0" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneMenuDropDownOnly">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonAppletini_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonAppletini_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigationBack">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>buttonAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigationForward">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonAppletini_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTextBox">
          <states>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>backgroundAppletini_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TreeColumnHeader">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TreeControlArea">
          <states>
            <state name="Normal" borderColor="Gainsboro" />
          </states>
        </style>
        <style role="UltraCalculator">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundAppletini</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraCalculatorButton">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="DimGray" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" foreColor="White" />
            <state name="Pressed" foreColor="DimGray" />
          </states>
        </style>
        <style role="UltraCalculatorButtonAction">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraCalculatorButtonImmediateAction">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraCalculatorButtonOperator">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraCalculatorButtonPendingCalculations">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraGroupBox">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraGroupBoxContentArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraGroupBoxHeaderHorizontalTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraProgressBar">
          <states>
            <state name="Normal">
              <resources>
                <name>ultraProgressBarAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraStatusBar">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraTextEditor">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="UnpinnedTabAreaBottom">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabAreaLeft">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabAreaRight">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabAreaTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>headerAppletini_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalBottom">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalTop">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemVerticalLeft">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemVerticalRight">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>tabItemVerticalRightAppletini_Normal</name>
              </resources>
            </state>
            <state name="Selected" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>tabtemVerticalRightAppletini_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="WeekViewControlArea">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
      </styles>
      <sharedObjects>
        <sharedObject name="ScrollBar">
          <properties>
            <property name="MinimumThumbExtent">20</property>
            <property name="MinimumThumbHeight">25</property>
            <property name="MinimumThumbWidth">25</property>
          </properties>
        </sharedObject>
      </sharedObjects>
    </styleSet>
  </styleSets>
  <resources>
    <resource name="backgroundAppletini" backColor="White" borderColor="LightGray" backColor2="Gainsboro" backGradientStyle="Vertical" />
    <resource name="backgroundAppletini_HotTracked" backColor="179, 210, 3" foreColor="53, 106, 0" borderColor="Transparent" backColor2="White" backGradientStyle="Vertical" />
    <resource name="buttonAppletini_HotTracked" foreColor="Gray" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 4, 5, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAegEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA40lEQVQ4T7WVMQuDMBBG7R9s+zPd1U3BRRAlRRBBEERwlBCnKrTlay6tKXSrvQhvvMcRzMsBgOfkC8PQ05w1F81Dc9PcdyL03Imcm/Tati2klJjneRfTNKFpGmipIrmXJAmEEBiGgYWiKBDHMWhjVFWFuq5ZIBc5jbgsS1asOM9zcGLFWZaBE/cb+74PTuzGQRCAEyumf5kT92fMdTk2j9246zpwYsRRFJlGjOPIQt/3ryudpqmp0t6qfc9RK8hJrThqJMmVUliWBeu6/gzN0hm/O34i8SanSFPo/+ETenqaXPAEvtFyAQWxeMIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="buttonAppletini_Normal" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="4, 4, 5, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAgwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA7ElEQVQ4T7WVy2qEQBBFnR+cmY/VnQiCWyP4whe4EhUcAipxEeWm7wz2QHYxZcNZ1uFSULcvAIxTnmmahuKu+FBsim/FehBfzd3o3KVfVVVhnmcsy3KIcRyR5zmU9JNyw3EchGGIvu9FCIIAdBqWZaEsS9R1LUJRFEwNrgJZlomixWmaQhItjuMYkpyf2LZtSKITe54HSbTY931Icu6OeSBSx7F7nokpbppGFC3uug7DMIjQtu3rpF3XfbbS0Vb7PRdFEehkV1wVD/YFa3NdV2zb9memaUKSJEzLLr9RvMtZ0iz6//Auen5NZ/ADPUqe7N+duZ4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="buttonAppletini_Pressed" backColor="Transparent" foreColor="DarkGreen" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="6, 5, 6, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAApAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABDUlEQVQ4T7XVTU7CYBDG8XJB4S5ewSN4ATdsXDIkuLApJLohLZQiFfxIMHwT8E1LCATM4wykdePGOm3yW/afSft2WgBg5XIRkcVKzGNf7MCOGbl8X1GaSXTbf+vAbEeI95NM1psP9AYtcPRT4pbt3MEPG5hGrgovqEOaFlUJL7Ma3lc6+tOaTH0OPy9uVaXhp3kZmtJwMLuBppwnpgruXy9VETf55VXwOLxSJc3TqXDH16pyfsY8sdbHkXROE1c5PDIPqtLwxLSw2Pgqxmvv/Ek7DRvhoJ1po/22Cf1uE07d5lNBdMFWvTCAiZfYHSLsj/GfmWiJoNuWaWWXFyWcxGVJy6L/j59FL7+mPHwDIg1+VNF1PF4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="explorerBarGroupHeaderAppletini_Active" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
    <resource name="explorerBarGroupHeaderAppletini_HotTracked" backColor="Transparent" imageBackgroundStyle="Stretched" borderAlpha="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="4, 0, 4, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAbwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJgAAABYIBgAAAKxH7gMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA2ElEQVRIS+3VTwqCQBzF8fFoXqGWHabMI3gEa+nGI0i7WoTYIiJKBOmP0RQVFcHUk1+rWUWbt3Dgi7zdhxHUMZ/THjqK6UQdoxRgrUH9oDhfC0Qa4/m6UyQwDViOcX2cKBJYDliKoW87igSWApZgVJeCIoElgMUY2/OCIoHFgIUYpc4oElgIWIBRHCcUCSwAzMfIDyOKBOYD5mLMypAigbmAKYzx2qdIYPUvqYZNiz5FFiwrPcOQBZtvPMOQBVvue4YhC7aquoahBvbrW2hu7O8bwxWyhI/+G7dUbbQMrq9NAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="explorerBarGroupHeaderAppletini_Normal" backColor="Transparent" foreColor="53, 106, 0" borderColor="Transparent" imageBackgroundStyle="Stretched" borderAlpha="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="4, 2, 4, 2">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAdAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJgAAABYIBgAAAKxH7gMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA3UlEQVRIS+3VIQvCUBiF4TsU8W+tmTX6c5bMKxplCiJaZjBYZAiuzDBBYQiyoUEEmWgxXT3jM90klhN24WWc9nAHm6U/pzW0FNOZtrVSgDUHxYPifC0Q5RjP150igeWApRjXx4kigaWAxRjZbUeRwGLAAozksqZIYAFgPsb2PKdIYD5gHkaUjSgSmAeYixEeexQJzAXMwVgdOhQJzAHMxphsGhQJzAZMYXSDOkUCK35JBawf1igyYOOoqhkyYLO4ohkyYIu9pRkyYMtEaYZK2K9vobyxv28MV8gSPvpvPCoiadtzl28AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="gridRowAppletini_Active" backColor="Transparent" foreColor="53, 106, 0" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" imageBackgroundStretchMargins="3, 3, 3, 3">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABYIBgAAAKiyPj4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAd0lEQVRIS+3RWwqCUACE4XH/u1EX0R58EcKw0MPJvGYx6gp6/QMHvvdhJvEekXIUIkWf72oSLetkEo3vziTq52ASddPdJIpjZRKFoTSJ2qEwiW7xYhKVbW4SXUNuElUxM4nqZ2YSPV6pSdT0qUnOQr/eOBf6u4U2JXbkQIW6lM4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="headerAppletini_Normal" foreColor="53, 106, 0" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="1, 2, 2, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAHgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABYIBgAAAKiyPj4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAh0lEQVRIS+3UsQqCABjE8ZNCerRerTeosS3ErcGhJSLIRYcCAxECqSECIXRpOvEJWv+CB7/94w6+4FytLFIMi7rf1yT6tE+TqG4Kk6h8X0yi2ysxibJ6ZxKlj41JNDxGEsX50iRanxYm0TYNTaIom5tE++vMJDrcA5PoWMok00H/1pgaGl1DPQHn09I9p60oAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="listViewGroupHeaderAppletini_Normal" backColor="123, 158, 1" foreColor="White" borderColor="Transparent" fontBold="True" backColor2="White" backGradientStyle="Horizontal" />
    <resource name="progressBarFillAppletini_Normal" foreColor="White" imageBackgroundStyle="Stretched">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAHQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIgAAABUIBgAAACM4PNcAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAhklEQVRIS+3RsQnCUACE4YskBHdzBZdwCBewSmEriIhWwUaSRhsVHkSCiHYJROxc4LR2gr/Iwdcfd1H3aS1CXr8iBHq8KxMoNKUJdHyuTaD9LTOB8uvUBNqGiQm0uoxNoOV5ZALNiqEJND+kJtDilJhAmxCbQLt6YAKVd5mgL/L/Qr8IdpEvsUeMu20h0LYAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalAppletini_HotTracked" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="5, 3, 7, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAqQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABEklEQVQ4T7WVQY9DUBSF3/z/v6MbtFQ3FkgTKwu0kaggw4IIFmd63mRkklmZ3r7kS2zuh+ve4wOAessxDEORMAy74/GI5zUOh8NuWEvHj09LXdfF+XzG4/HAuq7Pl9h3WFOWpXbQRaeKogie52GaJizL8hJ0nE4n0Kls28b9fsc4jiJkWQY6FfvZti26rhOhaRr9fbS4rmtRNnFRFJBEizle7IskdGrx5XIRZRNz/iTZxL7vQ5JNfL1eIckmTpIEkmgxRyPPc719EqRp+r0gpmnqp62qSoQ4jkGnCoIAjDyudd/3L8F1potOHZuO44CwJcMwYJ7nXbDmdrvBsizt0bH5K+g/ebf/hDxr/gQ9f03v4AtHiK85UrGUJQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalAppletini_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 2, 7, 3">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAngEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABB0lEQVQ4T7WVQYtFUBiGzf//O2y4DPZuFqJkQUIWKHKJxTveU9fMNCtzv6ueYvE95Tjn8QFAe8ul67pGgiD4NE0Txz0Mw7gMZ+l4+pTUdd2H53lomgb7vh8vce3iTF3XoIMuOrUkSeD7PtZ1VdJXoMNxHNCp2baNsiyxLIsIeZ6DTo3rOQwDxnEUoe979X2UmA+SnOK2bSHJKa6qCpIoMfdtGIai0KnE9/tdlFMcRREkOcVpmkISJeZCF0Uhyq9dwU5IwFOsxLfbDVmWoes6EeI4Bp0qQgwHT940TS9BBzuhIvTM5pE7MCDzPGPbtktwhrOWZX1n80foHcb6P5HnzJ/Q89f0Dr4AOsDEpS005nsAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalAppletini_Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="5, 3, 7, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAqQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABEklEQVQ4T7WVQY9DUBSF3/z/v6MbtFQ3FkgTKwu0kaggw4IIFmd63mRkklmZ3r7kS2zuh+ve4wOAessxDEORMAy74/GI5zUOh8NuWEvHj09LXdfF+XzG4/HAuq7Pl9h3WFOWpXbQRaeKogie52GaJizL8hJ0nE4n0Kls28b9fsc4jiJkWQY6FfvZti26rhOhaRr9fbS4rmtRNnFRFJBEizle7IskdGrx5XIRZRNz/iTZxL7vQ5JNfL1eIckmTpIEkmgxRyPPc719EqRp+r0gpmnqp62qSoQ4jkGnCoIAjDyudd/3L8F1potOHZuO44CwJcMwYJ7nXbDmdrvBsizt0bH5K+g/ebf/hDxr/gQ9f03v4AtHiK85UrGUJQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalAppletini_HotTracked" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 7, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABYIBgAAAMBBvAYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABMElEQVQ4T+2VP4uDQBDF1846pV/Jr6uN+DeNjRgRQVQiKgYRRJAEQZt3zoJC8O5C5LrLwgi7OD/XYeY9AQBTVZXRkiQJXdexeZ75/rslCMJ2LIoiO51O7Ha78UNZlhkjoKIozLIsOI6DJElwvV6RpiniOEYYhnBdF0EQ8H1RFGjbFn3fo6oq2LYNyiUGsfjD87z+fD5jHEc0TYM8z18Ch2HANE08xzRNEGMD6rqOuq75C+8CKacsSxBjAy415F86Cnw8HiDGE5BgR4GU9wGqvH6fGv46euukrKX6722zSM/ftg0BacCP9uFOHEh6SIKOAkmQn+SLxNEwDH7Ld/Xwfr/vBXa1AJLyKIqQZdlLxV68h9sB3WxnAQSk8H0fmqaRP/wY1MBr0F9dLhfuJ6unfAFiO8pPdzuykgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalAppletini_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 7, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAwQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABYIBgAAAMBBvAYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABKklEQVQ4T+2VTWqEQBCF26V3cOdxvK5uBOPf2rXiRkXUQdyIGlSEF1+DQ8xAhpHsMg0tVNv1dVltvVIACMuyBIeu66jrWszzLO1jcI+iKKc1GqqqCk3TRJqm8qVhGEJws2mawvO8zyAIkOc5brcbmqZBVVUoigJJkiDLMml3XYdhGDBNEw+H7/ugLxlkyUcURR9hGGLbNvR9j7ZtnwKXZdldIX1c1wUZd6Bt2zIqjleB9GHkZNyBew7lSVeB67qCjBNQ0i5GSL83UCb0ncPfS++olCNV//232aXnb38bAlngV2uZF3S6FEoPJegqkCJ8ki+K4z7Ak17VQ/o8COzRAnYpx94fpLQ/awHjOKIsSziO89gCCOSM41huYD6+T+b45xptfhUDOPwpsF8/B/OSrrjKcQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalAppletini_Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 7, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABYIBgAAAMBBvAYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABMElEQVQ4T+2VP4uDQBDF1846pV/Jr6uN+DeNjRgRQVQiKgYRRJAEQZt3zoJC8O5C5LrLwgi7OD/XYeY9AQBTVZXRkiQJXdexeZ75/rslCMJ2LIoiO51O7Ha78UNZlhkjoKIozLIsOI6DJElwvV6RpiniOEYYhnBdF0EQ8H1RFGjbFn3fo6oq2LYNyiUGsfjD87z+fD5jHEc0TYM8z18Ch2HANE08xzRNEGMD6rqOuq75C+8CKacsSxBjAy415F86Cnw8HiDGE5BgR4GU9wGqvH6fGv46euukrKX6722zSM/ftg0BacCP9uFOHEh6SIKOAkmQn+SLxNEwDH7Ld/Xwfr/vBXa1AJLyKIqQZdlLxV68h9sB3WxnAQSk8H0fmqaRP/wY1MBr0F9dLhfuJ6unfAFiO8pPdzuykgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarTrackHorizontalAppletini_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 0, 8, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAiAIAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAAA8IBgAAAIxrbW0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAB8UlEQVRIS8WVVa7DQAxF/Uoflbr/NZWZmZkZ3Rw/dQdTNZIVNckkx/deT//UOw6Hg6zXa3m9XhIKhSQYDEogEBC/3y8+n09cH94n5fl8Wj0eD+F3JBKRcDgsst/vNZ/Pa7Va1V6vp5PJRFerle52Oz0ej3o+n53X6XRSvrvZbHQ2m+lgMNBms4kwKo1GQzOZjNZqNR0Oh7pYLAyGRdfrVb0OnNf9ftfL5WIAND8ajQyo1WqpFAoFzWazChg3lsul0bOAhZ6s6lnptHgnzeKAFxVzBZhisaiSTqdNoXq9/hOFABqPx6aQAaVSKQUKy/AST/EWOVHpdrs5L9QhEkQDR3AGh3BLksmkAkWo+/2+TqdT8xXbWASU62JQaJjGySxC4BDDJYlEQoH61ZTN53MDwqFcLqcSj8cNqFwua7fbNT+hhh6VCJ7rQp3tdmtO4AjbDYIwXAaESgB1Oh0LNtQ8zCKgXBfZ+djFhAFUqVT+gWKxmAJVKpVs9JAPasLGBADluoChYRrHEYRAEKbdMgQUCSfp0PLQRyWgXBcwxILGEQAhEIRpF2Y/Go2aXAQLWh5CSrYAwFwX7wWGcSe3TBgcQAl2AAQdF7gJFFsAYGTqG8X7gWFDJNCMPFbyT2sZ4SKUnHkIKOz7VgHTbrctJpwJOscbkpGKu7plDhQAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="scrollBarTrackVerticalAppletini_Normal" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 12, 0, 13">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAYgIAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAACQIBgAAAFa9YL8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABy0lEQVRIS+2WN47DQAxFuZVL977/aZxzzjnnnLh6XIwhC9tst4UFECPTM1/kjPWfv9S7DoeDTKdTOZ1OwuWl3sKfC4VCEolEJBwOi+z3ey0WixalUsnGQqGg+Xxec7mcRTab1Uwmo+l0WlOplCYSCV2v1yr9fl8bjYa2Wi3tdDrabrftvtlsWr5er1tUq1WtVComjnCtVvtZPBgMdDwe62QyseB+OBxa8H2v19Nut2vCCCJSLpdVmDybzXS1WlkpjIvFQufzueWd2Gg0socgQlVUI0xkEb17G2fjdru1HLFcLt+EqIb2aE2YsNvt9Hw+6+VysfF4PJoI+c1m8yZCJbSBgDCBybfbTR+Ph42IeMf2EnGVUIV3pK/y7aiYeL/f9fl82ni9Xq0C8rTiKmA/2AfX+2fxZ8M+PxLv1fy8GF39J2aAAf7Jw3BGTA7HdM7p7Ddofs49oQjmLxw8Athv0LP9lgsccE5QhG+DHiGBIhOxWP+CIC1ADk91zBLwQRIR+ERg7EFGuVLBDIQEdsJClOjBT8TfcMsi6AhmgZ2ds2MvaoQf8oDeAR7IA3iC9vj7YL2CTKAN+ZPJpNE/Ho9rLBaziEaj9hkx4Mf1DYgT4re6ZypXAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemHorizontalBottomAppletini_Normal" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="7, 0, 8, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAcAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA2UlEQVRIS+3SSwuCUBAF4On//yBTCIqKHkjRg2xRppUVhWlhis9TN6igjatyFg58ct3o4dypNBcKiNOIQJwQpzDP2yoD5axI2VDeipQN5TbUeiwZJ9ReKuCEOroCTqi3ksEJ9Q0ZnJBqyuCEBusqOKHhpgpOaLSVwIW2b4DmhzomlsSCYQ9AO3cGbV9jwfV3oDgNYdgq9FO3UFtnDDEkHkF0geVMCyNuKUmjTyBxipIAtmfi5K3+yvEtpFn8DPNu6PWSIUOY+PAjF7fwjGtw/AnxbfEPUcL33AFlPyHTQo3LFwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemHorizontalBottomAppletini_Selected">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAqwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABFElEQVRIS83Uy0qCURQF4GXRja70CD1Gg16insNJgy6DJkEgQU1yEhQOKggRNCIhi7/AsLCCQkh/kj8ySrCL2s20WnUC7QnKteE77D3ZZ3EGx7Vjg1AqKwUqwVbSRSUIJxqoBKGTRiqB/7iJSrASb6YS+GItVIL5aCuVwLvbRiWY3W6nEng2O6gEk+FOKsHEeheVYCzYTSUYDvRQCdyrvVSC8VAfVUxHBoiFvcHvf6hfwtrpKBFz5rgcH5KQvrWI1/IdLXuEkaS7rvYdD03BHPfPNg8upurm8HKGpUr+N5Dpnt5ueJZdYuJ68V+d54Isvz/+hKm9UHX4+Kww/+IwWzhi5iHKdG7jT5jd5o5i6aoWpNp8AQ05UwrhH8PcAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemHorizontalTopAppletini_Normal" backColor="White" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="5, 7, 6, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAeAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA4UlEQVRIS+3SXWvCMBgF4JP5/39PbUEQNtkUUcSxDeZXtX6QopWqzM42Z6kg8643Y30v+sIDIYFwOImiHdyNYQrDDPk2Ye6P/myt8ACllFVDzQLU7915oHwyk/KU7Bh/6X91OIdMs+9bDNuCndRcuD36DI/T0iSX0zXUNZCOP7mMXku12r/ZphIiPmtOwhcR9GFMBNGA7+uGCCPdIj42TQ6XjhgYBA4lQX9RpyTozeuUBF3fpSTozFxKgvbUpSR4nniUBK2xR0nwNPIoCR5tIEmqQEWvUTVUNVTUQNG5uD/0AzAPKq8YrhVSAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemHorizontalTopAppletini_Selected">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAsgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABG0lEQVRIS83UzUoCYRgF4DNOMzVkP9QddBndRt1EGzetatEmCGqRqzaB0SKDiEAhEjIJwQgxgsrIiOgPpqA/KXBiRjk5QuQFRJ4DD7zwwcdZvLwGm0FbvOANX0EVDfoIGl7705/NlunANGzYXVE41jAihvn7d1goTFCv8eG9wOvnnX9185JlzX/9qUGEk1//5MXTGsvuSsd8eHetUq1CZ26Cxdu5jjq6X2RzVQi3WmS2EpNw/pgk8lcLTJbGJaROJ4jEwRjjuVEZmE6PUAliG0NUgsmtQSrBVGqASjCz3U8lmM30UQnmd6NUgniut3mDdGAp71AJlgs9VILVw24qwXrJphJsHltUgvSJSSXIlCNUgr2KQSXYvwSVfANNkVkwfFo2oAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeftAppletini_Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="9, 9, 0, 9">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAkgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA+0lEQVRIS+1XyQrCMBCN//9B2oInFRdEEUUP7loXWlyI1m5Jng0uBw/tQQcvGQiTkOWFx2TypoDU2NOkitnx5jAe7FmQcKbSGYUC0yu01+PP/nvz65BPrwG0RYmP7XmImdfAaFdGf1NEzymiuy6hsyqhvbTQWlhozi3UZzZqUxvViY1KTktvBAgZw7vOsTkNKAAULqFHByBUAh64dACJDGkBInGjBvANQOZbYJEwFGWnC0NRfjY1UZT74RiKDEXfyxYTRf+PolgEtKqCXHhJaumo1bUfHem0qQZQSuJwXVLJ90cBoqly+ZiiPnjVOA/PQxfOqYexW/1JhXMH2FJ3z5YOtsoAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeftAppletini_Selected" foreColor="White" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="8, 5, 0, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA2AEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABQUlEQVRIS2P8DwQMUPDzz0eGO2+2MNx5fZTh/uuLDK+/vGD48uMDAyvLPwY25v9AGoiBNIgNxkBxOB8uh1DLzAg0GmQBCHz6/vD/mUd9/3ffyPu/9HTI//69Vv+rNir9z1sp9L94rcD/yg38/+u28P1v3s77v3MXD1Ce+//Ug5z/Zx3h+L/gOPv/ZafZ/q8+x/p/40Xm/9uvMP3fc4Px//6bDP/BFnz79fb/lWfz/p980EZ9C/7++/P//pvdtLPgy89X/+++3kY7C959vUtbC158ukhbC559PDdqAf58MBpEBIuK0SAaDSLKK5zRVDSaikZT0X+GoZ8PXn6+QttWBc0bXqCGL02bjqDW9eP3R2jXNgVZ8Pvvt//XXyyhTfMd1gH59efz/8vP5lK/fwCzAEY/+3Dy/8HbXf+XnIynSg8HAIyZslhv2WErAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemVerticalRightAppletini_Normal" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="0, 7, 8, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAowEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABDElEQVRIS+2Xa2vCMBSG0yEbLYL7qP//R9gWBGGKF2RjU9QP3jrtJpZS3UpvVl+bwsChWAQP+CEJCYGEPOQk5+Q90stIB8soUjIvJd1D2nAyVh7z7CmnsGe5yApy6f9uHJDVasma+lhHY6KjNdXQnmnoGBpeP1W8zVW8L8rommUMvitYOB+IdyH+CsvanM9fA5hYTXyt+4j325RBAjCdHhzPpAVY7hRR7NOdgAO8aE0LcAObFvDjrwTg1NG4H/Bnyi9ZmOhsLBImygzXwkTCROcFwLV/sohFF3WRcLT7crTfwKJVFeTCK4w9uhPYroF9UsnUNRe+JPJ9ZnfgR5vbJyDDZTVNPLZH2Q2nHAAzgkjY21N3xAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabtemVerticalRightAppletini_Selected" borderColor="Transparent">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA1QEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABPklEQVRIS2M8cIvh////DAx//zMy/P7DyPDrLwgzMfwG0VA+hM0ElQOqA/Jhan8DxVXFrRjkBbUZtKU8GJREHBhQAMiC/TcZ/u+5wfh/+xWm/xsvMv9ffY71/7LTbP8XHGf/P+sIx/+pBzn/9+/l/t+5i+d/83be/3Vb+P5XbuD/X7xW4H/eSqH/VRuVgPJW/5eeDvl/4n7n/x+/PwAdDQEM1LZg9428/2ce9f3/9ecz7Sw4+aDt/53XG2hrwZVn8/5/+vGENkEE8gHIghcfz9LWgofv9tPWgruvt41agJnRQPkAFsmjQYS1LBoNIoLF9WgQjQYR5ZX+aCoaTUVDLBXdf7Obtq0Kmje8Pny7TzsfXH+x5P/ff79pZ8GXn89p07ref6v8/7uvt6jfAZl7NPj/8ftT/n//9RZuOIgBAIHhkDbsCurpAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="ultraProgressBarAppletini_Normal" borderColor="Silver" imageBackgroundStyle="Stretched">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABYIBgAAAKiyPj4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAd0lEQVRIS+3RWwqCUACE4XH/u1EX0R58EcKw0MPJvGYx6gp6/QMHvvdhJvEekXIUIkWf72oSLetkEo3vziTq52ASddPdJIpjZRKFoTSJ2qEwiW7xYhKVbW4SXUNuElUxM4nqZ2YSPV6pSdT0qUnOQr/eOBf6u4U2JXbkQIW6lM4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
  </resources>
</styleLibrary>