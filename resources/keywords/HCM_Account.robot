*** Keywords ***
[HCM][Account] กดปุ่ม Add User Account
    Browser.Click    ${HCM.AccountAddUser_Button}

[HCM][Account] กดเลือก Person Type
    Browser.Click    ${HCM.AccountPersonType_Dropdown}
    Browser.Click    ${HCM.AccountPersonType_ItemList}

[HCM][Account] กดปุ่ม Search User Account
    Browser.Click    ${HCM.AccountSearchUser_Button}

[HCM][Account] กรอกข้อมูล Worker Name
    Browser.Fill Text    ${HCM.AccountWorkerName_Input}    ${common.PrefixPersonal} ${DYNAMIC.Datetime}
    Browser.Keyboard Key    press    Enter
    ${Locator}=    Format String    ${HCM.AccountWorkerName_ItemList}    Time=${DYNAMIC.Datetime}
    Browser.Wait For Elements State    ${Locator}    visible    timeout=60s
    Browser.Click    ${Locator}

[HCM][Account] กดปุ่ม OK
    Sleep    5s
    Browser.Wait For Elements State    ${HCM.AccountOK_Button}    visible    timeout=45s
    Browser.Click    ${HCM.AccountOK_Button}

[HCM][Account] กรอกข้อมูล Email
    Sleep    15s
    Browser.Wait For Elements State    ${HCM.AccountEmail_Input}    visible    timeout=60s
    Browser.Fill Text    ${HCM.AccountEmail_Input}    ${TC02_003.Account_Email}
    Browser.Keyboard Key    press    Enter

[HCM][Account] กรอกข้อมูล User Name
    Sleep    5s
    Browser.Wait For Elements State    ${HCM.AccountUsername_Input}    visible    timeout=60s
    Browser.Clear Text    ${HCM.AccountUsername_Input}
    Browser.Fill Text    ${HCM.AccountUsername_Input}    ${TC02_003.Account_Username}${DYNAMIC.Datetime}

[HCM][Account] กรอกข้อมูล Password
    Browser.Wait For Elements State    ${HCM.AccountPassword_Input}    visible    timeout=60s
    Browser.Fill Text    ${HCM.AccountPassword_Input}    ${DYNAMIC.Password}

[HCM][Account] กรอกข้อมูล Confirm Password
    Browser.Wait For Elements State    ${HCM.AccountRePassword_Input}    visible    timeout=60s
    Browser.Fill Text    ${HCM.AccountRePassword_Input}    ${DYNAMIC.Password}

[HCM][Account] กดปุ่ม Add Auto-Provisioned Roles
    Browser.Wait For Elements State    ${HCM.AccountAutoAdd_Button}    visible    timeout=60s
    Browser.Click    ${HCM.AccountAutoAdd_Button}

[HCM][Account] กดปุ่ม Save and Close
    Sleep    5s
    Browser.Wait For Elements State    ${HCM.AccountSave_Button}    visible    timeout=60s
    Browser.Click    ${HCM.AccountSave_Button}

[HCM][Account] ตรวจสอบระบบ กลับไปหน้า User Accounts
    Browser.Wait For Elements State    ${HCM.AccountSuccess_MsgText}    visible    timeout=60s
    Browser.Get Text    ${HCM.AccountSuccess_MsgText}    contains    ${TC02_003.Account_ExpectTextMsg}
