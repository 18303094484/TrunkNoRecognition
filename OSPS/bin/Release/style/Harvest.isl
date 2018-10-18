<?xml version="1.0" encoding="utf-8"?>
<styleLibrary>
  <styleSets defaultStyleSet="Default">
    <styleSet name="Default" useOsThemes="False" useFlatMode="True">
      <componentStyles>
        <componentStyle name="Inbox Form">
          <properties>
            <property name="BackColor">White</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox Panel">
          <properties>
            <property name="BackColor">White</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraCalculator" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="ImageTransparentColor">Transparent</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraDockManager">
          <properties>
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
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>buttonHarvest_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonHarvest_Pressed</name>
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
            <state name="Normal" backColor="WhiteSmoke" backGradientStyle="None" backHatchStyle="None" />
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
            <state name="Normal" backColor="LightGray" borderColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected">
              <resources>
                <name>sharedSilver_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockControlPaneContentArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockFloatingWindowCaptionHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>headerHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockPaneCaptionHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>headerHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockSlidingGroupHeaderHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>headerHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockSlidingGroupHeaderVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest_hover</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DropDownControlArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="EditorControl">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarControlArea">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarGroupHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>explorerBarGroupHeaderHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>explorerBarGroupHeaderHarvest_HotTracked</name>
              </resources>
            </state>
            <state name="Active">
              <resources>
                <name>explorerBarGroupHeaderHarvest_Active</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaInner">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="2, 1, 2, 2">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA+AAAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABkIBgAAAFnkjOsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAYUlEQVRIS+3XsQ2AMBBDUTMDNWIN1mJkFsEkGQC3Lj6SKzenh5ts97W/ks6Rhu/RPMi2GrJwOOjnbyCUdooQQkkg9WwIoSSQejaEUBJIPRtCKAmkvndD47KjJOvV4UlVEn9hOWjnDb3zZgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaOuter" borderStyle="None">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="ExplorerBarItem">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" fontUnderline="True" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="5, 2, 7, 4" />
          </states>
        </style>
        <style role="ExplorerBarNavigationOverflowButtonArea">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridBandHeader">
          <states>
            <state name="Normal" backColor="LightGray" foreColor="170, 78, 5" borderColor="Transparent" textHAlign="Left" imageBackgroundStyle="Stretched" fontBold="True" fontSize="12" backColor2="White" backGradientStyle="Vertical" imageBackgroundStretchMargins="2, 4, 2, 5" />
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
            <state name="Active" backColor="Transparent" foreColor="170, 78, 5" borderColor="Transparent" backGradientStyle="None" />
            <state name="EditMode" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="3, 6, 4, 6">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAcQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAQAAAABkIBgAAAIHoKOEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAAA2klEQVRYR+2YsQ2EMAxFfXTZg9WAFmoKGICGMcIMmQJRIAENDSMgEOLf+ZBOuhn8LblJ934S++u/2rZFFEUyz7Ps+y4WyjkncRzLfd8i3nvUdY1t22ClpmlCWZZQdsnzHOu6WmH/cY7jiKIoIGmamoNX4Ou6kGWZXQFUBArAF8AvwBlgdgtwCHILcA3SB9AI0QjRCNEI0QhZzQP+nOAnGzMXihzH8fgAjcQ0HrJWfd8/kVjXdaiqCsMw4DxPEzosywK9eGWXJEnQNM33QOeBhVZWZVZ2CSHAcr8BPNL8TCRyd9cAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
          </states>
        </style>
        <style role="GridColumnHeader">
          <states>
            <state name="Normal" textHAlign="Left" fontBold="True" fontSize="10" imageBackgroundStretchMargins="6, 3, 7, 7">
              <resources>
                <name>headerHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridControlArea">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBox">
          <states>
            <state name="Normal" backColor="Silver" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBoxPrompt">
          <states>
            <state name="Normal" backColor="Silver" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridHeader" borderStyle="None" />
        <style role="GridRow">
          <states>
            <state name="Normal" backColor="White" borderColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="WhiteSmoke" foreColor="DimGray" backGradientStyle="None" backHatchStyle="None" />
            <state name="Active">
              <resources>
                <name>sharedSilver_Selected</name>
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
                <name>backgroundHarvest</name>
              </resources>
            </state>
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
        <style role="ListViewColumnHeader">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundHarvest</name>
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
            <state name="Normal" backColor="170, 78, 5" foreColor="White" borderColor="Transparent" fontBold="True" backColor2="White" backGradientStyle="Horizontal" />
          </states>
        </style>
        <style role="MainMenubarHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
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
            <state name="Normal" foreColor="White" imageBackgroundStyle="Stretched">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAQQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIgAAABkIBgAAAFT6/KwAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAqklEQVRIS83OPwtBUQCG8dfA9eden8ooWZTBoJRFSYrCLaHkDjplMRktNnHOyWa0GW1Go9GkXvkW71O//Un5jSEU+o8ogDcJFcCvF1QAl0yoAG45oAK4eZcKYKdtKoCNm1QAO6pTAc7DKhXg1CtRAfbliApwqKSpAMdahgpwaQRUgGsroALcOlkqwL2fowI8xnkqwHNWoAK8ViEV4G1CKsBnG1EBvrsiFfwA5GDTatW2zeUAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="ScheduleAppointment">
          <states>
            <state name="Normal" backColor="White" foreColor="Sienna" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="White" foreColor="Sienna" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleCurrentDay">
          <states>
            <state name="Selected" backColor="170, 78, 5" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleCurrentDayHeader">
          <states>
            <state name="Normal" backColor="170, 78, 5" foreColor="White" borderColor="Transparent" backColor2="88, 41, 31" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="ScheduleDay">
          <states>
            <state name="Normal" foreColor="DimGray" borderColor="Gainsboro" />
            <state name="Selected" backColor="170, 78, 5" foreColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleDayHeader">
          <states>
            <state name="Normal" backColor="Gainsboro" foreColor="143, 63, 3" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="170, 78, 5" foreColor="White" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
            <state name="Active" imageBackgroundStyle="Stretched" />
          </states>
        </style>
        <style role="ScheduleDayOfWeekHeader">
          <states>
            <state name="Normal" backColor="White" foreColor="SaddleBrown" borderColor="Gainsboro" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleMonthHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>headerHarvest</name>
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
            <state name="Normal" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="3, 3, 5, 3">
              <resources>
                <name>headerHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleWeekHeader">
          <states>
            <state name="Normal" backColor="White" borderColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
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
                <name>scrollBarThumbHorizontalHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbHorizontalHarvest_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarThumbHorizontalHarvest_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarThumbVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarThumbVerticalHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbVerticalHarvest_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarThumbVerticalHarvest_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarTrackHorizontalHarvest_Normal</name>
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
                <name>scrollBarTrackVerticalHarvest_Normal</name>
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
        <style role="StatusBarAutoStatusTextPanel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarCursorPositionPanel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarDatePanel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarKeyStatePanel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarMarqueePanel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarProgressBar">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarTextPanel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlClientArea">
          <states>
            <state name="Normal" borderColor="162, 70, 4" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 16, 0, 0" />
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
        <style role="TabControlTabItemHorizontalTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabControlTabsAreaHorizontalTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlTabsAreaVerticalLeft">
          <states>
            <state name="Normal" backColor="WhiteSmoke" backGradientStyle="None" />
          </states>
        </style>
        <style role="TabControlTabsAreaVerticalRight">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabItemHorizontalBottom">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalBottomHarvest_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalBottomHarvest_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemHorizontalTop">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalTopHarvest_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalTopHarvest_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalLeft">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemVerticalLeftHarvest_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalLeftHarvest_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalRight">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemVerticalRightHarvest_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalRightHarvest_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TaskPaneToolbar">
          <states>
            <state name="Normal">
              <resources>
                <name>headerHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TaskPaneToolbarMenu">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarCloseButton">
          <states>
            <state name="Normal" foreColor="DimGray" fontBold="True">
              <resources>
                <name>buttonHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonHarvest_HotTracked</name>
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
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarFloatingCaption">
          <states>
            <state name="Normal">
              <resources>
                <name>headerHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarGrabHandle">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItem">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemButton">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>backgroundHarvest_hover</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemFontList">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemLabel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemMaskedEdit">
          <states>
            <state name="HotTracked">
              <resources>
                <name>backgroundHarvest_hover</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupColorPicker">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>backgroundHarvest_hover</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupControlContainer">
          <states>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>backgroundHarvest_hover</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupMenu">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundHarvest</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>backgroundHarvest_hover</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemQuickCustomize">
          <states>
            <state name="Normal" foreColor="Black">
              <resources>
                <name>buttonHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonHarvest_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 4, 4, 4">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAegEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA40lEQVQ4T7WVMQuDMBBG7R9s+zPd1U3BRRAlRRBBEERwlBCnKrTlay6tKXSrvQhvvMcRzMsBgOfkC8PQ05w1F81Dc9PcdyL03Imcm/Tati2klJjneRfTNKFpGmipIrmXJAmEEBiGgYWiKBDHMWhjVFWFuq5ZIBc5jbgsS1asOM9zcGLFWZaBE/cb+74PTuzGQRCAEyumf5kT92fMdTk2j9246zpwYsRRFJlGjOPIQt/3ryudpqmp0t6qfc9RK8hJrThqJMmVUliWBeu6/gzN0hm/O34i8SanSFPo/+ETenqaXPAEvtFyAQWxeMIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="Active" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarItemStateButton">
          <states>
            <state name="HotTracked" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneLabel">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneMenuDropDownOnly">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonHarvest_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigationBack">
          <states>
            <state name="Normal" foreColor="White">
              <resources>
                <name>buttonHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>buttonHarvest_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonHarvest_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigationForward">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonHarvest_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>buttonHarvest_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonHarvest_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTextBox">
          <states>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>backgroundHarvest_hover</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TreeColumnHeader">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundHarvest</name>
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
                <name>backgroundHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraCalculatorButton">
          <states>
            <state name="Normal" foreColor="Sienna" fontBold="True" />
            <state name="HotTracked" foreColor="White" />
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
        <style role="UltraCalculatorButtonNumeric">
          <states>
            <state name="Normal" foreColor="Sienna" />
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
                <name>ultraProgressBarHarvest_Normal</name>
              </resources>
            </state>
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
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
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
                <name>headerHarvest</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalBottom">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalTop">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemVerticalLeft">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemVerticalRight">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
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
    <resource name="backgroundHarvest" backColor="White" borderColor="LightGray" backColor2="Gainsboro" backGradientStyle="Vertical" />
    <resource name="backgroundHarvest_hover" backColor="170, 78, 5" foreColor="White" borderColor="Transparent" backColor2="White" backGradientStyle="Vertical" />
    <resource name="buttonHarvest_HotTracked" foreColor="Gray" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 4, 5, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAegEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA40lEQVQ4T7WVMQuDMBBG7R9s+zPd1U3BRRAlRRBBEERwlBCnKrTlay6tKXSrvQhvvMcRzMsBgOfkC8PQ05w1F81Dc9PcdyL03Imcm/Tati2klJjneRfTNKFpGmipIrmXJAmEEBiGgYWiKBDHMWhjVFWFuq5ZIBc5jbgsS1asOM9zcGLFWZaBE/cb+74PTuzGQRCAEyumf5kT92fMdTk2j9246zpwYsRRFJlGjOPIQt/3ryudpqmp0t6qfc9RK8hJrThqJMmVUliWBeu6/gzN0hm/O34i8SanSFPo/+ETenqaXPAEvtFyAQWxeMIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="buttonHarvest_Normal" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="4, 4, 5, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAgwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA7ElEQVQ4T7WVy2qEQBBFnR+cmY/VnQiCWyP4whe4EhUcAipxEeWm7wz2QHYxZcNZ1uFSULcvAIxTnmmahuKu+FBsim/FehBfzd3o3KVfVVVhnmcsy3KIcRyR5zmU9JNyw3EchGGIvu9FCIIAdBqWZaEsS9R1LUJRFEwNrgJZlomixWmaQhItjuMYkpyf2LZtSKITe54HSbTY931Icu6OeSBSx7F7nokpbppGFC3uug7DMIjQtu3rpF3XfbbS0Vb7PRdFEehkV1wVD/YFa3NdV2zb9memaUKSJEzLLr9RvMtZ0iz6//Auen5NZ/ADPUqe7N+duZ4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="buttonHarvest_Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 4, 5, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAegEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA40lEQVQ4T7WVMQuDMBBG7R9s+zPd1U3BRRAlRRBBEERwlBCnKrTlay6tKXSrvQhvvMcRzMsBgOfkC8PQ05w1F81Dc9PcdyL03Imcm/Tati2klJjneRfTNKFpGmipIrmXJAmEEBiGgYWiKBDHMWhjVFWFuq5ZIBc5jbgsS1asOM9zcGLFWZaBE/cb+74PTuzGQRCAEyumf5kT92fMdTk2j9246zpwYsRRFJlGjOPIQt/3ryudpqmp0t6qfc9RK8hJrThqJMmVUliWBeu6/gzN0hm/O34i8SanSFPo/+ETenqaXPAEvtFyAQWxeMIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="explorerBarGroupHeaderHarvest_Active" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
    <resource name="explorerBarGroupHeaderHarvest_HotTracked" backColor="Transparent" borderAlpha="Transparent" backGradientStyle="None" backHatchStyle="None">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA5AEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABkIBgAAAFnkjOsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABTUlEQVRIS8XSPUvDUBTG8dvRQRD0G1gcRHBx0KlbFwU/gS6OTgoimMEiaJMG3ByEgBiR1pSE5mUQHIQOJQXre6kiDoKDg0NBQQfh8d5gFTmu9Rz4XbjT/XOSFAAhJzl2V+bEXaMq3l7a6tr16entE0NjGTG7bnXeSgkVJMGcyWB1chieqaHulXEaBV0VuyWUN5aQmxpJ3v4auRoZJDeDtelRxM4ezqLKv6od2NCyg1ANyddSh5ZNwzOWcR66LIq5eRmV/glanBjAiWvjInRYxCULquF7Q+pyGRZZkaCrYB+cSNB1YIMTCWr6O+BEglq+BU4k6KayDU50Q94WWozoP+RsosnojyBTBvEhQbduAZxI0L1fACcS9BAZ4ESCHg8NcCJBT0c6OJGg52MdnEhQu6qDEwl6rengRILe63lwIkEfjTw4/QpaGO8Ht07QJ/u0OORWfizwAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="explorerBarGroupHeaderHarvest_Normal" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" borderAlpha="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="9, 6, 12, 2">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAACAIAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABkIBgAAAFnkjOsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABcUlEQVRIS8XXMUgCURzH8QtykAY7z2qxhmoIoq1BIzIrhxBCghzUhrw8zc1rsEKIlrYyqO0SLCKiBInGoIaCoLGxMSIIonAICYNf7wldXW+2/4PvwbvlfYb357gmAJLudUl8OWT3ZfX9dbhWqzbXXzR42Wz2T3uL87ry9ujnR23evEgSB2U8ipSb6Hta9ndjKzoFI6WikNYampGMIx8JYmWsB/xsbuCW+mNtcuAiN96LghZDcWHuX9tNRJH1dYIbTFB2xF3bjgSwl4qSlA+PghtMELtD2E9M4yA5Q1JRDYEbLKDDZAiUCaAjLQjKBNBxIgDKBFBp3gfK/oAUlNUh0nSv8utSexScxgdJ05nhZ8rYpjzbT5oAOgl3gTIBVAp3gDIBdBZrB2VWELvh52obadYpY6CrtIs0AXSbUUCZALpbcoIyAXS/KoMyAfSwLoMyAfS8IYMyC2iRTVllp5U0bjC/ZXzzYThIs4DYLwio+wZ9AQC/3qO27/cmAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="header_hover" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="2, 3, 2, 2">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAANgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABkIBgAAAFnkjOsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAn0lEQVRIS+3SsQ6CMACEYRh8CV6dTTeepQ5EokQFYwgRhIAQnY/CcI5db2iTf+ry5drQGINA6SS7CEoFK+Y3TRKtlg30HUaJCJq7HgoR9Hk1UIigoaqhEEH94wmFCOruJRQi6J1foRBBbXaBQn9QmqEViKDmmEIhgk7xHgoRdLYghQjK4wMUIuhmQQoRVFiQQh7kegW/kF/ItYDrXvIPLehY4ueU+d+0AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="headerHarvest" foreColor="White" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="1, 2, 2, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAQQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIgAAABkIBgAAAFT6/KwAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAqklEQVRIS83OPwtBUQCG8dfA9eden8ooWZTBoJRFSYrCLaHkDjplMRktNnHOyWa0GW1Go9GkXvkW71O//Un5jSEU+o8ogDcJFcCvF1QAl0yoAG45oAK4eZcKYKdtKoCNm1QAO6pTAc7DKhXg1CtRAfbliApwqKSpAMdahgpwaQRUgGsroALcOlkqwL2fowI8xnkqwHNWoAK8ViEV4G1CKsBnG1EBvrsiFfwA5GDTatW2zeUAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalHarvest_HotTracked" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="5, 3, 7, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAqQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABEklEQVQ4T7WVQY9DUBSF3/z/v6MbtFQ3FkgTKwu0kaggw4IIFmd63mRkklmZ3r7kS2zuh+ve4wOAessxDEORMAy74/GI5zUOh8NuWEvHj09LXdfF+XzG4/HAuq7Pl9h3WFOWpXbQRaeKogie52GaJizL8hJ0nE4n0Kls28b9fsc4jiJkWQY6FfvZti26rhOhaRr9fbS4rmtRNnFRFJBEizle7IskdGrx5XIRZRNz/iTZxL7vQ5JNfL1eIckmTpIEkmgxRyPPc719EqRp+r0gpmnqp62qSoQ4jkGnCoIAjDyudd/3L8F1potOHZuO44CwJcMwYJ7nXbDmdrvBsizt0bH5K+g/ebf/hDxr/gQ9f03v4AtHiK85UrGUJQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalHarvest_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 2, 7, 3">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAngEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABB0lEQVQ4T7WVQYtFUBiGzf//O2y4DPZuFqJkQUIWKHKJxTveU9fMNCtzv6ueYvE95Tjn8QFAe8ul67pGgiD4NE0Txz0Mw7gMZ+l4+pTUdd2H53lomgb7vh8vce3iTF3XoIMuOrUkSeD7PtZ1VdJXoMNxHNCp2baNsiyxLIsIeZ6DTo3rOQwDxnEUoe979X2UmA+SnOK2bSHJKa6qCpIoMfdtGIai0KnE9/tdlFMcRREkOcVpmkISJeZCF0Uhyq9dwU5IwFOsxLfbDVmWoes6EeI4Bp0qQgwHT940TS9BBzuhIvTM5pE7MCDzPGPbtktwhrOWZX1n80foHcb6P5HnzJ/Q89f0Dr4AOsDEpS005nsAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalHarvest_Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="5, 3, 7, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAqQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABEklEQVQ4T7WVQY9DUBSF3/z/v6MbtFQ3FkgTKwu0kaggw4IIFmd63mRkklmZ3r7kS2zuh+ve4wOAessxDEORMAy74/GI5zUOh8NuWEvHj09LXdfF+XzG4/HAuq7Pl9h3WFOWpXbQRaeKogie52GaJizL8hJ0nE4n0Kls28b9fsc4jiJkWQY6FfvZti26rhOhaRr9fbS4rmtRNnFRFJBEizle7IskdGrx5XIRZRNz/iTZxL7vQ5JNfL1eIckmTpIEkmgxRyPPc719EqRp+r0gpmnqp62qSoQ4jkGnCoIAjDyudd/3L8F1potOHZuO44CwJcMwYJ7nXbDmdrvBsizt0bH5K+g/ebf/hDxr/gQ9f03v4AtHiK85UrGUJQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalHarvest_HotTracked" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 7, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABYIBgAAAMBBvAYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABMElEQVQ4T+2VP4uDQBDF1846pV/Jr6uN+DeNjRgRQVQiKgYRRJAEQZt3zoJC8O5C5LrLwgi7OD/XYeY9AQBTVZXRkiQJXdexeZ75/rslCMJ2LIoiO51O7Ha78UNZlhkjoKIozLIsOI6DJElwvV6RpiniOEYYhnBdF0EQ8H1RFGjbFn3fo6oq2LYNyiUGsfjD87z+fD5jHEc0TYM8z18Ch2HANE08xzRNEGMD6rqOuq75C+8CKacsSxBjAy415F86Cnw8HiDGE5BgR4GU9wGqvH6fGv46euukrKX6722zSM/ftg0BacCP9uFOHEh6SIKOAkmQn+SLxNEwDH7Ld/Xwfr/vBXa1AJLyKIqQZdlLxV68h9sB3WxnAQSk8H0fmqaRP/wY1MBr0F9dLhfuJ6unfAFiO8pPdzuykgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalHarvest_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 7, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAwQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABYIBgAAAMBBvAYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABKklEQVQ4T+2VTWqEQBCF26V3cOdxvK5uBOPf2rXiRkXUQdyIGlSEF1+DQ8xAhpHsMg0tVNv1dVltvVIACMuyBIeu66jrWszzLO1jcI+iKKc1GqqqCk3TRJqm8qVhGEJws2mawvO8zyAIkOc5brcbmqZBVVUoigJJkiDLMml3XYdhGDBNEw+H7/ugLxlkyUcURR9hGGLbNvR9j7ZtnwKXZdldIX1c1wUZd6Bt2zIqjleB9GHkZNyBew7lSVeB67qCjBNQ0i5GSL83UCb0ncPfS++olCNV//232aXnb38bAlngV2uZF3S6FEoPJegqkCJ8ki+K4z7Ak17VQ/o8COzRAnYpx94fpLQ/awHjOKIsSziO89gCCOSM41huYD6+T+b45xptfhUDOPwpsF8/B/OSrrjKcQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalHarvest_Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 7, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABYIBgAAAMBBvAYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABMElEQVQ4T+2VP4uDQBDF1846pV/Jr6uN+DeNjRgRQVQiKgYRRJAEQZt3zoJC8O5C5LrLwgi7OD/XYeY9AQBTVZXRkiQJXdexeZ75/rslCMJ2LIoiO51O7Ha78UNZlhkjoKIozLIsOI6DJElwvV6RpiniOEYYhnBdF0EQ8H1RFGjbFn3fo6oq2LYNyiUGsfjD87z+fD5jHEc0TYM8z18Ch2HANE08xzRNEGMD6rqOuq75C+8CKacsSxBjAy415F86Cnw8HiDGE5BgR4GU9wGqvH6fGv46euukrKX6722zSM/ftg0BacCP9uFOHEh6SIKOAkmQn+SLxNEwDH7Ld/Xwfr/vBXa1AJLyKIqQZdlLxV68h9sB3WxnAQSk8H0fmqaRP/wY1MBr0F9dLhfuJ6unfAFiO8pPdzuykgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarTrackHorizontalHarvest_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 0, 8, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAiAIAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAAA8IBgAAAIxrbW0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAB8UlEQVRIS8WVVa7DQAxF/Uoflbr/NZWZmZkZ3Rw/dQdTNZIVNckkx/deT//UOw6Hg6zXa3m9XhIKhSQYDEogEBC/3y8+n09cH94n5fl8Wj0eD+F3JBKRcDgsst/vNZ/Pa7Va1V6vp5PJRFerle52Oz0ej3o+n53X6XRSvrvZbHQ2m+lgMNBms4kwKo1GQzOZjNZqNR0Oh7pYLAyGRdfrVb0OnNf9ftfL5WIAND8ajQyo1WqpFAoFzWazChg3lsul0bOAhZ6s6lnptHgnzeKAFxVzBZhisaiSTqdNoXq9/hOFABqPx6aQAaVSKQUKy/AST/EWOVHpdrs5L9QhEkQDR3AGh3BLksmkAkWo+/2+TqdT8xXbWASU62JQaJjGySxC4BDDJYlEQoH61ZTN53MDwqFcLqcSj8cNqFwua7fbNT+hhh6VCJ7rQp3tdmtO4AjbDYIwXAaESgB1Oh0LNtQ8zCKgXBfZ+djFhAFUqVT+gWKxmAJVKpVs9JAPasLGBADluoChYRrHEYRAEKbdMgQUCSfp0PLQRyWgXBcwxILGEQAhEIRpF2Y/Go2aXAQLWh5CSrYAwFwX7wWGcSe3TBgcQAl2AAQdF7gJFFsAYGTqG8X7gWFDJNCMPFbyT2sZ4SKUnHkIKOz7VgHTbrctJpwJOscbkpGKu7plDhQAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="scrollBarTrackVerticalHarvest_Normal" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 12, 0, 13">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAYgIAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAACQIBgAAAFa9YL8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABy0lEQVRIS+2WN47DQAxFuZVL977/aZxzzjnnnLh6XIwhC9tst4UFECPTM1/kjPWfv9S7DoeDTKdTOZ1OwuWl3sKfC4VCEolEJBwOi+z3ey0WixalUsnGQqGg+Xxec7mcRTab1Uwmo+l0WlOplCYSCV2v1yr9fl8bjYa2Wi3tdDrabrftvtlsWr5er1tUq1WtVComjnCtVvtZPBgMdDwe62QyseB+OBxa8H2v19Nut2vCCCJSLpdVmDybzXS1WlkpjIvFQufzueWd2Gg0socgQlVUI0xkEb17G2fjdru1HLFcLt+EqIb2aE2YsNvt9Hw+6+VysfF4PJoI+c1m8yZCJbSBgDCBybfbTR+Ph42IeMf2EnGVUIV3pK/y7aiYeL/f9fl82ni9Xq0C8rTiKmA/2AfX+2fxZ8M+PxLv1fy8GF39J2aAAf7Jw3BGTA7HdM7p7Ddofs49oQjmLxw8Athv0LP9lgsccE5QhG+DHiGBIhOxWP+CIC1ADk91zBLwQRIR+ERg7EFGuVLBDIQEdsJClOjBT8TfcMsi6AhmgZ2ds2MvaoQf8oDeAR7IA3iC9vj7YL2CTKAN+ZPJpNE/Ho9rLBaziEaj9hkx4Mf1DYgT4re6ZypXAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="sharedSilver_Selected" backColor="Transparent" foreColor="170, 78, 5" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" imageBackgroundStretchMargins="3, 3, 3, 3">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA5wAAAAKJUE5HDQoaCgAAAA1JSERSAAAADAAAABYIAgAAAHta6k0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAUElEQVQ4T43SsQ3AIAxE0Z8RM5f3yhzpQgEiRSQKRGAE/hvgLPt8RARbXaAJVIFXIAsUwSWJaZlb4BFIgttOHLzyCa5g8QSNIfALTIFT4BIWzS6twcrqhOMAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemHorizontalBottomHarvest_Normal" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="7, 0, 8, 8">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAYQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAyklEQVRIS+2STQuCQBCGp///czp06NIhKIioKKJCDyYZpahlfqSrb65gddtTOYcdeJZZFnYf3p2ePemDOJUU4gRxkml+SwspRkQnpBoRnZBOSJWA6lzPkDIhZzYAJ+iyHIIT5G1G4AQF+zE4QXdzCi5ExwUoOa0RW3MWZK4BykMbmbNigUh8EMochbdDcd12ivBNyKJmzSNUwaE7QgMoiy8h2YoMeNhAZP2X+AxUopH5JNTuqqoWS+rEbsAzAFL3N8i75RsifYu0zQuwH1KdTn8UjgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemHorizontalBottomHarvest_Selected" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 0, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAegEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA40lEQVRIS2Nc5Mbyn2EwAZCDBhNmGEyOAcfWqIMIJJHRECKUREZDaDSECIUAIfnRNEQwhNaECP0fTJhha5L8/8GEGfYX6f0fTJjhZIPt/8GEGS73e/0fLPjm3MT/DA9X5v2/OzdyUOAXe3r/M3w4s/D/87UZgwJ/e3D8P8Pf7+/+f9pf///j7rIBxV9OTPgPAgwg4t+7m/9/n2wZOHym5///Hx8QDgKzvj7////W4v//r8+lL76//v//X5/BToCHEJz39/f//18e/f//9tL//69O/v//dC9tMMhskB1fn8GthjEAF7+rlU6Uld8AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemHorizontalTopHarvest_Normal" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="6, 6, 7, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAYAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAyUlEQVRIS+2SzQrCMBCEt/r+T+PBgxcPgoIIiqIoCpbSQrVYqdr/ZEwDip5yEbuHDPlgswthmKwDJfoUaiIpVEe1Ib9GP7s4HfWUo06XqKNo6pcaQ1qyBooYyM7/JY8AUb5tkK5EBdw94Oa2R5VqK9qQTFzIeNcu171OikQWozqtWVAnPqi8HJEHCxYU4QaU+ks83BkbKDlMwAmKtyNwgqLVEJygcD4AJyiY9sEJ8sY9cMIaMv2GTcgmZErANLc7ZBMyJWCas9uhJ+KIWHAEu5vaAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemHorizontalTopHarvest_Selected" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="6, 8, 7, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAgAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA6UlEQVRIS2P8DwQMyOD3FwaGP18ZGP79AeJfKFJU4zCxMTAwsTAwMHMyMLDyMDAwMiGMBjkIDP58////1cn//5/upS9+fvD//x/v4M5gALN+ff7//9bi//+vzx04/OkB2ClgB/25PPv/75MtA4vP9Pz/9+PDf4Zfz878/7i7bFDgb1dX/Wd4f3z6/+drMwYFfrW9+j/Dw5V5/+/OjRw0mOFyv9f/wYQZTjbY/h9MmGF/kd7/wYQZtibJ/x9MmGFNiND/wYQZFrmx/B9MeNRBhGJjNIRGQ4hQCBCSH01DoyFEKAQIyQ+6NAQAuaOvxr7rV+QAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeftHarvest_Normal" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="6, 6, 0, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAegEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA40lEQVRIS+1XywrCMBCM//85Hjx48SAoiKAgBUXBUqhoi5Vqm9g8xqRqj1axe8tCyAZChmySyUwPNtg7jGS6SJjmOVOiZFrZsVJMS9tcXveqmf5V4gDqkCXMZQt5CiDiJYpwjnw3RbYeI12NcFwMEc8GiCb9nxqrF9cVcA1hsg0FgAFESgigJcATQgAliAHs4dLuQBYe4OO7YPAlaqEOX6JWZvUl8iXq4k/2XOS56H9lR36LFLVsIRdehlo6OnV9zwi1qQMwGrhFVPL9ZUCMgslDCn/QeJynF+EZqvMe/BB04nAe4WOm/Vzi8g8AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeftHarvest_Selected" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="8, 6, 0, 8">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAlgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA/0lEQVRIS2P8DwQMUPD/50eGH3d2Mnx5fInh87N7DN8+fWT49vEzhP7wkeH7JxD7E0w5cTTIAjD49OD/7zM9/z/uLvv/fG3G/7tzI/9f7vf6f7LB9v/+Ir3/W5Pk/68JEfq/yI2FJMwANvzHu///r8/9//tkCw0s+Pf3///nB2lowc+P//8/3UtDC769oLEFnx/Q2IJP90YtwJsvGP6PBhGBomM0iAiWrKNBNBpE1KiTR8ui0bKI8pYdzVPRl0c0blXQvOH16zONfQBqXb86ScO2KciCP9///7+1mEbNd1gHBBhUfy7PpkH/AN7FgTB+PTvz//3x6f8fr6+gSg8HAM49EoUEvEwEAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemVerticalRightHarvest_Normal" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="0, 6, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAggEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA60lEQVRIS+2XXwsBQRTFRztbrFJ8/2/hwYMXD4qSIhLiYZMVNpb1Z1pjj5ktRURb7otm6jYv0/yaM/feOZOZNcpgKYfFObNsFdxOZtspMJ51GM+XmJUrPu+mAWnDa1Ww7FTh92vYjurYT5s4um0Irwu5mQLXCPfB0m6u138CXFYDxMFEQS4JgwawHQPHBTEgdAF5JjyBBkQ7YoDYEAPOawN4LbSkDnSa6ks2Er3rRUaipLV/7aYmi4xEX02AkchI9E8PjvCJXQW58ZInwhMcZkAcEwKkIHLX/lCZ3vD3H5DTvIcoULI8/G405QZbwndkEi5+KAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemVerticalRightHarvest_Selected" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 8, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAkAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA+UlEQVRIS2Nc5Mbyn4FEwMXHx8DJx8vAJcDPwMXHzyCkos/AK67AwKdqxcApb4lqGsgCUvGaEKH/W5Pk/+8v0vt/ssH2/+V+r/9350b+f7424/+XExP+//vx4T8MMJBqOEg9Pgs+7i77//tMz///vz6D7aCNBSdb/v+/v57GFlyf+///12c09AHIgreXaGzBi6M0tuDp3lELMDMaOB+AkikokkeDCFtZNBpE4KKdYGk6mopGg4hgI2A0iEaDaDhVOM8P0rhVQfOG15dHNPTBrcX////9TUMLvj6nTev60/76///e3aR+B+Thyrz/H84s/P/3+zu44SAGAJWotvb3ThcbAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="ultraProgressBarHarvest_Normal" borderColor="Silver" imageBackgroundStyle="Stretched">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAKQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIgAAABkIBgAAAFT6/KwAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAkklEQVRIS83Oaw4BQRRE4bL/TelrA2K8Z/Rogwh9IyIiIpS2iqmTfP/PwPcdodB/RAG8S1QA322pAJ4iFSCnhgrgbU0FZWRVRvqHHBdUgLyZUUEZqcpI/5DrMRXgNDEqwLkaUgEu00AF8HmgAlyXgQpwWwcqwL0JVIBHNCrAszUqwCsZFeDdGRXgczAqwPc4ooIfKpx9ov6YVTQAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
  </resources>
</styleLibrary>