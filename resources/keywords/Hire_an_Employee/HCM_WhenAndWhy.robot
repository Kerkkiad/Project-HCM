*** Keywords ***
[HCM][When&Why] กดเลือก Managers
    Sleep    10s
    Browser.Wait For Elements State    ${HCM.EmpRole_Button}    visible    timeout=45s
    Browser.Click    ${HCM.EmpRole_Button}

[HCM][When&Why] กดปุ่ม Continue
    Sleep    15s
    Browser.Wait For Elements State    ${HCM.EmpContinue_Button}    visible    timeout=15s
    Browser.Click    ${HCM.EmpContinue_Button}

[HCM][When&Why] เลือกวันที่ จ้างงาน
    Sleep    10s
    ${today}=    [Common][HCM] Get Dynamic Date    DD-MM-YYYY
    Browser.Wait For Elements State    ${HCM.EmpDate_Date}    visible    timeout=15s
    Browser.Fill Text    ${HCM.EmpDate_Date}    ${today}
    Browser.Keyboard Key    press    Tab

[HCM][When&Why] เลือก Legal Employer
    Sleep    5s
    Browser.Fill Text    ${HCM.EmpLegalEmployer_Dropdown}    ${common.BOTSite}
    Sleep    3s
    Browser.Click    ${common.BOT_ItemList}

[HCM][When&Why] เลือก What's the way to hire an employee?
    Sleep    5s
    Browser.Fill Text    ${HCM.EmpHire_Dropdown}    ${TC02_002.Emp_Hire}
    Browser.Click    ${HCM.EmpHire_ItemList}

[HCM][When&Why] เลือก Why are you hiring an employee?
    Browser.Fill Text    ${HCM.EmpReason_Dropdown}    ${TC02_002.Emp_Reason}
    Browser.Click    ${HCM.EmpReason_ItemList}

[HCM][When&Why] เลือก Business Unit
    Browser.Fill Text    ${HCM.EmpBusiness_Dropdown}    ${common.BOTSite}
    Sleep    3s
    Browser.Click    ${common.BOT_ItemList}

[HCM][When&Why] เลือก Position
    Sleep    5s
    Browser.Fill Text    ${HCM.EmpPosition_Dropdown}    ${TC02_002.Emp_PositionCode}
    Sleep    3s
    Browser.Click    ${HCM.EmpPosition_ItemList}
