*** Keywords ***
[HCM][Performance] กดปุ่ม Add
    Browser.Wait For Elements State    ${HCM.PerformanceAdd_Button}    visible    timeout=45s
    Browser.Click    ${HCM.PerformanceAdd_Button}

[HCM][Performance] กรอกข้อมูล What's the name of this goal?
    Browser.Wait For Elements State    ${HCM.PerformanceGoalName_Input}    visible    timeout=45s
    Browser.Fill Text    ${HCM.PerformanceGoalName_Input}    ${TC05_001.Performance_GoalName}${DYNAMIC.Datetime}

[HCM][Performance] กรอกข้อมูล Any additional info you want to add?
    Browser.Wait For Elements State    ${HCM.PerformanceAdditional_Input}    visible    timeout=45s
    Browser.Fill Text    ${HCM.PerformanceAdditional_Input}    ${common.ThisIs}

[HCM][Performance] กรอกข้อมูล What will indicate that this goal is achieved?
    Browser.Wait For Elements State    ${HCM.PerformanceAchieved_Input}    visible    timeout=45s
    Browser.Fill Text    ${HCM.PerformanceAchieved_Input}    ${common.ThisIs}

[HCM][Performance] กรอกข้อมูล Weight
    Browser.Wait For Elements State    ${HCM.PerformanceWeight_Input}    visible    timeout=45s
    Browser.Fill Text    ${HCM.PerformanceWeight_Input}    ${TC05_001.Performance_Weight}

[HCM][Performance] กดปุ่ม Alert Submit
    Sleep    5s
    Browser.Wait For Elements State    ${HCM.PerformanceSubmit_Alert}    visible    timeout=45s
    Browser.Click    ${HCM.PerformanceSubmit_Alert}

[HCM][Performance] กดปุ่ม Submit
    Sleep    5s
    Browser.Wait For Elements State    ${HCM.PerformanceSubmit_Button}    visible    timeout=45s
    Browser.Click    ${HCM.PerformanceSubmit_Button}

[HCM][Performance] ตรวจสอบ Submit สำเร็จ
    Browser.Wait For Elements State    ${HCM.PerformanceSuccess_MsgText}    visible    timeout=60s
    Browser.Get Text    ${HCM.PerformanceSuccess_MsgText}    contains    ${TC05_001.Performance_ExpectText}

[HCM][Performance] กดเลือกรายการข้อมูล Goal Name
    ${ItemID}=    Format String    ${HCM.PerformanceData_ItemList}    DateTime=${DYNAMIC.Datetime}
    Browser.Wait For Elements State    ${ItemID}    visible    timeout=15s
    Browser.Click    ${ItemID}

[HCM][Performance] กดเลือก สถานะ Inprogress
    Browser.Click    ${HCM.PerformanceStatus_Dropdown}
    Browser.Wait For Elements State    ${HCM.PerformanceStatus_ItemList}    visible    timeout=15s
    Browser.Click    ${HCM.PerformanceStatus_ItemList}

[HCM][Performance] กรอกข้อมูล Percentage
    Browser.Clear Text    ${HCM.PerformancePercentage_Input}
    Browser.Fill Text    ${HCM.PerformancePercentage_Input}    ${TC05_004.Performance_Percentage}

[HCM][Performance] กรอกข้อมูล How's the progress on this goal?
    Browser.Fill Text    ${HCM.PerformanceProgressGoal_Input}    ${common.ThisIs}

[HCM][Performance] กดปุ่ม Update Process
    Browser.Wait For Elements State    ${HCM.PerformanceUpdate_Button}    visible    timeout=45s
    Browser.Click    ${HCM.PerformanceUpdate_Button}

[HCM][Performance] กดปุ่ม Back กลับ
    Sleep    10s
    Browser.Wait For Elements State    ${HCM.PerformanceBack_Button}    visible    timeout=45s
    Browser.Click    ${HCM.PerformanceBack_Button}

[HCM][Performance] กดเลือก Action Cancel
    Browser.Click    ${HCM.PerformanceAction_Dropdown}
    Browser.Wait For Elements State    ${HCM.PerformanceAction_ItemList}    visible    timeout=15s
    Browser.Click    ${HCM.PerformanceAction_ItemList}

[HCM][Performance] ตรวจสอบ Cancel สำเร็จ
    Browser.Wait For Elements State    ${HCM.PerformanceCancel_MsgText}    visible    timeout=15s
    Browser.Get Text    ${HCM.PerformanceCancel_MsgText}    contains    ${TC05_005.Notification_CancelText}
