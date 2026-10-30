*** Keywords ***
[Common][HCM] เปิด browser url
    [Arguments]    ${URL}
    Set Browser Timeout    45 seconds
    New Browser    chromium    headless=True
    New Context    acceptDownloads=True
    New Page    ${URL}

[Common][HCM] Log in ด้วย user และ pass
    [Arguments]    ${USER}    ${PASSWORD}
    ${decoded_password}=    Evaluate    __import__('base64').b64decode($PASSWORD).decode('utf-8').strip()
    Browser.Fill Text    ${common.LoginUser_Input}    ${USER}
    Browser.Type Secret    ${common.LoginPass_Input}    ${decoded_password}
    Browser.Click    ${common.LoginNext_Button}

[Common][HCM] กดเข้าหน้า Home
    Browser.Wait For Elements State    ${common.MenuHome_Menu}    visible    timeout=10s
    Browser.Click    ${common.MenuHome_Menu}

[Common][HCM] กดเข้าหน้า Notification
    Browser.Wait For Elements State    ${common.MenuNoti_Menu}    visible    timeout=10s
    Browser.Click    ${common.MenuNoti_Menu}

[Common][HCM] กด Tab My Client Group
    Browser.Wait For Elements State    ${common.MyClientGroup_Tab}    visible    timeout=10s
    Browser.Click    ${common.MyClientGroup_Tab}

[Common][HCM] กด Tab Tool
    Browser.Wait For Elements State    ${common.Tool_Tab}    visible    timeout=10s
    Browser.Click    ${common.Tool_Tab}

[Common][HCM] กด Sidebar Hire an Employee
    Browser.Wait For Elements State    ${common.HireEmp_SideBar}    visible    timeout=10s
    Browser.Click    ${common.HireEmp_SideBar}

[Common][HCM] กดไอคอน Workforce
    Browser.Wait For Elements State    ${common.Workforce_IconMenu}    visible    timeout=10s
    Browser.Click    ${common.Workforce_IconMenu}

[Common][HCM] กดไอคอน Scheduled Process
    Browser.Wait For Elements State    ${common.ScheduledPC_IconMenu}    visible    timeout=10s
    Browser.Click    ${common.ScheduledPC_IconMenu}

[Common][HCM] กดไอคอน Security Console
    Browser.Wait For Elements State    ${common.SecurityCS_IconMenu}    visible    timeout=10s
    Browser.Click    ${common.SecurityCS_IconMenu}

[Common][HCM] กดไอคอน Pay
    Browser.Wait For Elements State    ${common.Pay_IconMenu}    visible    timeout=10s
    Browser.Click    ${common.Pay_IconMenu}

[Common][HCM] กดไอคอน Career Performance
    Browser.Wait For Elements State    ${common.Performance_IconMenu}    visible    timeout=10s
    Browser.Click    ${common.Performance_IconMenu}

[Common][HCM] กดรายการ Positions
    Browser.Wait For Elements State    ${common.PositionsList_ListMenu}    visible    timeout=10s
    Browser.Click    ${common.PositionsList_ListMenu}

[Common][HCM] กด Card PayMethod
    Browser.Wait For Elements State    ${common.PayMethod_Card}    visible    timeout=10s
    Browser.Click    ${common.PayMethod_Card}

[Common][HCM] กด Card Goals Center
    Browser.Wait For Elements State    ${common.GoalCenter_Card}    visible    timeout=45s
    Browser.Click    ${common.GoalCenter_Card}

[Common][HCM] กด Sidebar Users
    Browser.Wait For Elements State    ${common.Users_SideBar}    visible    timeout=10s
    Browser.Click    ${common.Users_SideBar}

[Common][HCM] Wait Hire an Employee status success
    Sleep    3m

[Common][HCM] Wait Data in Notification Manage
    Sleep    90s

[Common][HCM] Get Dynamic Date
    [Arguments]    ${format_type}=TIMESTAMP    ${offset}=0 days
    IF    '${format_type}' == 'TIMESTAMP'
        ${pattern}=    Set Variable    %Y%m%d%H%M%S
    ELSE IF    '${format_type}' == 'DDMMYYYY'
        ${pattern}=    Set Variable    %d%m%Y
    ELSE IF    '${format_type}' == 'DD-MM-YYYY'
        ${pattern}=    Set Variable    %d-%m-%Y
    ELSE IF    '${format_type}' == 'YYYY-MM-DD'
        ${pattern}=    Set Variable    %Y-%m-%d
    ELSE
        ${pattern}=    Set Variable    ${format_type}
    END
    ${generated_date}=    Get Current Date    increment=${offset}    result_format=${pattern}
    RETURN    ${generated_date}

[Common][HCM] Generate Dynamic Credentials
    ${timestamp}=    [Common][HCM] Get Dynamic Date    TIMESTAMP
    ${username}=    Set Variable    ${timestamp}
    ${random_letters}=    Generate Random String    4    [LETTERS]
    ${random_numbers}=    Generate Random String    6    [NUMBERS]
    ${random_account_numbers}=    Generate Random String    10    [NUMBERS]
    ${pass}=    Set Variable    ${random_letters}${random_numbers}
    ${encoded_pass}=    Evaluate    __import__('base64').b64encode($pass.encode('utf-8')).decode('utf-8')
    &{DYNAMIC}=    Create Dictionary    Datetime=${username}    Password=${pass}    EncodedPass=${encoded_pass}    AccountNumber=${random_account_numbers}
    Set Suite Variable    &{DYNAMIC}
