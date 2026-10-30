*** Keywords ***
[HCM][PersonalDetail] กรอกข้อมูล Personal
    Sleep    10s
    Browser.Fill Text    ${HCM.EmpPersonal_Input}    ${common.PrefixPersonal}${DYNAMIC.Datetime}

[HCM][PersonalDetail] เลือก Title TH
    Browser.Click    ${HCM.EmpTitleTH_Dropdown}
    Browser.Click    ${HCM.EmpTitleTH_ItemList}

[HCM][PersonalDetail] กรอกข้อมูล First Name
    Browser.Fill Text    ${HCM.EmpFirstName_Input}    ${common.PrefixPersonal}

[HCM][PersonalDetail] กรอกข้อมูล Last Name
    Browser.Fill Text    ${HCM.EmpLastName_Input}    ${DYNAMIC.Datetime}

[HCM][PersonalDetail] เลือก Title EN
    Browser.Click    ${HCM.EmpTitleEN_Dropdown}
    Browser.Click    ${HCM.EmpTitleEN_ItemList}
