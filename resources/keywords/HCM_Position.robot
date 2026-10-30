*** Keywords ***
[HCM][Position] กดปุ่ม Add Position
    Browser.Wait For Elements State    ${HCM.PositionAdd_Button}    visible    timeout=45s
    Browser.Click    ${HCM.PositionAdd_Button}

[HCM][Position] เลือกวันที่ Effective Start Date
    ${yesterday}=    [Common][HCM] Get Dynamic Date    DDMMYYYY    -1 day
    Browser.Click    ${HCM.PositionDate_Date}
    Browser.Keyboard Input    type    ${yesterday}    delay=50ms

[HCM][Position] เลือก Business Unit
    Browser.Fill Text    ${HCM.PositionUnit_Dropdown}    ${common.BOTSite}
    Browser.Click    ${HCM.PositionUnit_ItemList}

[HCM][Position] กรอกข้อมูล Name
    Browser.Fill Text    ${HCM.PositionName_Input}    ${TC02_001.Position_PrefixName}${DYNAMIC.Datetime}

[HCM][Position] กรอกข้อมูล Code
    Browser.Fill Text    ${HCM.PositionCode_Input}    ${TC02_001.Position_PrefixCode}${DYNAMIC.Datetime}

[HCM][Position] เลือก Department Seated
    Sleep    5s
    Browser.Fill Text    ${HCM.PositionDepartment_Dropdown}    ${TC02_001.Position_Department}
    Browser.Wait For Elements State    ${HCM.PositionDepartment_ItemList}    visible    timeout=45s
    Browser.Click    ${HCM.PositionDepartment_ItemList}

[HCM][Position] เลือก Job
    Sleep    5s
    Browser.Fill Text    ${HCM.PositionJob_Dropdown}    ${common.dummy}
    Browser.Wait For Elements State    ${HCM.PositionJob_ItemList}    visible    timeout=45s
    Browser.Click    ${HCM.PositionJob_ItemList}

[HCM][Position] เลือก Level
    Browser.Fill Text    ${HCM.PositionLevel_Dropdown}    ${common.Level}
    Browser.Wait For Elements State    ${HCM.PositionLevel_ItemList}    visible    timeout=45s
    Browser.Click    ${HCM.PositionLevel_ItemList}

[HCM][Position] กรอกข้อมูล Hot Job Allowance
    Browser.Fill Text    ${HCM.PositionHotJob_Input}    ${TC02_001.Position_HotJob}

[HCM][Position] กดปุ่ม Add Grades
    Browser.Click    ${HCM.PositionAddGrade_Button}

[HCM][Position] เลือกข้อมูล Grades
    Browser.Fill Text    ${HCM.PositionGrade_Dropdown}    ${common.dummy}
    Browser.Wait For Elements State    ${HCM.PositionGrade_ItemList}    visible    timeout=45s
    Browser.Click    ${HCM.PositionGrade_ItemList}

[HCM][Position] กดปุ่ม Save Grades
    Sleep    5s
    Browser.Click    ${HCM.PositionSave_Button}

[HCM][Position] กดปุ่ม Submit
    Browser.Click    ${HCM.PositionSubmit_Button}
    Sleep    2ms
    Browser.Click    ${HCM.PositionSubmit_Button}

[HCM][Position] ตรวจสอบ Msg Text Created Success
    Sleep    5s
    Browser.Wait For Elements State    ${HCM.PositionSuccess_MsgText}    visible    timeout=90s
    Browser.Get Text    ${HCM.PositionSuccess_MsgText}    ==    ${TC02_001.Position_ExpectTextMsg}
