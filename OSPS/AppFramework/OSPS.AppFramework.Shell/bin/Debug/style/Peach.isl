<?xml version="1.0" encoding="utf-8"?>
<styleLibrary>
  <styleSets defaultStyleSet="Default">
    <styleSet name="Default" buttonStyle="FlatBorderless" useFlatMode="True">
      <componentStyles>
        <componentStyle name="Inbox Form">
          <properties>
            <property name="BackColor">Ivory</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox MonthCalendar">
          <properties>
            <property name="TitleBackColor">253, 162, 100</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox Panel">
          <properties>
            <property name="BackColor">Ivory</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraButton" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True" />
        <componentStyle name="UltraCombo" useOsThemes="False" useFlatMode="True" />
        <componentStyle name="UltraDayView" useOsThemes="False" useFlatMode="True" />
        <componentStyle name="UltraDockManager">
          <properties>
            <property name="GroupPaneTabStyle">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraGrid" useOsThemes="False" useFlatMode="True" />
        <componentStyle name="UltraListView" buttonStyle="FlatBorderless" headerStyle="XPThemed" useOsThemes="False" useFlatMode="True" />
        <componentStyle name="UltraMonthViewSingle" useOsThemes="False" useFlatMode="True" />
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
        <componentStyle name="UltraTabStripControl" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="Style">Flat</property>
          </properties>
        </componentStyle>
      </componentStyles>
      <styles>
        <style role="Base">
          <states>
            <state name="Normal" backColor="White" foreColor="DimGray" fontName="Tahoma" textVAlign="Middle" backGradientStyle="None" themedElementAlpha="Transparent" backHatchStyle="None" />
          </states>
        </style>
        <style role="Button" buttonStyle="FlatBorderless">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>buttonPeach_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonPeach_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ComboDropDownButton">
          <states>
            <state name="Pressed" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DayViewControlArea">
          <states>
            <state name="Normal">
              <resources>
                <name>headerPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DayViewTimeSlotNonWorkingHour">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" />
            <state name="Selected" backColor="PeachPuff" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DayViewTimeSlotWorkingHour">
          <states>
            <state name="Selected" backColor="231, 146, 90" foreColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockFloatingWindowCaptionHorizontal">
          <states>
            <state name="Normal" foreColor="103, 67, 31" fontBold="True">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAJwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAkElEQVQ4T63DQQfCAACG4a+/2trWzxgdxpI67DBKxC5dxg67dYkOo0N0iA6l6BDRISKitz/xPTwdLg1y4FTjKI4VjuKwxFHsSxzFboGj2M5wFG2Bo9jkOIr1GEexGuIomgRH/coIR33nXRz1mQY46l0EOOqV93DUcxLiqMcoxFH3LMJRtzTGUddBjKPOSR/HPxZQ3xVVs6j2AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="Active" foreColor="Black" />
          </states>
        </style>
        <style role="DockPaneCaptionHorizontal">
          <states>
            <state name="Normal" backColor="255, 242, 221" foreColor="103, 67, 31" fontBold="True" backGradientStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAJwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAkElEQVQ4T63DQQfCAACG4a+/2trWzxgdxpI67DBKxC5dxg67dYkOo0N0iA6l6BDRISKitz/xPTwdLg1y4FTjKI4VjuKwxFHsSxzFboGj2M5wFG2Bo9jkOIr1GEexGuIomgRH/coIR33nXRz1mQY46l0EOOqV93DUcxLiqMcoxFH3LMJRtzTGUddBjKPOSR/HPxZQ3xVVs6j2AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="Active" backColor="Transparent" backGradientStyle="None" />
          </states>
        </style>
        <style role="DockSlidingGroupHeaderHorizontal">
          <states>
            <state name="Normal" foreColor="103, 67, 31" fontBold="True">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAJwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAkElEQVQ4T63DQQfCAACG4a+/2trWzxgdxpI67DBKxC5dxg67dYkOo0N0iA6l6BDRISKitz/xPTwdLg1y4FTjKI4VjuKwxFHsSxzFboGj2M5wFG2Bo9jkOIr1GEexGuIomgRH/coIR33nXRz1mQY46l0EOOqV93DUcxLiqMcoxFH3LMJRtzTGUddBjKPOSR/HPxZQ3xVVs6j2AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="DockSlidingGroupHeaderVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>headerPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DropDownButton">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="3, 4, 3, 4" />
          </states>
        </style>
        <style role="EditorControl">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarControlArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ExplorerBarGroupHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>explorerBarGroupHeaderPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>explorerBarGroupHeaderPeach_HotTracked</name>
              </resources>
            </state>
            <state name="Active">
              <resources>
                <name>explorerBarGroupHeaderPeach_Active</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaInner">
          <states>
            <state name="Normal" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="3, 3, 3, 3">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAANgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAQAAAABEIBgAAAG27qowAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAAAn0lEQVRYR2Ps9WD+X7T9D8NIBH2eLAwMoAAYqQDk99EAGE0Bo1lgtAwYqWXg/9FCcLQWGK0GR9sBow2h0YYQsCT89ePriKsKf3z5AKkGpwQL/btzfNOIC4Br+5b+nxoi/I9hc0vYvjnxyv/vn97x/9/fP8M+IH5+/fj/xoEV/6eFif0H+Z2hx40BFAj7pwQJ/utxZ/w/EjDIryA/g/wOAJrZJIrmzFE/AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="HotTracked" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="ExplorerBarItem">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" borderColor="Transparent" fontUnderline="True" />
          </states>
        </style>
        <style role="GridBandHeader">
          <states>
            <state name="Normal" backColor="Bisque" foreColor="103, 67, 31" borderColor="Transparent" fontName="Trebuchet MS" textHAlign="Left" imageBackgroundStyle="Stretched" fontBold="True" fontSize="12" backColor2="WhiteSmoke" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="GridCaption">
          <states>
            <state name="Normal" backColor="Ivory" foreColor="DimGray" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" fontSize="10" backGradientStyle="None" imageBackgroundStretchMargins="4, 8, 5, 0" />
          </states>
        </style>
        <style role="GridCardArea">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched">
              <imageBackground>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</imageBackground>
            </state>
          </states>
        </style>
        <style role="GridCardCaption">
          <states>
            <state name="Normal" backColor="Gainsboro" backGradientStyle="None" />
            <state name="Selected" backColor="DarkOrange" backGradientStyle="None" />
            <state name="Active" backColor="DarkOrange" backGradientStyle="None" />
          </states>
        </style>
        <style role="GridCell" borderStyle="None">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" />
            <state name="Selected" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" />
            <state name="Active" backColor="Transparent" foreColor="103, 67, 31" borderColor="Transparent" backGradientStyle="None" />
            <state name="EditMode" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="3, 3, 3, 3">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAkwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAQAAAABUIBgAAAPYq6JoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAAA/ElEQVRYR2P8//bq/+MbFzKc2zqH4ceX9wyMQDjcATuvIIORVzKDpX88A8OxeWX/58Qr/390cf//Xz++/h/u4Oe3T//vndz6f0aU9P9j88v+M0wJEf7/9OrR4e5vDP/dPrr+/9RQkf8MvR7MIyLm0UPg++d3/0F+BwfASAWjATCaAkazwGgZMFoIjtYCo9XgaDtgpLaDRluCoy3B0ZYgtCU4EsYB0Au6H18+QMqAKcFC/+4c3zTiCsJr+5b+nxoi/I/h0MRs8IjQ/dM7/v/7+2fYB8TPrx//3ziw4v+0MLH/IL8zvNm+8v9BIGNKkND/HnfGEYFBfgX5GeR3AIoKGfuR7ynvAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
            </state>
          </states>
        </style>
        <style role="GridColumnHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>gridColumnHeaderPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" imageBackgroundStyle="Stretched" />
          </states>
        </style>
        <style role="GridControlArea">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBox">
          <states>
            <state name="Normal" backColor="LightGray" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBoxPrompt">
          <states>
            <state name="Normal" backColor="LightGray" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="3, 3, 3, 3" />
          </states>
        </style>
        <style role="GridHeader" borderStyle="None" />
        <style role="GridRow">
          <states>
            <state name="Normal" backColor="White" borderColor="231, 227, 216" imageBackgroundStyle="Stretched" backGradientStyle="None" />
            <state name="Selected" backColor="WhiteSmoke" foreColor="30, 30, 30" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="3, 0, 3, 0" />
            <state name="Active" backColor="Transparent" foreColor="103, 67, 31" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAEAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAAAeUlEQVQ4T63MWQ6CUBQE0Xb/u3uXP8IkYpA4KziglC6iKzm/tWIakCPGHQ7i3uMgblscxLXDQVw2OIhzi4M4NTiIY42DOFQ4iH2JgxhyHLR0gYOWNuGg7zrhoE+TcNBcBw56V4GDXmXgoGcROOhRZDhoyjMcNP5HDj8mp83LQ2868gAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="AlternateItem" textVAlign="Middle" />
          </states>
        </style>
        <style role="GridRowSelector">
          <states>
            <state name="Normal" backColor="Ivory" foreColor="103, 67, 31" borderColor="Ivory" backGradientStyle="None" />
          </states>
        </style>
        <style role="GridRowSelectorHeader">
          <states>
            <state name="Normal" backColor="Ivory" backGradientStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemAreaVertical">
          <states>
            <state name="Normal" backColor="White" backColor2="255, 242, 221" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="GroupPaneTabItemHorizontalBottom">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>tabItemHorizontalBottomPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalBottomPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GroupPaneTabItemHorizontalTop">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemVerticalLeft">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemVerticalRight">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>tabItemVerticalRightPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalRightPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ListViewColumnHeader">
          <states>
            <state name="Normal" backColor="Silver" foreColor="White" borderColor="Transparent" backColor2="Gainsboro" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="ListViewControlArea">
          <states>
            <state name="Normal" backColor="White" borderColor="Gainsboro" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ListViewGroupHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>headerPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ListViewItem">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="MainMenubarHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MaskPromptChar">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="MenuItemAddRemoveTool">
          <states>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemButton">
          <states>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemCustomize">
          <states>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemToolbarPicker">
          <states>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MonthViewMultiControlArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="OptionSetEditorItem">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="PrintPreviewPageArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="ProgressBarFill">
          <states>
            <state name="Normal">
              <resources>
                <name>progressBarFillpeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleAppointment">
          <states>
            <state name="Selected" backColor="DarkOrange" foreColor="White" backColor2="SandyBrown" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="ScheduleCurrentDayHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>headerPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleDay">
          <states>
            <state name="Normal" borderColor="LightGray" />
            <state name="Selected" backColor="255, 138, 22" foreColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleDayHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
            <state name="Selected" backColor="231, 146, 90" foreColor="Snow" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" backColor2="Chocolate" backGradientStyle="Vertical">
              <resources>
                <name>headerPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleDayOfWeekHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>scheduleDayOfWeekHeaderPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleMonthHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>headerPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleOwnerHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>headerPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleWeekHeader">
          <states>
            <state name="Normal" borderColor="Gainsboro" />
          </states>
        </style>
        <style role="ScrollBarArrowDown">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 3, 0, 3" />
          </states>
        </style>
        <style role="ScrollBarArrowUp">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 3, 0, 3" />
          </states>
        </style>
        <style role="ScrollBarThumbHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarThumbHorizontalPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbHorizontalPeach_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarThumbHorizontalPeach_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarThumbVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarThumbVerticalPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbVerticalPeach_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarThumbVerticalPeach_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarTrackHorizontalPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackSectionBottom">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
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
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarTrackVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarTrackVerticalPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="SpinButtonDownMaxValue">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 3, 3, 3" />
          </states>
        </style>
        <style role="SpinButtonDownNextItem">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 3, 3, 3" />
          </states>
        </style>
        <style role="SpinButtonUpMinValue">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 3, 3, 3" />
          </states>
        </style>
        <style role="SpinButtonUpPrevItem">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 3, 3, 3" />
          </states>
        </style>
        <style role="SpinButtonUpPrevPage">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" />
          </states>
        </style>
        <style role="StatusBarPanel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarPanelStateButton">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="StatusBarProgressBar">
          <states>
            <state name="Normal" borderColor="Gainsboro">
              <resources>
                <name>ultraProgressBarPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlClientArea">
          <states>
            <state name="Normal" borderColor="Gainsboro" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 11, 5, 0" />
          </states>
        </style>
        <style role="TabControlTabsAreaHorizontalBottom">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabControlTabsAreaHorizontalTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabControlTabsAreaVerticalLeft">
          <states>
            <state name="Normal" backColor="255, 243, 236" backColor2="White" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="TabControlTabsAreaVerticalRight">
          <states>
            <state name="Normal" backColor="255, 243, 236" backColor2="White" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="TabItemHorizontalBottom">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalBottomPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalBottomPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemHorizontalTop">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalTopPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalTopPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalLeft">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemVerticalLeftPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalLeftPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalRight">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemVerticalRightPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalRightPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TaskPaneToolbar">
          <states>
            <state name="Normal">
              <resources>
                <name>headerPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarCloseButton">
          <states>
            <state name="Normal" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="3, 3, 3, 3">
              <resources>
                <name>buttonPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="3, 3, 3, 3">
              <resources>
                <name>buttonPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarDockAreaTop">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarFloatingCaption">
          <states>
            <state name="Normal" foreColor="103, 67, 31">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAJwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAkElEQVQ4T63DQQfCAACG4a+/2trWzxgdxpI67DBKxC5dxg67dYkOo0N0iA6l6BDRISKitz/xPTwdLg1y4FTjKI4VjuKwxFHsSxzFboGj2M5wFG2Bo9jkOIr1GEexGuIomgRH/coIR33nXRz1mQY46l0EOOqV93DUcxLiqMcoxFH3LMJRtzTGUddBjKPOSR/HPxZQ3xVVs6j2AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="ToolbarGrabHandleHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarGrabHandleVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemButton">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemEditor">
          <states>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemFontList">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemLabel">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemMaskedEdit">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupColorPicker">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupControlContainer">
          <states>
            <state name="Normal" borderColor="Silver">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupMenu">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemProgressBar">
          <states>
            <state name="Normal" borderColor="231, 146, 90">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemQuickCustomize">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>buttonPeach_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonPeach_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemStateButton">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneLabel">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="103, 67, 31" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneMenuDropDownOnly">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>buttonPeach_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonPeach_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigationBack">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>buttonPeach_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonPeach_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigationForward">
          <states>
            <state name="Normal">
              <resources>
                <name>buttonPeach_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>buttonPeach_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>buttonPeach_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTextBox">
          <states>
            <state name="Normal">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>toolBarItemPeach_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TreeControlArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraCalculator">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraCalculatorButton">
          <states>
            <state name="Normal" fontBold="True" />
            <state name="HotTracked" foreColor="Chocolate" />
          </states>
        </style>
        <style role="UltraGroupBoxContentArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraGroupBoxHeader">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="UltraProgressBar" borderStyle="Raised">
          <states>
            <state name="Normal">
              <resources>
                <name>ultraProgressBarPeach_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraStatusBar">
          <states>
            <state name="Normal" backColor="White" backColor2="255, 242, 221" backGradientStyle="Vertical" />
          </states>
        </style>
        <style role="UltraTabControl">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="UltraTabStripControl">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" />
          </states>
        </style>
        <style role="UltraTextEditor">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>backgroundPeach</name>
              </resources>
            </state>
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
        <style role="UnpinnedTabItemHorizontal">
          <states>
            <state name="Normal" foreColor="103, 67, 31" fontBold="True">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAJwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAkElEQVQ4T63DQQfCAACG4a+/2trWzxgdxpI67DBKxC5dxg67dYkOo0N0iA6l6BDRISKitz/xPTwdLg1y4FTjKI4VjuKwxFHsSxzFboGj2M5wFG2Bo9jkOIr1GEexGuIomgRH/coIR33nXRz1mQY46l0EOOqV93DUcxLiqMcoxFH3LMJRtzTGUddBjKPOSR/HPxZQ3xVVs6j2AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalBottom">
          <states>
            <state name="Normal">
              <resources>
                <name>tabItemHorizontalBottomPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalBottomPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalTop">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>tabItemHorizontalTopPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemHorizontalTopPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemVerticalLeft">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>tabItemVerticalLeftPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalLeftPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemVerticalRight">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>tabItemVerticalRightPeach_Normal</name>
              </resources>
            </state>
            <state name="Selected">
              <resources>
                <name>tabItemVerticalRightPeach_Selected</name>
              </resources>
            </state>
          </states>
        </style>
      </styles>
      <sharedObjects>
        <sharedObject name="ScrollBar">
          <properties>
            <property name="MinimumThumbHeight">20</property>
            <property name="MinimumThumbWidth">20</property>
          </properties>
        </sharedObject>
      </sharedObjects>
    </styleSet>
  </styleSets>
  <resources>
    <resource name="backgroundPeach" backColor="White" borderColor="Gainsboro" backColor2="255, 242, 223" backGradientStyle="Vertical" />
    <resource name="buttonPeach_HotTracked" backColor="Transparent" foreColor="Black" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
    <resource name="buttonPeach_Normal" backColor="Transparent" foreColor="DimGray" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="4, 4, 4, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAzQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHgAAABcIBgAAABw//2oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABNklEQVRIS8WWsYqDQBCGvRdO7ikSxcJEAqIYsFLBxsYipoiNadKkSWNjJQElpNJCkP8cC+9k2+zcwie6hd/OCP7zBUD5l0XizWajpGn6bdt2N95DVVVst9uP4jhOdz6f1+SaiqULbei6juv1iq7rxq3PrWEY8H6/cblcQA5yzWI6TZ7n6PteKqfTCeSaxdTWpmnQtq1Uns/n9PkWYmqHbF6vlyiu6xocCBVXVQUOBHFZluBAEBdFAQ4E8ePxAAeC+H6/gwNBfLvdwIEgpj8XB4I4yzJwIIjHdAIHgjhJEnCwEFMGx3HMArnmkKCHMAwRRZFUgiDAQjwGdGdZFnzfl8rhcKBh4DeP9/v9inpvmiZc14XneR/leDxit9tN1ZLrb6sVwzBWmqZNM5cM6N3kWMxcdAJufgCgVl5uA14/WwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="buttonPeach_Pressed" backColor="Transparent" foreColor="Black" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
    <resource name="explorerBarGroupHeaderPeach_Active" imageBackgroundStyle="Stretched" />
    <resource name="explorerBarGroupHeaderPeach_HotTracked" imageBackgroundStyle="Stretched" borderAlpha="Transparent" imageBackgroundStretchMargins="5, 4, 5, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA8AEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAABWUlEQVQ4T53UTy8DQRzG8S3WujpJXF2cSLwCN1regHgHjt4Cjqo9kGjSaEp32xBOaKp/NlUlKhIRidLFohMSkRJNtNRjVtJE1xz6M8n3MIf5ZHdmdxyzQy0SH/2y0hH+rFZ7JYc1bW70DAxKhaNk52S0VpIsiGf4xrpCZUMHnk6b6uU8htBEH/jadQDSD+QdVVAxs8DjCamLTTf8493cqUMjCvBwTI7tBeF2ttmgYg4gxnYDAuj+ECDG0ksCyNwHiDHdL4BuMgAxlvIJICMNEGOJRbiHGza7HSikyLH4ggDKJwBiLDZvg1z8ic62ybEtD4daf31HLhlfuTA5tjHdCHk4VDtQyRXXpv5CH1kV1O5WBVAlo4LabcQOOWW8pzVypiaAyroGateqAHpLaqB2tWKD5virvcbD5ArLtuO3oNJOhNxlcMZ2/Bx6jkbI5QMCyMuv2/9U/0W+AQf3yNXGSF4wAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="explorerBarGroupHeaderPeach_Normal" foreColor="103, 67, 31" imageBackgroundStyle="Stretched" borderAlpha="Transparent" imageBackgroundStretchMargins="3, 3, 4, 2">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA+wEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAABZElEQVQ4T53U3ytDYRzH8XMwh/YHKH+BO38Gmx8jV3Jntl25oPyKmJYWa9tZdrEwJVtMIiIupJQL5WIZ0WRp0ZNS8qNTm18fz9TKzp6LfT31ujinzrunb+d5ZG9DmcRXvUGpWv18z9ZJspx7Lmkp1cbDjPbW0b//9SzlQlxqrrMmqsWXgNRWSV5OFzBrMZ7zbzcASL+hQLOCbCIKJPk7guu1IYS7anknH2pSgMsYGdubgs9UoQslIgAR25kUhHLzIWLbE4IQHx6I2OaoIHQSAojY+rAgdBwEiFhsAL7GgmFXAkd+MrbSJwgdeAAittyrC5n5jnadZCxs46HyP/+R2YDviJ2MqW2FIZWHPha7ye48LcWhzLwVVOnp1uKQFrKC6tatD5kMeA32kN24LLod8dCTaiNLOvXD5qFHr43salwX8vPQw4yd7GJMELp3O0B1NtJePKO0ywGq+KAgFODX7X/kj8gPp9xiiYHtXqAAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="gridColumnHeaderPeach_Normal" backColor="204, 204, 204" foreColor="103, 67, 31" borderColor="176, 71, 9" imageBackgroundStyle="Stretched" fontBold="True" fontSize="10" backGradientStyle="None" imageBackgroundStretchMargins="5, 5, 6, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAKgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAAAk0lEQVQ4T63VPwcCAQCG8bev2nV/PsbRECXdcMNR4rilJRraWqIhGuKGaCiOGyIaIiJ60nd4H36f4elc0wQ54rLCQZyXOIjTAgdRVziIY4mDOMxwEPsCB7HLcRDbCQ5iM8JBrFMc9K0iHPSZd3HQexrgoFcR4KBn3sNBjyzEQfdxiINuwwgHtYMYBzX9GAf9L+LwA9Cs3kfOP6AZAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="headerPeach_Normal" foreColor="103, 67, 31" imageBackgroundStyle="Stretched" fontBold="True">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAJwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAkElEQVQ4T63DQQfCAACG4a+/2trWzxgdxpI67DBKxC5dxg67dYkOo0N0iA6l6BDRISKitz/xPTwdLg1y4FTjKI4VjuKwxFHsSxzFboGj2M5wFG2Bo9jkOIr1GEexGuIomgRH/coIR33nXRz1mQY46l0EOOqV93DUcxLiqMcoxFH3LMJRtzTGUddBjKPOSR/HPxZQ3xVVs6j2AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="progressBarFillpeach_Normal" foreColor="Black" borderColor="IndianRed" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="4, 0, 0, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAJwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAkElEQVQ4T63DQQfCAACG4a+/2trWzxgdxpI67DBKxC5dxg67dYkOo0N0iA6l6BDRISKitz/xPTwdLg1y4FTjKI4VjuKwxFHsSxzFboGj2M5wFG2Bo9jkOIr1GEexGuIomgRH/coIR33nXRz1mQY46l0EOOqV93DUcxLiqMcoxFH3LMJRtzTGUddBjKPOSR/HPxZQ3xVVs6j2AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="scheduleDayOfWeekHeaderPeach_Normal" backColor="SandyBrown" foreColor="White" borderColor="Transparent" fontBold="True" backColor2="Chocolate" backGradientStyle="Vertical" />
    <resource name="scrollBarThumbHorizontalPeach_HotTracked" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="10, 0, 9, 0">
      <imageBackground>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</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalPeach_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="10, 3, 10, 3">
      <imageBackground>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</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontalPeach_Pressed">
      <imageBackground>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</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalPeach_HotTracked" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 9, 3, 9">
      <imageBackground>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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalPeach_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 9, 3, 10">
      <imageBackground>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</imageBackground>
    </resource>
    <resource name="scrollBarThumbVerticalPeach_Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 9, 3, 9">
      <imageBackground>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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="scrollBarTrackHorizontalPeach_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="10, 0, 12, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAANwIAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAAA8IBgAAAIxrbW0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABoElEQVRIS82VyW7CMBCGE0CoT8Gtpy7Hqrdeeu4rtVIr9SH6JH2CSogDS8S+KCyBQAARigqk5O/8loJCL5VAhUQaeyzb428m9owOQAt/zWbzJZlMPiQSifN4PH4Wi8U0XdeVcO3v9Tub/xiE7Cw8zzNWq9V7KpV63NkWHFKpVK7q9brTaDTQ7XYxGAwwHo8xnU4xm83guq4S6vtKYIM2R6MR+v0+2u22Xa1Wb7bOUimVStfFYtETKLRaLViWBcdxFMBiscByuYR4g/V6fbDQDm1OJhPltABBAuEJw62KPptcLjcXgZDCNE3Ytq02BDASXvi+L0sP/zabjXJwPp8rpzudDmq1GiQgrgIS5TWdToNAnCDxcDhUv+q/gMJR6vV6jBAKhQLlTZPGDAOR+FhAdJrXIwCSoFhaNpv9JlA+n1cTxwbixZaXDcMwkMlkfI0wpwTixQ6AyBG9CEXuDkXulUUuDxGoXC5fnjpTy/n320xNRcrGxQlr2d1OLQsG7KW4Pksuykt++GKCZHpnkWUpYc/xvhKy8ynP/UPK1FP4bOo/a62Bx7q22BQAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="scrollBarTrackVerticalPeach_Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 11, 0, 13">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAUgIAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAACQIBgAAAFa9YL8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABu0lEQVRIS+1VSW7CQBAckHhDPuEH5JBzDsk38hMOfCLfyCeQwOwGgUBmD2CzBGyBgU5Xy2MFIWNxywFLxXi6qsbb0JUiIvX3qNVqn+fz+T0IgiceU+l0mjKZzDePX4ZhfFyIYQaq1eqLaZpePp+nOIAvl8tv2iNGy7Ke+YpHXoB4jFCv1y/mIX/k+qvcMX46nY7TbreJR+p2u4JerxdB18CHOkfMLMrZtk2DwYBGoxFNJhOaTqdXQB08dNDDp7hQADGbzchxHFoul7EAD124UEHxxFssFrRer2m73dJut4sFeOigh09htdVqRZ7n0X6/TwR00MOnXNelzWYjptPplAjooIdProzJ4XDgF5h8QAe9XFk/7z1m/dwPc/LLlq/yeGH8T3nssPjd8k82iW5DuB2Ol0ToThK1IWx03/eJ8ykR0EEvbQgtFCf3tN6wf3tqOBya4/FYEmI+n8uKcQAPHfTwKc6hrM6mfr8vccLEFVAHjwwLsysrQddqtVwkYqPREHBqXkFz0EEfpWSz2TRKpdLxVjZrDjroIzNOUODg/rm1AHhtvDDrtOfby3GI25VKJSgWi4QRc9S1Ro+/Ha/IE9V6r0YAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemHorizontalBottomPeach_Normal" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="7, 0, 9, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAVAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAvUlEQVRIS+2WPQvCMBCGz///pwQnJycHOygoIqWihdhqa+5e77KILpm0N+TgKfmA5OHNDZ3xZg7yVCbkCfIkk16rCGVapCSUa5GSUEkol0Bu32EPVQuwI4i3S3iCeL+CJyge1/AExbqCJyg2O3iBLwf9/WhPsIELwhkkfYsk5QAZehCEIWrGoZkU6a6wovSNI1gXpsJeyYJ5C9mII+RxU8J/GTqVkSTzKZSmuqFieI7KABnvP8HOTnfYXV/1ArWe8Bu4QoZlAAAAAElFTkSuQmCCCwAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemHorizontalBottomPeach_Selected" foreColor="103, 67, 31" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="9, 0, 9, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAdAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA3UlEQVRIS+2SPQrCQBSEnxey9w4ewjt4AascQKwF7Wy0sgxioaAQS/8KYwoRxSii+dtkd3QtFGxSaV6RgW/ZZWHfMDsFUSuCOEkb4gRxMvP6rdxQSkXyhNIqkieUJ5SWQNo9vw5FRgmcoKheBicoaFbACfI7VXCCvL4BTpBvNsCFYNQChVYXwbjNArEcgOKthXDWY0HiOiAlAojVEGJuZkq8mUCL9CK9C4Q9zQ7HgoqjjyG9U5GH5LBGsl/8FXmygUS8zLwTep+UhArvUDcX8nqEPO9+w/NtPUOH8K0HJ5S0C9bRzZYAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemHorizontalTopPeach_Normal" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="9, 8, 11, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAATAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAAtUlEQVRIS+2S3QrCMAyFU9//4UQQBC8Ehwwd6FjVTrfk2HYi9qoXgstFAx8lTX8OJzHwQd8RUsh7Jy0l535KzHTb+NUs0peCoBgiwPCAPN2f6f3f/JFBkxiG9FePnQ3wEKVEQeI68O0yK3JvozEUWsS2UYE46wUFZ9paB90JFMWcKzXQ2OygCRqPW2iCuN5AE8SHNTRBXK2gCZL9EpoognLdKA4Vh3IO5OplhopDOQdydXUz9AJsPyQuYLShtAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemHorizontalTopPeach_Selected" foreColor="103, 67, 31" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="8, 8, 8, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAdwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAJAAAABgIBgAAAJK4X04AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA4ElEQVRIS+2Sv2pCMRyFz73i67j3HfoQvoMv4OQDSOcObi7t1MHhriIFO4mCIOJwK+1gVfD+yU3uMWaobplaf0MO+SAkkBy+JKINbmMq0Gi7Utth+YvEsT01RhQ3gEYTiKLrLZdCLkbTHL5pdun/8rNlXRW/NeBmWlF/Lam3i7tR50dXxRWq0hnV+v2+bKbOFMz+k2qeiECnc0KtJiw+XkVQzkZEMX1hPh6IAVnyREng9NajJJANO5QE8uc2JYGy/0hJoOw9UBJQ3RYlEQr5XiMYCoZ8Bnz74Q8FQz4Dvv0zzee6bWHoZgcAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeftPeach_Normal" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="8, 8, 0, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAcQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA2klEQVRIS+2Xuw7CMAxF3f//KSQmJiYGOoAEQoAqlUIpfST2JSnQkSJRb7YUxUtyEidOrhMEo49BCO2D4Goi3xLYE4kLvqOEu9C/G3gYMupEQG/sII8CXGbg4gjO9/DZFv6cwh9W4N0SvFmA0zl4Pfu5UT+5MKQpwdVFByBdowiIq+9qRQB7bUA4XN0dGOB7ToRstRBZiP5+Te0WjXw+lmijf7OFyEI0hbLTf4vUdZE2QERZeEV17VpFbdrL97CL5q4n3181QoDUN536YKhyIicK4SoHX0+TVDhPQso+EoHO76UAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeftPeach_Selected" foreColor="103, 67, 31" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="6, 7, 0, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAoAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABCUlEQVRIS+1XO24CMRCdzYHouUMOkTtwASoOgKgp0lHRkJIWISSQkKJEigRRhDYIxHfZj21sP9aIbVkKpvNI1rixn/zsN34TIA+6BbQku56T2S/IRitCFhFEREG8pSDZ0ku8IXJzlRRLyrMDcGGzCOpvDPXVh5h0kQ3ekfZbSD4aSDs1ZO03yOYrZKMKVa88POi6+VlAL7+hfkcMANbC7JeMAFrC7EI+AKtSZgBxYgbIXw8vRR6gRHTkFOzv4F5t8hSVlm1PkafoCZ++r0VlHskL7QGhiZj5R+M2XtCK9wTOXZvjms+bXpsDo6FXP0z2vehAcqrO4SdDf1AA3LI5/EPNhpDT3lM6nAvZSRC1UJZxPgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabItemVerticalRightPeach_Normal" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" imageBackgroundStretchMargins="0, 7, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAdAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAAA3UlEQVRIS+2XQQvCMAyFO9SJ+v//j+DJkycP7qCgiMhEB3M6tybPdjBRFN0OAQ8phNz6teGlfQloMYZps4KOMd2wCnR87pkgHLncd3noYvC6mwe0imgCWk5B6xnsdg67j2DjFei4ASU7cHYCmFAv02pzf5gfAEpj8CV5QEQA5G7Bt6y6hBwgTwGywoCykAVwmQsDiqsC3hvN90ElU6ci1hJ9eou0RI1eU1XR1x9NVaQqauCRGtgWbbR/ajRh2wJp4yVsHc/O+rKc8fKnF3HXnB4AWwgMIH66eRo8asIdQ5kZo4i7fQsAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="tabItemVerticalRightPeach_Selected" foreColor="103, 67, 31" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 7, 8, 8">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAoQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAACQIBgAAAJPP+i4AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsQAAALEAGtI711AAABCklEQVRIS2P81aD3n4EE8J+Nm4GBR5jhH48Iw39uYYb/QDaziBIDI784A7OoEgOzkByqaSALSME/2yz//5zk8//7vIT/31YW//+6te3/t71T/n8/tuj/j3Pr//++d/L/v98//sMAAymGg9QSsuDXtb3/fz08+///n19gO2hjwf1T//++uU9bC/48v/7/38+vtPMB2ILPb2lrwd8PL2hswbunoxZgZjRwPgAmU1Ak/x0NImxl0WgQEVeajqYifDXaaCoaTUWE20hENVtGM9rgyWjvn9O2VUHzhte/H19o6IOXt/7///eXdhaAGr60ab7fPPj/79f31O+A/Di77v/vB2f///v1HW44iAEAP57PmSZ5xfMAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="toolBarItemPeach_HotTracked" backColor="255, 228, 213" foreColor="SaddleBrown" borderColor="Transparent" backColor2="White" backGradientStyle="Vertical" />
    <resource name="ultraProgressBarPeach_Normal" backColor="Transparent" foreColor="Black" borderColor="Gray" imageBackgroundStyle="Stretched" backGradientStyle="None" imageBackgroundStretchMargins="1, 0, 4, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAEAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEgAAABcIBgAAAAYDH+QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAArvAAAK7wF9dopIAAAAeUlEQVQ4T63MWQ6CUBQE0Xb/u3uXP8IkYpA4KziglC6iKzm/tWIakCPGHQ7i3uMgblscxLXDQVw2OIhzi4M4NTiIY42DOFQ4iH2JgxhyHLR0gYOWNuGg7zrhoE+TcNBcBw56V4GDXmXgoGcROOhRZDhoyjMcNP5HDj8mp83LQ2868gAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
  </resources>
</styleLibrary>