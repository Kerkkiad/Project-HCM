*** Keywords ***
[HCM][PaymentMethod] กดปุ่ม Add
    Browser.Wait For Elements State    ${HCM.PayMethodAdd_Button}    visible    timeout=45s
    Browser.Click    ${HCM.PayMethodAdd_Button}

[HCM][PaymentMethod] กรอกข้อมูล What do you want to call this payment method?
    Browser.Wait For Elements State    ${HCM.PayMethodCallPay_Input}    visible    timeout=45s
    Browser.Fill Text    ${HCM.PayMethodCallPay_Input}    ${DYNAMIC.Datetime} ${TC02_004.PayMethod_PrefixName}

[HCM][PaymentMethod] กรอกข้อมูล Account Number
    Browser.Fill Text    ${HCM.PayMethodAccountNumber_Input}    ${DYNAMIC.AccountNumber}

[HCM][PaymentMethod] เลือกข้อมูล Bank
    Browser.Click    ${HCM.PayMethodBank_Dropdown}
    Browser.Fill Text    ${HCM.PayMethodBank_Dropdown}    ${TC02_004.PayMethod_Bank}
    Browser.Click    ${HCM.PayMethodBank_ItemList}

[HCM][PaymentMethod] เลือกข้อมูล Bank Branch
    Sleep    5s
    Browser.Fill Text    ${HCM.PayMethodBankBranch_Dropdown}    ${TC02_004.PayMethod_BankBranch}
    Sleep    3s
    Browser.Click    ${HCM.PayMethodBankBranch_ItemList}
    Browser.Keyboard Key    press    Tab

[HCM][PaymentMethod] กดปุ่ม Create
    Browser.Press Keys    ${HCM.PayMethodCreate_Button}    Enter

[HCM][Account] ตรวจสอบระบบ สร้างบัญชีรับเงินสำเร็จ
    ${TextSuccess}=    Format String    ${HCM.PaymentMethodSuccess_MsgText}    DateTime=${DYNAMIC.Datetime}
    TRY
        Browser.Wait For Elements State    ${TextSuccess}    visible    timeout=60s
        Browser.Get Text    ${TextSuccess}    contains    ${DYNAMIC.Datetime} ${TC02_004.PayMethod_PrefixName}
    EXCEPT
        Log To Console    [HCM][Account] AccountNumber Duplicate
        Fail    AccountNumber Duplicate (Account number already exists)
    END

[HCM][PaymentMethod] กดปุ่ม Delete
    Browser.Wait For Elements State    ${HCM.PayMethodDelete_Button}    visible    timeout=45s
    Browser.Click    ${HCM.PayMethodDelete_Button}

[HCM][PaymentMethod] กดปุ่ม Confirm Delete
    Sleep    5s
    Browser.Wait For Elements State    ${HCM.PayMethodConfirmDel_Button}    visible    timeout=45s
    Browser.Click    ${HCM.PayMethodConfirmDel_Button}

[HCM][Account] ตรวจสอบระบบ ลบบัญชีรับเงินสำเร็จ
    Sleep    5s
    ${TextFail}=    Format String    ${HCM.PaymentMethodSuccess_MsgText}    DateTime=${DYNAMIC.Datetime}
    TRY
        Browser.Wait For Elements State    ${TextFail}    hidden    timeout=60s
    EXCEPT
        Log To Console    [HCM][Account] Delete Fail because AccountNumber Duplicate
        Fail    Delete Fail (Element did not become hidden)
    END
