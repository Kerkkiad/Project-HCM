*** Keywords ***
[HCM][Assignment] เลือก Location
    Sleep    5s
    Browser.Fill Text    ${HCM.EmpLocation_Dropdown}    ${TC02_002.Emp_Location}
    Browser.Click    ${HCM.EmpLocation_ItemList}

[HCM][Assignment] เลือก Level
    Sleep    5s
    Browser.Fill Text    ${HCM.EmpLevel_Dropdown}    ${common.Level}
    Sleep    3s
    Browser.Click    ${HCM.EmpLevel_ItemList}
