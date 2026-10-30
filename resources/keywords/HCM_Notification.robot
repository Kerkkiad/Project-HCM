*** Keywords ***
[HCM][Notification] Manager กดปุ่ม Approve
    ${TextApprove}=    Format String    ${HCM.NotiApprove_Button}    DateTime=${DYNAMIC.Datetime}
    Browser.Wait For Elements State    ${TextApprove}    visible    timeout=45s
    Browser.Click    ${TextApprove}

[HCM][Notification] ตรวจสอบข้อความ Done
    Browser.Wait For Elements State    ${HCM.NotiSuccess_MsgText}    visible    timeout=10s
    Browser.Get Text    ${HCM.NotiSuccess_MsgText}    contains    ${common.NotificationDone}
