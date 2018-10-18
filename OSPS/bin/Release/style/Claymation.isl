﻿<?xml version="1.0" encoding="utf-8"?>
<styleLibrary>
  <styleSets defaultStyleSet="Default">
    <styleSet name="Default" buttonStyle="FlatBorderless" useFlatMode="True">
      <componentStyles>
        <componentStyle name="Inbox Form">
          <properties>
            <property name="BackColor">250, 250, 250</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox MonthCalendar">
          <properties>
            <property name="TitleBackColor">197, 199, 203</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox Panel">
          <properties>
            <property name="BackColor">250, 250, 250</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraButton" buttonStyle="Flat" />
        <componentStyle name="UltraDockManager" buttonStyle="FlatBorderless" useFlatMode="True">
          <properties>
            <property name="GroupPaneTabStyle">Flat</property>
            <property name="UnpinnedTabStyle">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabbedMdiManager">
          <properties>
            <property name="TabStyle">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabControl">
          <properties>
            <property name="Style">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabStripControl" buttonStyle="FlatBorderless">
          <properties>
            <property name="Style">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraToolbarsManager" useOsThemes="False" useFlatMode="True" />
        <componentStyle name="UltraTree" buttonStyle="Flat" headerStyle="Standard" useOsThemes="False" useFlatMode="True" />
      </componentStyles>
      <styles>
        <style role="Base">
          <states>
            <state name="Normal" backColor="250, 250, 250" foreColor="30, 30, 30" borderColor="Silver" fontName="Tahoma" textVAlign="Middle" fontSize="8" backGradientStyle="None" themedElementAlpha="Transparent" backHatchStyle="None" />
          </states>
        </style>
        <style role="Button">
          <states>
            <state name="Normal" foreColor="DimGray" />
            <state name="HotTracked" foreColor="DeepSkyBlue" borderColor="Transparent" />
            <state name="Pressed">
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="CalendarComboControlArea">
          <states>
            <state name="Normal" borderColor="Silver" />
          </states>
        </style>
        <style role="CalendarComboDateButton">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>toolbarItemQuickCustomizeClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ComboDropDownButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>comboDropDownButtonClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>comboDropDownButtonClaymation_Normal</name>
              </resources>
            </state>
            <state name="Pressed" backColor="Transparent" foreColor="DodgerBlue" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>comboDropDownButtonClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ControlArea">
          <states>
            <state name="Normal" borderColor="Silver" />
          </states>
        </style>
        <style role="DayViewAllDayEventArea">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="DayViewTimeSlotNonWorkingHour">
          <states>
            <state name="Normal" backColor="Gainsboro" borderColor="Silver" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected">
              <resources>
                <name>dayViewTimeSlotNonWorkingHourClaymation_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DayViewTimeSlotWorkingHour">
          <states>
            <state name="Normal" borderColor="Silver" />
            <state name="Selected" backColor="250, 250, 250" borderColor="Silver" backColor2="Silver" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="DockAreaPane">
          <states>
            <state name="Normal" borderColor="Silver" />
          </states>
        </style>
        <style role="DockControlPaneContentArea">
          <states>
            <state name="Normal" borderColor="Silver" />
          </states>
        </style>
        <style role="DockFloatingWindowCaptionHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>dockPaneCaptionHorizontalClaymation_Normal</name>
              </resources>
            </state>
            <state name="Active" foreColor="Black" />
          </states>
        </style>
        <style role="DockManagerPaneContentArea">
          <states>
            <state name="Normal">
              <resources>
                <name>toolbarBaseClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockPaneCaptionHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>dockPaneCaptionHorizontalClaymation_Normal</name>
              </resources>
            </state>
            <state name="Active" foreColor="Black" />
          </states>
        </style>
        <style role="DockPaneCloseButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Pressed" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockPanePinButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockPaneUnpinButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DropDownButton" buttonStyle="FlatBorderless">
          <states>
            <state name="Normal" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>dropDownButtonClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAmQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABUIBgAAAKD8BewAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABAklEQVQ4T+2UwW6CQBRF8YftV1qlEkSh1VgBAR21jagRihDC7dxxYVwYRTcufAkJCXMOkzfzbgOA9nC12l3N88M32xkK+Y5bH64nR14JOh8mwmiO7HBAVVVyc5eL37kuCGcgR17rWc6fEEtFZVmG9TrG6ucXYrFUYs8PMP52MRyNIf8Oq+/AMPsIgkiJyGvvHQNlWSLPc2x3u5slutzFxPVBXklYaZrWluhd8yhhI1lJktSWkH1JTkfM03n15PzaP3FPiqK4a3YYBerac5SjmQBFdad4IKNBRYHMiyZtE3eK/T5BHG+u5knPsjGwv9DWDXjTsMkpViL7c1QvHuV6cuT/ASAKvDhr3FfAAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
              <resources>
                <name>dropDownButtonClaymation_Normal</name>
              </resources>
            </state>
            <state name="Pressed" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>dropDownButtonClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="EditorButton">
          <states>
            <state name="Normal">
              <resources>
                <name>dropDownButtonClaymation_Normal</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>dropDownButtonClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="EditorControl">
          <states>
            <state name="Normal" foreColor="DimGray" borderColor="Silver" />
          </states>
        </style>
        <style role="ExplorerBarControlArea">
          <states>
            <state name="Normal" backColor="250, 250, 250" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ExplorerBarGroupHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>groupHeaderClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 12, 5, 4">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABQIBgAAAI2JHQ0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAeElEQVQ4T+3UMQrAIBBE0eT+V/MAFoKNYCHYKBYWTjCQwNSz6bLwweqxbOHpnMNhORvsvcN7L3cv94AhBKgRGGOEGoEpJagRmHOGGoGlFKgRWGuFGoGtNagROMaAGoFzTqgRuNaCGoEwmB/Uj/jtDfcnq/ZuuB9WXb6Nm76fPOAyAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaInner">
          <states>
            <state name="Normal" backColor="250, 250, 250" borderColor="Silver" backColor2="Gainsboro" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaOuter">
          <states>
            <state name="Normal" foreColor="Black" />
          </states>
        </style>
        <style role="ExplorerBarItem">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="Black" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridAddNewBox">
          <states>
            <state name="Normal">
              <resources>
                <name>gridAddNewBoxClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridAddNewBoxButton">
          <states>
            <state name="Normal" borderColor="Transparent">
              <cursor>Hand</cursor>
              <resources>
                <name>buttonClaymation_Normal_Pill</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridAddNewBoxPrompt">
          <states>
            <state name="Normal" foreColor="Black" fontBold="True" fontSize="10" />
          </states>
        </style>
        <style role="GridBandHeader">
          <states>
            <state name="Normal" backColor="250, 250, 250" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridCaption">
          <states>
            <state name="Normal">
              <resources>
                <name>headerClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridCardCaption">
          <states>
            <state name="Normal">
              <resources>
                <name>headerClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridCell">
          <states>
            <state name="Normal">
              <resources>
                <name>gridCellClaymation_Normal</name>
              </resources>
            </state>
            <state name="Selected" borderColor="Transparent" />
            <state name="HotTracked">
              <resources>
                <name>gridCellClaymation_HotTracked</name>
              </resources>
            </state>
            <state name="Active" borderColor="Transparent" />
            <state name="EditMode" backColor="LightGray" foreColor="Black" borderColor="Silver" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridColumnHeader">
          <states>
            <state name="Normal" borderColor="Transparent" textHAlign="Left" fontBold="True" imageBackgroundStretchMargins="0, 11, 0, 5">
              <resources>
                <name>headerClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <cursor>Hand</cursor>
            </state>
          </states>
        </style>
        <style role="GridControlArea">
          <states>
            <state name="Normal" backColor="250, 250, 250" borderColor="Silver" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridExpansionIndicator">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="Gray" borderColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBoxPrompt">
          <states>
            <state name="Normal" backColor="45, 45, 45" foreColor="WhiteSmoke" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="5, 5, 5, 5" />
          </states>
        </style>
        <style role="GridHeader" borderStyle="None">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="GridRow">
          <states>
            <state name="Normal" borderColor="LightGray" />
            <state name="Selected" backColor="WhiteSmoke" foreColor="Black" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 15, 0, 4" />
            <state name="Active" borderColor="Transparent">
              <resources>
                <name>gridRowClaymation_Active</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridRowScrollRegionSplitBox">
          <states>
            <state name="Normal" backColor="Silver" borderColor="250, 250, 250" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridRowSelector">
          <states>
            <state name="Normal" backColor="250, 250, 250" foreColor="Silver" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemAreaHorizontalBottom">
          <states>
            <state name="Normal" borderColor="Silver" />
          </states>
        </style>
        <style role="GroupPaneTabItemHorizontalBottom" buttonStyle="FlatBorderless">
          <states>
            <state name="Normal" foreColor="Gray" borderColor="Transparent">
              <resources>
                <name>tabItemHorizontalBottomClaymation_Normal</name>
              </resources>
            </state>
            <state name="Selected" foreColor="Black" />
          </states>
        </style>
        <style role="ListViewColumnHeader" borderStyle="None">
          <states>
            <state name="Normal" borderColor="Transparent">
              <cursor>Hand</cursor>
            </state>
          </states>
        </style>
        <style role="ListViewControlArea" borderStyle="Solid">
          <states>
            <state name="Normal" borderColor="Gainsboro" />
          </states>
        </style>
        <style role="ListViewGroupHeader">
          <states>
            <state name="Normal" backColor="Gainsboro" borderColor="Transparent" backColor2="250, 250, 250" backGradientStyle="ForwardDiagonal" />
          </states>
        </style>
        <style role="ListViewItem">
          <states>
            <state name="Selected" backColor="Silver" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="MainMenubar">
          <states>
            <state name="Normal">
              <resources>
                <name>toolbarBaseClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MaskLiteralChar">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="MaskPromptChar">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="MenuItem">
          <states>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>sharedButtonClaymation_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemButton">
          <states>
            <state name="HotTracked" backColor="Transparent" foreColor="Black" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>sharedButtonClaymation_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuSideStrip">
          <states>
            <state name="Normal" foreColor="Black" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="8, 10, 8, 10">
              <imageBackground>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</imageBackground>
            </state>
          </states>
        </style>
        <style role="MenuTearAwayStrip">
          <states>
            <state name="Normal" backColor="250, 250, 250" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="MonthViewMultiScrollButton">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="PrintPreviewPageNumber">
          <states>
            <state name="Active" backColor="250, 250, 250" foreColor="Black" borderColor="Silver" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ProgressBarFill">
          <states>
            <state name="Normal">
              <resources>
                <name>progressBarFillClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleAppointment">
          <states>
            <state name="Selected" backColor="250, 250, 250" backColor2="Gainsboro" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="ScheduleDay">
          <states>
            <state name="Normal">
              <resources>
                <name>scheduleDayClaymation_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>scheduleDayClaymation_Selected</name>
              </resources>
            </state>
            <state name="Active">
              <resources>
                <name>scheduleDayClaymation_Active</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleDayBase">
          <states>
            <state name="Normal" backColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleDayHeader">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected">
              <resources>
                <name>groupHeaderClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleDayOfWeekHeader">
          <states>
            <state name="Normal" backColor="250, 250, 250" borderColor="Transparent" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleMonthHeader" borderStyle="None">
          <states>
            <state name="Normal">
              <resources>
                <name>scheduleMonthHeaderClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleOwnerHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>scheduleOwnerHeaderClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleWeek">
          <states>
            <state name="Normal" foreColor="DimGray" />
          </states>
        </style>
        <style role="ScheduleWeekHeader">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="ScrollBarArrowDown">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarArrowDownClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarArrowDownClaymation_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarArrowDownClaymation_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarArrowHorizontal">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarArrowLeft">
          <states>
            <state name="Normal" foreColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" foreColorDisabled="Transparent" imageBackgroundStretchMargins="0, 5, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAZQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAzklEQVQ4T62TywqDMBBFp///X6VQF7oQUUHxhe+qKAhubplZFEmymwbOKjcncwN5ACD1YokWtUCaaKcQyfP1hha6rgta6DxPaKHjOOCibVsEQSDEcYxpmpw5PkvbtsGkaRp4nieCMAyRJAnyPMc8z1Z233cQb5j4vm8JqqpC3/dWdl1X0DiOMDEnYEHXdVLJzH6WBcTdTaIo+lW4C/hWMyt16rqGSVEU8gZ3Ab/bMAxWduFJ+ICLsizlVq7AQa7jyokkyzJooTRNoeUvf+cLaCLEjjheYswAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarArrowLeftClaymation_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarArrowLeftClaymation_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarArrowRight">
          <states>
            <state name="Normal" foreColor="Transparent" imageBackgroundStyle="Stretched" foreColorDisabled="Transparent" imageBackgroundStretchMargins="0, 5, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAbgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA10lEQVQ4T6WQyQqEMBBEe/7/u2aB8aAHERUUN9xxBcFLDd2HQY23DrxDkqpKVx4ASL04RIs6QJpop5CQ5/sLLbTvO7TQtm3QQuu64o6yLOE4juD7Prquu9Wxl5ZlwTRNJ4qigGVZEuC6LoIgQBzH6Pve0LJXJuHLI7ZtGwFZlqGua0PLPglp2/bEdQIOqKpKKl21vKd5nsH9j3ie969wDBjH0dCyj3icPM9PJEkif3AM4O5N0xha9lKapmDTFT7nV7jCMAxS507HZxRFEbRQGIbQQq/PF1p+GPDEWFVzAPgAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarArrowRightClaymation_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarArrowRightClaymation_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarArrowUp">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarArrowUpClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarArrowUpClaymation_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarArrowUpClaymation_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarThumb">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarThumbHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarThumbHorizontalClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbHorizontalClaymation_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>scrollBarThumbHorizontalClaymation_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarThumbVertical">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>scrollBarThumbVerticalClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbVerticalClaymation_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADwIAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABQIBgAAAGug1kkAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABeElEQVQ4T+2U207CQBCGMYCJT2A0oG/hm8Ct7+aDwJXKoefWFlq7LdUSoqUBxa0FknGnZgmmJRBvtcmk6Xb2y87sP/8RAJS2n7uOkH2en51e0CS5SZLPqzRdnvCc42o1qVTL3Uq5fP32/hFk6wjZjtv7fol4o6YgqitFNWAUPEEcxzCdTiEcj8F2HqEvKNDtSfi/ifk5yCh4vhQkdclAsFgsss1jtjkIAvB9HzzPy96a/gCdnshA+mUOMrTdlqabkKYpzGYzmEwmEIbhBkIIAR49QQZBUlo5iKwY9OU1AkopRFG0E+K6LliDAZZFcxDW2OwU8/l8LwRBrCc/m4oNRsh6vc5K2XeSf8i3Tvj1Yj/+Uk+45H+tEy77QxTrOE6x7PkAHjI7sqoXDyCzgjqzgpVLfGYDceEA4tWalsWtoL7LlBpoSqKsAfH8jRUQ4sHQtkHVDAZgpqQZjUJTwkUMzw9qpmW3RUmjOKk8mKtRVkZbN8wa5uHQfgFNomEb3QCcUwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
              <resources>
                <name>scrollBarThumbVerticalClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackHorizontal">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 0, 7, 13">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAmAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABAUlEQVQ4T6WTW2uEMBSE0///u9p6iZco2i7atUazsg9CFUVQZJrjIn1cUwMf5GFmyLnkBQA7fSjkLKcDtkrOvmILebNcEK/vDzjnT9m1u5cNw4BSVrAdH1EUQwjxFNJxX6DrOszzDPajL64X4uPzgjRND0N68o3jCHYtSrg8RJ7nxpBPVgrMD2JkX1dIKY0hXxglYJbtoa4VmqYxhnyW7qWeDkfbtv+G/MxyvC2g73tjyLe9JAhjfJcVpmkyhnyCeiKrGtwTWNfVGPIp1YBRGbYb6Kbe9QYfP6R/hOgR08bW6qaDfCzLciiFdA4PUBQFsiyj6fz9nSS9HAohHf2f3fsLhrzIhqkYbdQAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackSectionBottom">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarTrackSectionHorizontal">
          <states>
            <state name="Normal" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 5, 0, 0" />
          </states>
        </style>
        <style role="ScrollBarTrackSectionLeft">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarTrackSectionRight">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarTrackSectionTop">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="4, 8, 0, 0" />
          </states>
        </style>
        <style role="ScrollBarTrackSectionVertical">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 2, 13, 2" />
          </states>
        </style>
        <style role="ScrollBarTrackVertical">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 7, 13, 7">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAqQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABEklEQVQ4T+2UW2uDQBCFJ3lIn0t+SKH0/7+1UXe9U22otXU1lSKSKIKg2NNdaUlAe4G+ZmBgWQ7fDsM5uwBAp7XROW6ur6jreyqKkvb7irquo3epWy4XdLFa0Xp9SfJIbdtSUR6IFOS07zSGqqrATAeMO3h8ipFlO5RlOfZLkoKbLnRmI45jKP0Ecrthoyh82CKKIgghkOf5CKjrGvJ1DMMg795gcBtKPwvxPB9BEPwIkdOj73vcB9sphHMO13X/BFEgVZNJzpDzTj4d++WRWZ8oG3v+Px2rILphIQx/z47OrPnsqFQmIj2mOPo+xdnudT7FCtI0DQ7yO4ifE1i2D003pZhDM0zYjg+RZmOilU7pPwDH1tmYkGoWgwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="SpinButton">
          <states>
            <state name="Normal" backColor="250, 250, 250" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>dropDownButtonClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" foreColor="DeepSkyBlue" />
          </states>
        </style>
        <style role="StatusBarPanel">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="StatusBarPanelStateButton">
          <states>
            <state name="Normal" borderColor="Transparent" />
            <state name="Pressed">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAtAAAAAKJUE5HDQoaCgAAAA1JSERSAAAACgAAAAoIBgAAAI0yz70AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAHUlEQVQoU2P8//8/A1EApJAYTJQisK3EmDZyFQIALPcQACGanOcAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="StatusBarTextPanel">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="TabControlClientAreaHorizontal">
          <states>
            <state name="Normal" borderColor="250, 250, 250" />
          </states>
        </style>
        <style role="TabControlClientAreaVertical">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="TabControlTabItemHorizontalBottom">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalBottomClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemHorizontalBottom">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalBottomClaymation_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalBottomClaymation_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemHorizontalTop">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalTopClaymation_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalTopClaymation_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalLeft">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemVerticalLeftClaymation_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalLeftClaymation_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalRight">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemVerticalRightClaymation_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalRightClaymation_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TaskPane">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarBase">
          <states>
            <state name="Normal">
              <resources>
                <name>toolbarBaseClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarCloseButton">
          <states>
            <state name="Normal">
              <resources>
                <name>toolbarItemQuickCustomizeClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" foreColor="DeepSkyBlue" borderColor="Transparent">
              <resources>
                <name>toolbarItemQuickCustomizeClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarDockAreaHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>toolbarBaseClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarDockAreaVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>toolbarBaseClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarFloatingCaption">
          <states>
            <state name="Normal" foreColor="Black">
              <resources>
                <name>headerClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItem">
          <states>
            <state name="HotTracked">
              <resources>
                <name>sharedButtonClaymation_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemComboBox">
          <states>
            <state name="HotTracked" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarItemFontList">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemMaskedEdit">
          <states>
            <state name="HotTracked" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarItemPopup">
          <states>
            <state name="HotTracked" foreColor="Black" />
          </states>
        </style>
        <style role="ToolbarItemPopupColorPicker">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemPopupControlContainer">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemPopupMenu">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemProgressBar">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="DimGray" borderColor="Silver" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemQuickCustomize">
          <states>
            <state name="Normal">
              <resources>
                <name>toolbarItemQuickCustomizeClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" foreColor="DeepSkyBlue" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>toolbarItemQuickCustomizeClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemStateButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneLabel" borderStyle="None" />
        <style role="ToolbarItemTaskPaneMenuDropDownOnly">
          <states>
            <state name="Normal">
              <resources>
                <name>dropDownButtonClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" foreColor="DeepSkyBlue" borderColor="Transparent">
              <resources>
                <name>dropDownButtonClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolTip">
          <states>
            <state name="Normal" backColor="250, 250, 250" foreColor="DimGray" borderColor="Silver" backColor2="WhiteSmoke" backGradientStyle="BackwardDiagonal" />
          </states>
        </style>
        <style role="ToolTipBalloon">
          <states>
            <state name="Normal" backColor="250, 250, 250" borderColor="Silver" backColor2="Gainsboro" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="ToolTipTitle">
          <states>
            <state name="Normal" backColor="Black" foreColor="DimGray" backColor2="RosyBrown" />
          </states>
        </style>
        <style role="TreeCell" borderStyle="None">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="TreeColumnHeader" borderStyle="None">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Silver" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>headerClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TreeControlArea" borderStyle="None">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="TreeNode">
          <states>
            <state name="Normal" borderColor="Transparent" />
            <state name="Selected" backColor="Silver" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraButton">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonClaymation_Normal_Pill</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraButtonBase">
          <states>
            <state name="HotTracked" foreColor="DeepSkyBlue" />
          </states>
        </style>
        <style role="UltraButtonDefault">
          <states>
            <state name="Normal" borderColor="Transparent" />
            <state name="HotTracked" borderColor="Transparent" />
            <state name="Pressed" borderColor="Transparent" />
          </states>
        </style>
        <style role="UltraCalculator">
          <states>
            <state name="Normal" backColor="250, 250, 250" borderColor="Silver" backColor2="Gainsboro" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="UltraCalculatorButton">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" textHAlign="Center" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="20, 0, 20, 0">
              <imageBackground>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</imageBackground>
            </state>
            <state name="HotTracked" borderColor="Transparent" />
            <state name="Pressed" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="20, 0, 20, 0">
              <imageBackground>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</imageBackground>
            </state>
          </states>
        </style>
        <style role="UltraDropDownButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" foreColor="DeepSkyBlue" />
          </states>
        </style>
        <style role="UltraDropDownButtonMainButton">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonClaymation_Normal_Pill</name>
              </resources>
            </state>
            <state name="HotTracked" foreColor="DeepSkyBlue" borderColor="Transparent" imageBackgroundStretchMargins="15, 10, 15, 10" />
            <state name="Pressed" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="15, 10, 15, 10">
              <imageBackground>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</imageBackground>
            </state>
          </states>
        </style>
        <style role="UltraDropDownButtonSplitButton">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>toolbarItemQuickCustomizeClaymation_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" foreColor="DeepSkyBlue" borderColor="Transparent">
              <resources>
                <name>toolbarItemQuickCustomizeClaymation_Normal</name>
              </resources>
            </state>
            <state name="Pressed" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>toolbarItemQuickCustomizeClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraLabel">
          <states>
            <state name="Normal" backColor="Transparent" fontBold="False" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" foreColor="DeepSkyBlue" />
          </states>
        </style>
        <style role="UltraProgressBar">
          <states>
            <state name="Normal" backColor="DarkGray" foreColor="WhiteSmoke" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabAreaTop">
          <states>
            <state name="Normal">
              <resources>
                <name>toolbarBaseClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalBottom">
          <states>
            <state name="Normal">
              <resources>
                <name>groupHeaderClaymation_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemVerticalRight">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemVerticalRightClaymation_Normal</name>
              </resources>
            </state>
            <state name="Selected" fontBold="False">
              <resources>
                <name>tabItemVerticalRightClaymation_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ValueList">
          <states>
            <state name="Normal" borderColor="Silver" />
          </states>
        </style>
        <style role="ValueListItem">
          <states>
            <state name="Normal" backColor="WhiteSmoke" borderColor="Silver" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Silver" foreColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
      </styles>
      <sharedObjects>
        <sharedObject name="ScrollBar">
          <properties>
            <property name="MinimumThumbHeight">25</property>
          </properties>
        </sharedObject>
      </sharedObjects>
    </styleSet>
  </styleSets>
  <resources>
    <resource name="button_Pressed" foreColor="DeepSkyBlue" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="21, 10, 21, 10">
      <imageBackground>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</imageBackground>
    </resource>
    <resource name="buttonClaymation_Normal_Pill" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="16, 10, 16, 10">
      <imageBackground>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</imageBackground>
    </resource>
    <resource name="comboDropDownButtonClaymation_Normal" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="5, 6, 10, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADAMAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABUIBgAAAKD8BewAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAACdUlEQVQ4T6WUi46aUBCG7QtvX6+73vCCgIKi4h0VRfF+W7WuRv07c9BaszZ105OYGMJ8Yb5/5nwDEPjvIyuZQKvd/V60Kh79x7M/fp/ruF4A1HQWXbeP3ccHzuczfdz94Wf8O51OOB6P2Gy3cDouuI7rAznT+ul5Q1G12+0wm80xGk/gDYYC3Gp30Gg0Ua3VYZUqyBdKMHJ5tOm543TB9YGUqgv6fr/HcrV6CKkTpFK9QPIW9GweGn1FrW6D6wWEz5Y+8V8Q8gBTQEyCGNSO7kNYJJ/NZvMEpAzTLCJjmFA1HUlZ+wrERrlSQ6FYJgcFZPQcFDWDhKw+Aen20Gw5ovdypYoCSc2S1LSeRUpJI55U/g4ZjsboewN0BKRNyTRQKlcpGQuGkGpATmmIxVOPIdPpDFcIz4LdZIifjJkvQv/tQ0U0lryHrNdrLJZLCMhwhF7fo4HqomG3RLxF6+oj6/ugViJS4jFkMpliQBC310fb6YBnxJd68ZGhVhRuRUY4EruHvL+/Y75YYDLxp9V1e2JaWWqpzJN634pErQRD0c+Q2XyO8fgq1RXJsFSLWjFFtNwKp5JCJBrHWzByD1nRyE9nM4xGNx+28HFrRaMJlVMqpHgSobCEH6+he8iSpE6mU5JKrfzhQ0RLqRhGjqY0gyQJjZLQYCiC17fwDXI4HMBOxuRjMBjQ9rrko00+qJUSp5KnVgwaMA3xBAmNxhCkViSSK3aHV9nteWAQt9O/RGs3/WhFKmLhqBVZgRRLUCqSSKdACymuAkrghWl208F6vcF8vvh0n1yvgusW52gJeY8UWsKW033hLRagYqn6teuR3uc6rv8F3XKxiblmEZYAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="dayViewTimeSlotNonWorkingHourClaymation_Selected" backColor="Silver" borderColor="Silver" backColor2="250, 250, 250" backGradientStyle="Vertical" />
    <resource name="dockPaneCaptionHorizontalClaymation_Normal" foreColor="Gray" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 13, 0, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA+QAAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABQIBgAAAI2JHQ0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAYklEQVQ4T+3SIQ7AIABD0e7+F0MgUAgEAoPAIBAE02Vn2DdL1uTZiqZXCMEiE2M0SSklk5RzNkmlFJNUazVJrTWT1Hs3SWMMkzTnNElrLZO09zZJ5xyT/sL3e35gQ/LUT9cNmQOZGOHa0CUAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="dropDownButtonClaymation_Normal" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 0, 0, 20">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADAMAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABUIBgAAAKD8BewAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAACdUlEQVQ4T6WUi46aUBCG7QtvX6+73vCCgIKi4h0VRfF+W7WuRv07c9BaszZ105OYGMJ8Yb5/5nwDEPjvIyuZQKvd/V60Kh79x7M/fp/ruF4A1HQWXbeP3ccHzuczfdz94Wf8O51OOB6P2Gy3cDouuI7rAznT+ul5Q1G12+0wm80xGk/gDYYC3Gp30Gg0Ua3VYZUqyBdKMHJ5tOm543TB9YGUqgv6fr/HcrV6CKkTpFK9QPIW9GweGn1FrW6D6wWEz5Y+8V8Q8gBTQEyCGNSO7kNYJJ/NZvMEpAzTLCJjmFA1HUlZ+wrERrlSQ6FYJgcFZPQcFDWDhKw+Aen20Gw5ovdypYoCSc2S1LSeRUpJI55U/g4ZjsboewN0BKRNyTRQKlcpGQuGkGpATmmIxVOPIdPpDFcIz4LdZIifjJkvQv/tQ0U0lryHrNdrLJZLCMhwhF7fo4HqomG3RLxF6+oj6/ugViJS4jFkMpliQBC310fb6YBnxJd68ZGhVhRuRUY4EruHvL+/Y75YYDLxp9V1e2JaWWqpzJN634pErQRD0c+Q2XyO8fgq1RXJsFSLWjFFtNwKp5JCJBrHWzByD1nRyE9nM4xGNx+28HFrRaMJlVMqpHgSobCEH6+he8iSpE6mU5JKrfzhQ0RLqRhGjqY0gyQJjZLQYCiC17fwDXI4HMBOxuRjMBjQ9rrko00+qJUSp5KnVgwaMA3xBAmNxhCkViSSK3aHV9nteWAQt9O/RGs3/WhFKmLhqBVZgRRLUCqSSKdACymuAkrghWl208F6vcF8vvh0n1yvgusW52gJeY8UWsKW033hLRagYqn6teuR3uc6rv8F3XKxiblmEZYAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="gridAddNewBoxClaymation_Normal" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="8, 8, 8, 8">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAABwMAAAKJUE5HDQoaCgAAAA1JSERSAAAAPwAAABgIBgAAAE32JVEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAACcElEQVRYR+XYyZLSUBQGYLqoEly5tuyufgkXlitfyTdxrb4CvIIrBRoSMpCJ0Iwt0AyhmRIQyPH8t0104wMkSdVPQjHU/e6UyrkiohyOH9WGOF+/eX17PP76FASHD4fj4dX5fLniQ3yWtCOfz1OxWFi/LBa/FQovPj78nAxgeP/u7TMF+O+Vukjnvve1Vm+GimbQZPpIvh/Q+XzmryTvuFwutPd9Gk8eSdVMums0Q/giqxj06I1hOW1Z0cnznigMQ4EOgoB2ux1tt9vEBe1G+6PBW3orqt7JBGc04ALfdrvluqTSfu8LuM89lkTw/9oMD1y73Z4kWSP2luDODYYPt5gSq6c1YargDzabTeoCF3zz+ZKwtOHOOe59SeU1HsHX6zWlNeiA0+lETaVF7C7neHNbjcdTMdU9z0t94ORRJ7hxi+O1vhejvVwuUx84N5st8ZongceuOJ/PMxN4/+Dr4nY2nU4zE3hjPDaCyWSSmcD7jOcXrIPxeJyZwCvweMEuPxqNMhN4Y/xisaDBYJCZwBvjZ7MZ9fv9zATeGI+dvtfrZSbY3GP8YDikTqeTmfR5iQt8XVJWpuVQt9sl13VTHzh1wyK4c4qql/hCTPl2u536AF+ry8Tuck7TjZtKTQodfsZ3HIds205t4DNNm+DVW+a1KGbITa1UqTXI5g4wTTO1sWyHqzkSwSuKGVEZi6e+W61JZJgWWZZFhmGkJvDwDCc8xLHzbxkrqmfhLMnq50q1Eda41iU3VdI0nXRdp1arlbig3Wh/U9HEaDM8ZN8XOKPEF9EMYPRNQ1JKvCl4+AFuCUkN2s+OFTxw/Vu5RQf8BpCnnu/jMezNAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="gridCellClaymation_HotTracked" backColor="Transparent" foreColor="Black" borderColor="Transparent" textHAlign="Left" imageHAlign="Left" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="15, 8, 15, 8">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAApgAAAAKJUE5HDQoaCgAAAA1JSERSAAAAAgAAAAEIBgAAAPQif4oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAD0lEQVQYV2P8//8/AwgAABT9Av/Pur1FAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAhQIAAAKJUE5HDQoaCgAAAA1JSERSAAAAPwAAABgIBgAAAE32JVEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAB7klEQVRYR+XYSXLaQBQGYLLEKe9S9sapXCKLVK7irU8Fe9/EGBAarAmQMEMgIImpQBNjPffflOWKb5BuVf2ikVZfv6e36C9Pz0rp/bq9+VaN4/Q+y/Ny8VCQxVW5nF9ff30Mo8UDSL9//SyVgB/9mfzQDTszTIfYSzoeTyTSdTgeKQgjUnWL4ISXFx03PPD8Pp3PZ548zylJEorj+L8PHPDAdTgcyGl7pBlWxvG910EFFcfu4KUo6M+Fgws+XKpuEty86miJ0+nEq7zdboUNfHD+nQa8/dH2tNvtKE1T2mw2wgfOJEmpVm8Rx6Md1us1rVYr4QPnfr//wOPPcrmUJv/gMQ3n87k0gbdoe0zCIAikCby1unL55jEFZ7OZNIG3wGPKT6dTaQJvjRWdVx5TfjweSxN44eb4xWJBo9FImsBb4KMoouFwKE3gLfBhGNJgMJAm8BZ4DLterydN4C3wk8mEfN+XJhjuBR7DzvM8afLa71/wTUXP3HaXV73T6QgfOC3bJbhLmmFW602VVd0n13WFD5z1psZOc8wKP8ZqKFrWUg3qdrsc7ziOcIGrzTpbaenUaGqXYyzcjBfrjlU/e26oxNZk2w6LLUwsZtENk1Vc5XC2/s7x7EiLbwDS0gx8AtgVPhBEClzMV3m34vcN0vOqnmSSAHIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="gridCellClaymation_Normal" backColor="White" foreColor="Black" borderColor="White" backGradientStyle="None" backHatchStyle="None" />
    <resource name="gridRowClaymation_Active" backColor="White" imageBackgroundStyle="Stretched" fontBold="True" backColor2="DarkGray" backGradientStyle="Vertical" imageBackgroundStretchMargins="0, 16, 0, 3" />
    <resource name="groupHeaderClaymation_Normal" foreColor="Black" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 14, 4, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABQIBgAAAI2JHQ0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAeElEQVQ4T+3UwQYAIRSF4Zn3f7UeoEVEtIiIJGpzRsMMZ31azGLio9Uv99JpjMGx86xgaw3WWtn9uCfonIOKgt57qCgYQoCKgjFGqCiYUoKKgjlnqChYSoGKgrVWqCjYe4eKgmMMqCg454TqD359huuTVb1bXpddLqqMkMlc43lkAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="headerClaymation_Normal" borderColor="Silver" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 13, 3, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA+QAAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABQIBgAAAI2JHQ0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAYklEQVQ4T+3SIQ7AIABD0e7+F0MgUAgEAoPAIBAE02Vn2DdL1uTZiqZXCMEiE2M0SSklk5RzNkmlFJNUazVJrTWT1Hs3SWMMkzTnNElrLZO09zZJ5xyT/sL3e35gQ/LUT9cNmQOZGOHa0CUAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="progressBarFillClaymation_Normal" backColor="DarkGray" foreColor="Black" imageBackgroundStyle="Tiled" backGradientStyle="None" backHatchStyle="None">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAcAEAAAKJUE5HDQoaCgAAAA1JSERSAAAADAAAABcIBgAAAD9krr8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA2UlEQVQ4T5WRS4qGMBgEZ+5/IEFwIS4EHyiK+EZERETEI/RPD7jqLzNMoAikUmKSbwBf/xoMyPM8+I1338/mNxiGARb8kAT3fWMcRxM6Ca7rcgZ0Epzn6QzoJDiOA9M0mdBJsO+7M6CTYNs25y/RSbCuK7quM6GTYFkWNE1jQifBPM+o69qETgI+WlmWJnQS9H2PLMtM6CRo2xZJkpjQScADx3FsQicBDxxFkQmdBFVVIQxDEzoJiqJAEAQmdBLkeQ7f903oJEjTFJ7nmdBJ4LrSd12Cd+Gv+QMHoGm2ikpApgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scheduleDayClaymation_Active" backColor="250, 250, 250" backColor2="WhiteSmoke" backGradientStyle="Circular" />
    <resource name="scheduleDayClaymation_Normal" backColor="250, 250, 250" foreColor="Gray" backColor2="White" backHatchStyle="SmallGrid" />
    <resource name="scheduleDayClaymation_Selected" backColor="250, 250, 250" backColor2="WhiteSmoke" backGradientStyle="Vertical" />
    <resource name="scheduleMonthHeaderClaymation_Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="15, 6, 15, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAhgIAAAKJUE5HDQoaCgAAAA1JSERSAAAALQAAABAIBgAAAIL+9ukAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAB70lEQVRIS82WXW7aQBCAN4ik7QH6XrVX6EMV5QZ5jnqCXqo5Q/rWI7QUbK/Xv8H4B2Mbmz/ZBCQoAjGd2YhIvQBZS59tybL2m9nd2bkAAPb7j86uv3xmdMVJer/9u7vd7XbvD/tDm10w1mq15LdzXeTUbl8erq4u5+/evvn56eOHb/+N/aujMSId5TemcDc6t2CYjmA+X8BqtYL1en1WaMymaWA6nUEUJ8BNG8iL/CgYQgoP0+xrVzOPyTCTgvSjKtR1DWGYAPmRJ/lKaZ3be4xEii6XSyUZhDHgKthL6SCMH7hwYLvdAkWlKovFAjRDAPr+YMLy6rwopexsNlOaMIoBfRuqHPD0tJKyZVkqTVVNAJcHlTtNbr6qqiDPc6Uhx2dpvNHmK4oC0jRVmjwvnqXpNplMIcsyiKJIaYaYVCmNZaQOBhGMx2Po9/vKEgQB+I8Blb2GWbb30NNNKU2Z9jxPSZIkgZ5mAvnKw6Xb43vb8WE0ysD3fbAsSykomSaeJeT5ciJatnvX6epHU9hAEdFUCCGAc/6qOI6DLgPg6NXpGkfyfJGmF2E51xjJhuq2YVrgej6uoUfwMPNnBcd1XQ8cxMDmDZOJfQffkB81S1L61Dmduj2Di/uexkuMjKZC7tbXgMYnD/T5fnKjJ/n+A1ZqeS+vxkdJAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="scheduleOwnerHeaderClaymation_Normal" backColor="250, 250, 250" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="14, 6, 15, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAhgIAAAKJUE5HDQoaCgAAAA1JSERSAAAALQAAABAIBgAAAIL+9ukAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAB70lEQVRIS82WXW7aQBCAN4ik7QH6XrVX6EMV5QZ5jnqCXqo5Q/rWI7QUbK/Xv8H4B2Mbmz/ZBCQoAjGd2YhIvQBZS59tybL2m9nd2bkAAPb7j86uv3xmdMVJer/9u7vd7XbvD/tDm10w1mq15LdzXeTUbl8erq4u5+/evvn56eOHb/+N/aujMSId5TemcDc6t2CYjmA+X8BqtYL1en1WaMymaWA6nUEUJ8BNG8iL/CgYQgoP0+xrVzOPyTCTgvSjKtR1DWGYAPmRJ/lKaZ3be4xEii6XSyUZhDHgKthL6SCMH7hwYLvdAkWlKovFAjRDAPr+YMLy6rwopexsNlOaMIoBfRuqHPD0tJKyZVkqTVVNAJcHlTtNbr6qqiDPc6Uhx2dpvNHmK4oC0jRVmjwvnqXpNplMIcsyiKJIaYaYVCmNZaQOBhGMx2Po9/vKEgQB+I8Blb2GWbb30NNNKU2Z9jxPSZIkgZ5mAvnKw6Xb43vb8WE0ysD3fbAsSykomSaeJeT5ciJatnvX6epHU9hAEdFUCCGAc/6qOI6DLgPg6NXpGkfyfJGmF2E51xjJhuq2YVrgej6uoUfwMPNnBcd1XQ8cxMDmDZOJfQffkB81S1L61Dmduj2Di/uexkuMjKZC7tbXgMYnD/T5fnKjJ/n+A1ZqeS+vxkdJAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="scrollBarArrowDownClaymation_HotTracked" foreColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 0, 13, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAkQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA+klEQVQ4T82SX2uDMBTFI3QfpzD25ffWPe1P6Z72NhxuVjHtbGrUmFiNnpmwFTdWSF/aBi6Ey70/zrkcDwAZv8f5M26up0RrvW+bfz/MXU0mxPO8fZ9zTpYxJcRAxvXwtEDTNJBSQghxsJIkge/7MPMHIUopCyjL8hcoyzJEUYQgCNwheZ6DMYY0TUEpRRzHCMPwDJB3XmHGOsy2PeZZi7fV5jglYaFwy2AB97zHIu/wUnQI6Nrdzt2w/BfwKjQ+ip075F9ApUFl6w4x8n8sWAXfgE1Vu0NoqewNxoBt3YKujriJCdtnIbAUjbXAZI31kJfz5ORyEnsyJV8x39Rhq/xE5wAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarArrowDownClaymation_Normal" backColor="Transparent" foreColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAdgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA30lEQVQ4T+2UywqDMBBFU7DfUyj9/2UfNAtdiKig+MJHFBUEQbS3TkqLlC5it20gBJLJSebOTTYA2LKdLhyH/Y5N0yQ7rdN4m8etprFxHGV4XddyXlQNk0HLfjxfMQwD+r5H13Vo2xZVVUEIgTRNEccxgiCA53lwXRcU/2uQJEmg6zoMw4BlWVKPVZqQkJxzCTBNE47jwPd9hGGoLixtfgdEUSSrpFydT4Asy1CWpTrEtu1XCnSDJ2A2mjqETiQNlgAyH8GU0yHHklvzPJcpNE2DoijWVedv+8eL/uYruAMIbtlbZmqtdAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarArrowLeftClaymation_HotTracked" backColor="Transparent" foreColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 5, 0, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAcAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA2UlEQVQ4T62T0QqCMBiF/97/gbqrq6LorrswNENYYtOps5VmJ10QsXn3N/juzj7OGWwGgNhnlHBhC+wSbgsrWW924EJt24ILGWPAhbTWmCKuDJb5C4uBXdlD1GYyN96lsizhEqkGcwkrWKmPZF/1SCvtZeu6Bkkp4bKQvSc46CfOuvWySilQlmVwcRuMglPzhLh1XjYvCpAQAi7bovtO+BXI293L2jlJksDleLnaN/gV5PcO6dDazRZjkziOMUUkUpyqh51wbYYGl3QyZyVhGIILBUEALn/5O28aOcoyIORy/QAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarArrowRightClaymation_HotTracked" backColor="Transparent" foreColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 5, 0, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAfAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA5UlEQVQ4T6WQTY+CQBBEe///D9qbe3I/wm1vGwwKIRkJjsowOC6IJT0mxnG4Nck7kFQ9qnkDQOKHJVLEAn+JdIWXLL8SSKG+7yGFnHOQQtZazJEbh4/9FYuJpBmhWjeb4y61bYumaQLWxw7vGl6wPN4lv2ZEZWyU5a5forUOWOgxEvzZCwrbR1nuekld1wGvC1iw6S5QpyHKcpeMMVBKBfwchscJzwJ9OkdZ7hLPKcsyYLXd+X/wLNifB1TTV1+z/E5FUSDP84i1qrAx//6EXTct2FazOe5SlmWQQmmaQgp9fieQcgPK+Mn8exAVvgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarArrowUpClaymation_HotTracked" foreColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 0, 13, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAkAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA+UlEQVQ4T+WUMU/DMBCFzS9iQPx2tjK1FIWJDQUFEiVyS+qSOI4dEtuPngVVQB3cFSw9+WTpPt09n30BgM3Xav2A66tL5pw7ylrLvPeM9vk5xbVoGCPIXMu7BOM4whgDpRTatoUQAnVdg3OOsiyR5zmyLEOaplitk58Agv1xyEvTYyEcFnuP+/cJz5vdeZ7k0uBGIACWjUfSOjxKh4xv4429PST/Bjwpi1f5EQ85CegtuJ7iIVT+dwuhgi/Arh/iIbwzwYM5YD9M4JszPKGJfZMKhRpDC0IP2B4m979PbNd1IJE/UsrwoouiiLsdrXVIPCWCVlV1/Ao+Ad5i5ikXbxUlAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="scrollBarArrowUpClaymation_Normal" foreColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 17, 0, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAfQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA5klEQVQ4T+2TywqDMBBF0y/qovT/V20FXehCRAXFF77xCYKot0xKxUoXcVsaGBICOZO5c+cEgG3XXVJwvZzZPM9rTNPElmVhtG/v6ZyXNWME2cbtIWMcRwzDgL7v0TQNyrJEnueI4xhhGMLzPDiOA9u2cZfkTwDBfhwSRRFUVYWmaTAMg+txSBMSUlEUDtB1HZZlwXVd+L4vLiw93gOCIOBdEu7ON0CSJCiKQhximuZaAv3gDaiqShxCGUmDLYDMRzDhcsix5NY0TXkJdV0jy7Jj3fnb/jXR+ynuug4UpE/btlzovWOfHabfreUTTZIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalClaymation_HotTracked" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="9, 5, 9, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA3AEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABEIBgAAAN1EjL4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABRUlEQVQ4T63T226CQBQFUPofvXyV/Vx9aqvcQSoKZUBSiFVMNDYTKSa77En0sfUCyX5hzlmZM8m5A6B1+hHsMp1iatoub6fAlzdDZZ5/Ps2iZOC4gXwdmjgnrGUPe4+OwkQ6fzZtr3H9dyxXFer6B4fD4c/s9zW+liuwh700aGlplj+altckImuhGlJKbLdbbDabf8M61scfAjRoaZMwGliOj93uWwFVVV2c9XoNGrQ0y/ZlNs/Bn4vF4uokIuXokm+osLIsURTFTaF1AvM8x605gUVRIsuymyLakRVomK6chDOkaQohxNWJohi0NMcbD0aGo253LZgkCTw/QGv1tXEwuR/qdmO7vgJ5eGnCcAoatNSmuH7QG+pWMzJsTKezs8E4juF5QYtZ7ZYFPbUpXGiFeuMH03b7I92WfNxzwlr2sPe4y7+zskSlCY1/WwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalClaymation_Normal" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="9, 5, 9, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA4gEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAABEIBgAAAN1EjL4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABS0lEQVQ4T62T226CQBRF6X/08lX2c/WprXKZGWZQBBUVKkmlRo3NRIrJLmcSfaw3SNYLOXvlnEn2AwCr0Y+ETdKozFzb5HZG+PbhGObp50sUTzpcBPq96+ISaJYylD16jCyZzl9d5ldC9rEsvlGWvzgcDv+y35f4WhagDGXJQS5rOkufXc+vJsmsFpXQWmO73WKz2ZyF5mh+NE5ADnJZgzDueFxit/vBer1GURRXs1qtQA5yWR6TejZPQT/zPL+Z8WRKp2t6QyPLsgxpmt4FuU7CJElwLyfhYpEjjuO7GA4jGKHjCj0II0RRhDAMbyYI+iCXxX3V6TncbKeUuhnX46hdbUsFg8euzSompNlOCHE1nPsgB7lMU4QMWl3bq3oOg5SqFvpgjJ2Fc16fyWqZV7csaJmmUKGN1FdPLhPtns00Pe4l0CxlKHvs8h9IYDnzklR14gAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalClaymation_HotTracked">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADwIAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABQIBgAAAGug1kkAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABeElEQVQ4T+2U207CQBCGMYCJT2A0oG/hm8Ct7+aDwJXKoefWFlq7LdUSoqUBxa0FknGnZgmmJRBvtcmk6Xb2y87sP/8RAJS2n7uOkH2en51e0CS5SZLPqzRdnvCc42o1qVTL3Uq5fP32/hFk6wjZjtv7fol4o6YgqitFNWAUPEEcxzCdTiEcj8F2HqEvKNDtSfi/ifk5yCh4vhQkdclAsFgsss1jtjkIAvB9HzzPy96a/gCdnshA+mUOMrTdlqabkKYpzGYzmEwmEIbhBkIIAR49QQZBUlo5iKwY9OU1AkopRFG0E+K6LliDAZZFcxDW2OwU8/l8LwRBrCc/m4oNRsh6vc5K2XeSf8i3Tvj1Yj/+Uk+45H+tEy77QxTrOE6x7PkAHjI7sqoXDyCzgjqzgpVLfGYDceEA4tWalsWtoL7LlBpoSqKsAfH8jRUQ4sHQtkHVDAZgpqQZjUJTwkUMzw9qpmW3RUmjOKk8mKtRVkZbN8wa5uHQfgFNomEb3QCcUwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalClaymation_Normal" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 6, 13, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAEwIAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABQIBgAAAGug1kkAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABfElEQVQ4T+2Ub0+CUBTGbWpbn6DVNL9F30Tf9t36IPqqUv7ce+GSCCYolC8iUcsg1O10DxvOhk63XhbbGeNy7g94eM5zAgCF7eO+raSXlxfnV1Ec38bx13WSLM+yntNyOS6Vi51SsXjz/vHppesI2a67B7nguKOGomorphkw8nwIwxAmkwm8jMdg959AVhh0JIL3G9ifg4y855pCtKUAwWKxSDf7vg+O44Bt22BZlgD1QeeP0JZUAeK1HMSyB02ddyFJEphOpzAWT/c8bwMxTRM454BnSaGgENbMQSgzotfgDaIogiAI9kIYY6DpHD8rykGEsOlbzOfzgxAECU1+iooCI2S9XsNsNjsIIYT8Q4RPsl+Mov4lTdBsv/JJZvtjHEsp3W37bACPmR1JJrsHUERBVUTBauAMRQyEeweQUJZFQXVfKNUxlFSqg+O6myjo9SwRAwbIKhUAEUq6Ud8ZSriI5Q69Ste0WyrRI5zUrESqRVTjLW50K9iHQ/sNoU1Wa2XZwHgAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="sharedButtonClaymation_HotTracked" backColor="Transparent" foreColor="Black" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="15, 8, 15, 8">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAhQIAAAKJUE5HDQoaCgAAAA1JSERSAAAAPwAAABgIBgAAAE32JVEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAB7klEQVRYR+XYSXLaQBQGYLLEKe9S9sapXCKLVK7irU8Fe9/EGBAarAmQMEMgIImpQBNjPffflOWKb5BuVf2ikVZfv6e36C9Pz0rp/bq9+VaN4/Q+y/Ny8VCQxVW5nF9ff30Mo8UDSL9//SyVgB/9mfzQDTszTIfYSzoeTyTSdTgeKQgjUnWL4ISXFx03PPD8Pp3PZ548zylJEorj+L8PHPDAdTgcyGl7pBlWxvG910EFFcfu4KUo6M+Fgws+XKpuEty86miJ0+nEq7zdboUNfHD+nQa8/dH2tNvtKE1T2mw2wgfOJEmpVm8Rx6Md1us1rVYr4QPnfr//wOPPcrmUJv/gMQ3n87k0gbdoe0zCIAikCby1unL55jEFZ7OZNIG3wGPKT6dTaQJvjRWdVx5TfjweSxN44eb4xWJBo9FImsBb4KMoouFwKE3gLfBhGNJgMJAm8BZ4DLterydN4C3wk8mEfN+XJhjuBR7DzvM8afLa71/wTUXP3HaXV73T6QgfOC3bJbhLmmFW602VVd0n13WFD5z1psZOc8wKP8ZqKFrWUg3qdrsc7ziOcIGrzTpbaenUaGqXYyzcjBfrjlU/e26oxNZk2w6LLUwsZtENk1Vc5XC2/s7x7EiLbwDS0gx8AtgVPhBEClzMV3m34vcN0vOqnmSSAHIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemHorizontalBottomClaymation_Normal" foreColor="Silver" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundAlpha="Opaque" foregroundAlpha="Opaque" imageBackgroundStretchMargins="15, 3, 15, 10">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA+AEAAAKJUE5HDQoaCgAAAA1JSERSAAAANQAAABUIBgAAAOZKpkYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABYUlEQVRYR93Wa26CQBiFYbqT/mi6hy6k23CXvVi0FmupF+4iYABHUBDTxFMPjZMuQcbk1UT/fE8w38zN04uO+7tbTZXX3PI0jag0TWFZlhLRoy4qyzLYtq1E8knlea4EiA9GooQQcF1XiSSqKAp4nqdEElWWJXzfVyKJ2u12CIJAiSSqqiqEYahEElXXNaIoUiKJOhwOiONYiSTqeDxivV53viRJ/s4pfWj8CLEFD2DeAbscUfRoE3M2ny8ccAMS1uX8YAl6NNvxen39HVwWvFl0tc1mA2P8BXp4S9eMsSkWtoumacCDuIuFq+iMMgU9Lcr1gse3wegUxUkL2+/3nSrNcvT10cnzl48SJWHnHxaWg+a8Dbnm+Ze89lZRLEEANNa+EcVPPwgfjE9TPL8OMJ1Z2BYluO6vraqqEa5aDDgv576AJOryBXHMcf3e93QxHH1Mau79a4tzcT7OeZn5P+oXrrcfcHn77nAAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemHorizontalBottomClaymation_Selected" foreColor="Black" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="15, 3, 15, 10">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA/wEAAAKJUE5HDQoaCgAAAA1JSERSAAAANQAAABUIBgAAAOZKpkYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABaElEQVRYR93WW26CQBiGYbqTXjTdQxfiNtxlDxYtnkKRM2ihcsgICEipfOU3cdIlyJC8kAw3/xOSGe6eX2U8PtxLoly66UoSoeI4hqL5QkQecVFJkmCubYWIf6k0TTHf9CgB4ijGGJb6Tog4KssyrMxAiDgqz3OszVCIOKooCqj2Xog4qixLaG4kRBxVVRUMPxEijqrrGtZXKkQc1TQN3JANPidguKDk2aJl7IAgybGLskHnhSnII63Vja4bNlheIUyLQWd5/bHUeyTLdscT+QNlVSM+lIMtYkcoSxXkob90abFUmWE5qE4tWHEaZH6wBznIc0E5rj96nypdEH6jbloUVTOo4vSAiax0rrcdcRSH9S8M00bTtn2/OP3cfkEYcRAAibrcCEVPz989LVYqe3mbQtuYKIojzuczuq67qegICsI9YUDz0txXEEddFwhH2Y43/tSMmTJfV7Tv31o0F81Hc15n/o/6A041DjIefm/9AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemHorizontalTopClaymation_Normal" foreColor="Silver" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundAlpha="Opaque" foregroundAlpha="Opaque" imageBackgroundStretchMargins="15, 12, 15, 2">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAFgIAAAKJUE5HDQoaCgAAAA1JSERSAAAANQAAABUIBgAAAOZKpkYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABf0lEQVRYR92WW07CQBSG64uACzC6Axfgg1HXoW+ugaW4BveiCJQIEvHW0gtNS6dtCvQybUk49owyhh0w0+RLJ00f/i9/e2YOAEDZXk/PKluenhy3y7K6K4ryLKe0xV/Yk8VRq0WbzcZHo3H44M3JPca6vDj/T4dSj52+gnfTml2PxpO40x3At25AmmZQVdXeQYsCvLkPPXUImNeynSvMv4UJIYZp3/b6Lxt9atYSayjLUgjmPoFunRvz70gxIXW4IUHIWsnzXCjixeJPbHaDBbGWsMKpYbFm0jQVEvwc0YNJ1TLtuj6ohwKsViuheR2/A/oob5PPL40NhRTiOBYax3EBfZT+YLROkl+hKIqEhgQBoA/+U2w4BPUD0SGEAPowKRwQvu9LAZeilILneVLApXBfcl1XCrhUlmXgOI4UcKkkScC2bSngUrjpWpYlBVxquVyCaZpSwKVw4zUMQwq4FJ4kdF2XAi4VhqEUQlgMl8LjkaZpUrAjJfq5b5sfpX4AYytcVVJTb2cAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemHorizontalTopClaymation_Selected" foreColor="Black" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="15, 11, 15, 2">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAIAIAAAKJUE5HDQoaCgAAAA1JSERSAAAANQAAABUIBgAAAOZKpkYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABiUlEQVRYR93VyU3DQBiG4XAhhAIQdEABHBBQB9yoIaVQA71AgAQlYYmc3VnAeMOxJ14T/DH/CAbRQTyWXnkk+/A/Gi9bAEq/x+1dQywP9veqaZpdJkl6GMVxRd6wIYvdSiXe2Slr5fL2tfFhXdFYJ8dHf9MR6qZWL9FZn8zO2s8dr3b/iP5wDA5Cnuf80mYdq9UapmWj3miB5p1M56c0/28CRI316cVDvZkPRzrW6y+BKUKW7eCez03z/0MJUKOV0w0rDkqydaFaBMsf2OycNkjsEm3haDwREBalhcwwHfEoChTHVPn2IU4yeCwpbJ8sRvtFA3lKr51ub8A/CkGYwF6EhW4yN0GeUv2xvWJsCctbwnBZoXuzFiAPvVPIsgxzyy98M3MB8ghUmqbQDU+JJCrmP9nhm6tEEhVFEfpTR4kkKgxDaLqlRBLFGENnZCqRRAVBgJeBoUQS5fs+ngfvSiRRnufhqTdXIolyXRet7kyJJMpxHLQ0jlIgibJtG01tqkT/UARTIUJ9A8GZT/OvZc25AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeftClaymation_Normal" foreColor="Silver" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundAlpha="Opaque" foregroundAlpha="Opaque" imageBackgroundStretchMargins="10, 15, 3, 15">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAEgIAAAKJUE5HDQoaCgAAAA1JSERSAAAAFQAAADUIBgAAAK67oKAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABe0lEQVRYR+2Y207CQBCGMfEZjN75HMbXMD6ECeElFbEgEAWFtPYA0gPUHqAtYMLvziQQL5XM5TaZdC+2X2enM5P+cwKgtr8eHtu8vDg/a5TV+q6q1pfb7fb0sOGvC4LuzXEn1/2XYdLu9DGZfGI+nyOKIoRhCN/3MZvNMJ1O4XkeXNeF4ziwbRuWZbGZpsnP1O6bBkNtx7ttGd1dEITI8xxJkiCOY950FJQ8fGr3dmmaYbVayUDpyEEYoSxLGeiH7TaUl9hsNnLQwdto7Ks4ikK7vddSpY4sVH19qFzUUMGvr2OqU0pXlGQ/1RWlK0pXlK4osb8+3VB0Q9ENRbKhkDopilJWSJCOsmxXFqoUX71lPHMBSDaUGmlTBWewmOBVKvqKVLQfRBwGEWlOel+Bb0jvqwgzmDxO0/Q4vU9AGiSQkccUimarg/eRifgrQVVV/BK6U8yLosByueTTZFl2GDYsFgt2gCcTv8cde7jKhvpgOBobnf43NfH/2g9eILwkRuh3egAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeftClaymation_Selected" foreColor="Black" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="10, 15, 2, 15">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAKAIAAAKJUE5HDQoaCgAAAA1JSERSAAAAFQAAADUIBgAAAK67oKAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABkUlEQVRYR+2Y2U6DQBSGNfEZjN75HMbXMD6ESdOX1FrpQlfb2oWWVspWSgk78jsHg/FS69w5JBPmgnwcZuac8J1TACfl9fjUKKaXF+fVIIzuwzC6SpLk7OuBn04IWg5lqd50ekNHanWhqFtsjD1UfQ9FczDb2HhdWRgpBoZzHf2pht70Dd3JGvJYhTxS0R6tYJomTh5qUgFdKKu7utTONd3Czgth7n1otoe14R4HpQifG3Luej68IIbjRX+H0icbpoUoyfhA54tlVWrIyPOcH3TwMp7ohskX2pb7QZqmfKFs99nmQ0A57r5YU3GkREbxrKcio0RGiYwSGcXtr08UFFFQ/nVBId3hqjxkJ1EU8YWSR80WS75QZnyVutRClmX8jI8smtyUwZFm73zclKDMoq/JorWtUUTLxaLJ9xn4lnyfrTDiOMHB/9Tzo3yfgBRtGTEtRa3exGg8hb1zEIYhe0lc3IMggO+znoDn4XA4wHVdOI4D27ZhWVbRlSg6E9/bHSWcnYbKYDieSM1OSkX8t+MDh1avw4SywAQAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemVerticalRightClaymation_Normal" foreColor="Silver" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundAlpha="Opaque" foregroundAlpha="Opaque" imageBackgroundStretchMargins="3, 15, 10, 15">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAIAIAAAKJUE5HDQoaCgAAAA1JSERSAAAAFQAAADUIBgAAAK67oKAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABiUlEQVRYR+2YzW6CQBSF7caW9+miMX2N9jFMH6WbPlJjDDFqa2lVkAGRH0WIIKBp01PuRFq7pE66GpIb2MzHZeYO5545e+yoaNS8ms3mh6KcM+VCefCD5T0Nb11d/lBWqxV0XedhGAYP0zTBGINlWbBtG47jwHVdeJ4H3/fLCMAsG2pvgOGTFjNrfg2gUUWjLjQIAtCY9XqNKIqwcD101f6nyea3QqBxHCNJkvIFEQdTxuV0Nk7KtIJut1ue8fBZi4VC8zynbDEzrTthmRLUWXh4eR1PhEKzLEd/MMqFQvf7PXjdn1JSxwtFny+hck5lSckdVUv4jjVK/lC4mpLwyf+plBMp0bJDkQ1aPR8l5eTb8f2LmiZJKtadFEWB8cQQ66N2ux063R45vraQHUXAqT4T500JuHD9ykW3/mx4yeenaVo2EAW0t+nB79s3v/w+9agUYRjywwEqlc1mw7sPGpxlGe9AaDHovlyGHEZzeDiZ4BlSEJgeuPepE2pv+D7SyrWesfYxrMr0C/k8poKnXvPzAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemVerticalRightClaymation_Selected" foreColor="Black" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="3, 15, 10, 15">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAMgIAAAKJUE5HDQoaCgAAAA1JSERSAAAAFQAAADUIBgAAAK67oKAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABm0lEQVRYR+2YzW6CQBSF7cbW9+miMX2N9jGaPko3faTGKDH4V4r/CAqKkKkgIyhy6ky0td1RZzkkN7Dhy+XOnTn3cPVWUVDIeRWLxbRUujZKN6XX+cJ9Ya+X725/KMvlEqpu8mjoFhpdC63eFO2Bjc7AgTZaQDdc9E0Pw5mPsU1gOj4Gho1avYlmSyPGxLoHUDhFIS/UcAim7gqOH8Ila5j2AlVFzcaG9SgEuvyMQMIYHgk4mGV8KGfhokxP0JAmsB0XzbZGhELjbYqaomI0njwLy5RBbWeB949uTyg0SRKojQ4VCs2yDLzvL2mp84Viny+hsqaypeSOyiV85xolDxSupkz45Hkq5URKtJxQ5ICWz0dJOfl2fH/VNN3vxc+n63Uk1p0kuxTd3lCsj0qSLSrVOnN8T0J2VJyk6A9G4rwpjXeY2fOTiy7/2/DO/QAkoIhoDE3vH/2++fDL77MZlYXnefB9H4QQrFYrBEGAMAwRRREopdhsNvzuuh6HsRoe/0zwDFkwMHvgvZUnlHpz19EOaz0yns5hp0y/AOQ7lUPH+xWyAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="toolbarBaseClaymation_Normal" backColor="WhiteSmoke" backColor2="White" backGradientStyle="BackwardDiagonal" />
    <resource name="toolbarItemQuickCustomizeClaymation_Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 5, 6, 5">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAArgEAAAKJUE5HDQoaCgAAAA1JSERSAAAACwAAABYIBgAAABbkZmMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABF0lEQVQ4T+2T3U7CQBCF14SKl0RvBR/El/HZfBC50ZjQQmsRSm0EtvjT7Uayi4lStsm4p2AiF/UJmGSu5uzMyeY7R3f3Ljs7bXU2G3P9vS4uy7JssF05TqM8aTZvnWPnarlUnEVxcuH2g6+BH1IuJSm9Iik/6PXtnaYzTkE4IswncdJh4XDc7VuhUorWRUF69bknjiYJYW51N6zn+oanCzLG1IqHjxH1PN8w65mEEISq2wwr0FViab0exIffsIiCuj028jz/l7rRON6CBETnPCWtdS11T8nzFlFAjZRkWVYF4G9SsCRdvJDrBYC/y2xczhEb28TtUIi8QhaMT2dz8gYPVaxs/NrgGTls4yVOwdtvwyIuYyF0P9cJUI5JWGsyAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
  </resources>
</styleLibrary>