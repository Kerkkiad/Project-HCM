*** Keywords ***
[HCM][SchNewProcess] กดปุ่ม Scheduled New Process
    Browser.Wait For Elements State    ${HCM.ScheduledNew_Button}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledNew_Button}

[HCM][SchNewProcess] กดเลือก Name
    Browser.Wait For Elements State    ${HCM.ScheduledName_Dropdown}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledName_Dropdown}

[HCM][SchNewProcess] กดเลือก Search ...
    Browser.Wait For Elements State    ${HCM.ScheduledSearch_Link}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledSearch_Link}

[HCM][SchNewProcess] กรอกข้อมูล Name
    Browser.Wait For Elements State    ${HCM.ScheduledName_Input}    visible    timeout=10s
    Browser.Fill Text    ${HCM.ScheduledName_Input}    ${TC05_001.SchNewProcess_Name}

[HCM][SchNewProcess] กดปุ่ม Search หน้าต่าง
    Browser.Wait For Elements State    ${HCM.ScheduledSearch_Button}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledSearch_Button}

[HCM][SchNewProcess] กดเลือก Manage Goal Scheduled Process
    Browser.Wait For Elements State    ${HCM.ScheduledName_ItemList}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledName_ItemList}

[HCM][SchNewProcess] กดปุ่ม OK หน้าต่าง
    Browser.Wait For Elements State    ${HCM.ScheduledOKSearch_Button}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledOKSearch_Button}

[HCM][SchNewProcess] กดปุ่ม OK หน้าหลัก
    Browser.Wait For Elements State    ${HCM.ScheduledOKMain_Button}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledOKMain_Button}

[HCM][SchNewProcess] กด Process Type
    Browser.Wait For Elements State    ${HCM.ScheduledProcessType_Dropdown}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledProcessType_Dropdown}

[HCM][SchNewProcess] เลือก Assign Goal
    Browser.Wait For Elements State    ${HCM.ScheduledProcessType_ItemList}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledProcessType_ItemList}

[HCM][SchNewProcess] กด Process Name
    Browser.Wait For Elements State    ${HCM.ScheduledProcessName_Dropdown}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledProcessName_Dropdown}

[HCM][SchNewProcess] เลือก 2026 Annual Performance Evaluation Plan
    Browser.Wait For Elements State    ${HCM.ScheduledProcessName_ItemList}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledProcessName_ItemList}

[HCM][SchNewProcess] กดปุ่ม Submit
    Browser.Wait For Elements State    ${HCM.ScheduledProcessSubmit_Button}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledProcessSubmit_Button}

[HCM][SchNewProcess] เก็บค่า ProcessID
    ${full_text}=    Browser.Get Text    ${HCM.ScheduledProcessID_Text}
    ${regex_matches}=    String.Get Regexp Matches    ${full_text}    \\d+
    ${extracted_id}=    Set Variable    ${regex_matches}[0]
    Set Suite Variable    ${DYNAMIC_PROCESS_ID}    ${extracted_id}
    Log To Console    \\n+[SDET Info] Successfully Extracted Process ID: ${DYNAMIC_PROCESS_ID}

[HCM][SchNewProcess] กดปุ่ม Confirm OK
    Browser.Wait For Elements State    ${HCM.ScheduledProcessConfirm_Button}    visible    timeout=10s
    Browser.Click    ${HCM.ScheduledProcessConfirm_Button}

[HCM][SchNewProcess] กด Refresh และตรวจสอบ Process Status
    [Arguments]    ${process_id}
    Browser.Click    ${HCM.ScheduledProcessRefresh_Button}
    ${target_row_locator}=    String.Replace String    ${HCM.ScheduledProcessStatus_Table}    {PROCESS_ID}    ${process_id}
    Sleep    2s
    Browser.Wait For Elements State    ${target_row_locator}    visible    timeout=2s

[HCM][SchNewProcess] ตรวจสอบสถานะ Succeeded
    Wait Until Keyword Succeeds    10x    5s    [HCM][SchNewProcess] กด Refresh และตรวจสอบ Process Status    ${DYNAMIC_PROCESS_ID}
