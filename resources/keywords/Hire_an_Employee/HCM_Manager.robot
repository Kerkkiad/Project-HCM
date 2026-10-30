*** Keywords ***
[HCM][Manager] กดปุ่ม Edit Manager
    Sleep    10s
    Browser.Click    ${HCM.EmpEditManager_Button}

[HCM][Manager] เลือก Manager Name
    Browser.Click    ${HCM.EmpManagerName_Dropdown}
    Sleep    3s
    Browser.Clear Text    ${HCM.EmpManagerName_Dropdown}
    Browser.Fill Text    ${HCM.EmpManagerName_Dropdown}    ${TC02_002.Emp_ManagerName}
    Browser.Click    ${HCM.EmpManagerName_ItemList}

[HCM][Manager] กดปุ่ม Save Manager
    Browser.Click    ${HCM.EmpManagerSave_Button}

[HCM][Manager] กดปุ่ม Submit
    Sleep    5s
    Browser.Click    ${HCM.EmpSubmit_Button}

[HCM][Manager] ตรวจสอบระบบ พากลับมาหน้าหลัก
    Sleep    5s
    Browser.Wait For Elements State    ${HCM.EmpSuccess_MsgText}    visible    timeout=45s
    Browser.Get Text    ${HCM.EmpSuccess_MsgText}    contains    ${TC02_002.Emp_ExpectTextMsg}
