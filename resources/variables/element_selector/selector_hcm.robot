*** Variables ***
# Position page
${HCM.PositionDate_Date}               xpath=//label[normalize-space(.)='Effective Start Date']
${HCM.PositionUnit_Dropdown}          xpath=//span[normalize-space(.)='Business Unit']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PositionUnit_ItemList}          xpath=//span[normalize-space(.)='Bank of Thailand'] >> visible=true
${HCM.PositionName_Input}             xpath=//span[normalize-space(.)='Name']/ancestor::oj-label/following-sibling::input
${HCM.PositionCode_Input}             xpath=//span[normalize-space(.)='Code']/ancestor::oj-label/following-sibling::input
${HCM.PositionDepartment_Dropdown}    xpath=//span[normalize-space(.)='Department']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PositionJob_Dropdown}           xpath=//span[normalize-space(.)='Job']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PositionLevel_Dropdown}         xpath=//span[normalize-space(.)='Level (สิทธิ์)']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PositionDepartment_ItemList}    xpath=//div[normalize-space(.)='${TC02_001.Position_Department}'] >> visible=true
${HCM.PositionJob_ItemList}           xpath=//div[normalize-space(.)='dummy job'] >> visible=true
${HCM.PositionLevel_ItemList}         xpath=//span[normalize-space(.)='Senior Officer'] >> visible=true
${HCM.PositionHotJob_Input}           xpath=//span[normalize-space(.)='Hot Job Allowance']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PositionGrade_Dropdown}         xpath=//span[normalize-space(.)='Grade']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PositionGrade_ItemList}         xpath=//div[normalize-space(.)='dummy_grade'] >> visible=true
${HCM.PositionAdd_Button}             xpath=//button[normalize-space(.)='Add Position'] >> visible=true
${HCM.PositionSubmit_Button}          xpath=//span[normalize-space(.)='Submit'] >> visible=true
${HCM.PositionSave_Button}            xpath=//span[normalize-space(.)='Save'] >> nth=0
${HCM.PositionAddGrade_Button}        xpath=//span[normalize-space(.)='Add'] >> visible=true
${HCM.PositionSuccess_MsgText}        xpath=//div[contains(@class,'oj-message-summary') and normalize-space(.)='Position created']
# Account and performance selectors are deliberately represented by stable labels.
${HCM.AccountAddUser_Button}          xpath=//button[normalize-space(.)='Add User Account']
${HCM.AccountSave_Button}             xpath=//button[@title='Save and Close'] >> visible=true
${HCM.AccountSuccess_MsgText}         xpath=//h1[normalize-space(.)='User Accounts']
${HCM.PerformanceAdd_Button}           xpath=//button[normalize-space(.)='Add'] >> visible=true
${HCM.PerformanceSubmit_Button}        xpath=//button[normalize-space(.)='Submit'] >> visible=true
${HCM.PerformanceSuccess_MsgText}      xpath=//div[contains(@class,'oj-message-summary')]
${HCM.NotiApprove_Button}              xpath=//button[starts-with(@title, 'Approve') and contains(@title, '${common.PrefixPersonal} {DateTime}')]
${HCM.NotiSuccess_MsgText}             xpath=//span[normalize-space(.)='Done']
# Scheduled process page
${HCM.ScheduledName_Dropdown}          xpath=//a[contains(@id, ':selectOneChoice2::lovIconId')]
${HCM.ScheduledSearch_Link}            xpath=//a[contains(@id, 'popupsearch')]
${HCM.ScheduledName_Input}              id=af_Z_window >> xpath=//input[contains(@id, ':value00::content')]
${HCM.ScheduledProcessType_Dropdown}   xpath=//a[contains(@id, '_socl1::drop')]
${HCM.ScheduledProcessName_Dropdown}   xpath=(//a[contains(@id, ':lovIconId')])[2]
${HCM.ScheduledProcessID_Text}          xpath=//span[contains(@id, ':confirmationPopup:pt_ol1')]/label
${HCM.ScheduledProcessStatus_Table}     xpath=//span[normalize-space(text())='{PROCESS_ID}']/ancestor::tr[1]//span[normalize-space(text())='Succeeded']
${HCM.ScheduledName_ItemList}           id=af_Z_window >> xpath=//span[normalize-space(text())='Manage Goal Scheduled Process']
${HCM.ScheduledProcessType_ItemList}    xpath=//li[normalize-space(text())='Assign goal plans']
${HCM.ScheduledProcessName_ItemList}    xpath=//span[normalize-space(text())='2026 Annual Performance Evaluation Plan']
${HCM.ScheduledNew_Button}              xpath=//div[contains(@id, ':scheduleProcess')]
${HCM.ScheduledProcessRefresh_Button}   xpath=//img[contains(@id, ':processRefreshId::icon')]
${HCM.ScheduledSearch_Button}            id=af_Z_window >> xpath=//button[contains(@id, ':search')]
${HCM.ScheduledProcessConfirm_Button}   xpath=//button[contains(@id, 'confirmSubmitDialog::ok')]
${HCM.ScheduledProcessSubmit_Button}    xpath=//div[contains(@id, ':submitButton')]
${HCM.ScheduledOKSearch_Button}          id=af_Z_window >> xpath=//button[contains(@id, ':lovDialogId::ok')]
${HCM.ScheduledOKMain_Button}            xpath=//button[contains(@id, ':snpoBtnId')]
# Payment method page
${HCM.PayMethodCallPay_Input}            xpath=//span[normalize-space(.)='What do you want to call this payment method?']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PayMethodAccountNumber_Input}      xpath=//span[normalize-space(.)='Account Number']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PayMethodBank_Dropdown}            xpath=//span[normalize-space(.)='Bank']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PayMethodBankBranch_Dropdown}      xpath=//span[normalize-space(.)='Bank Branch']/ancestor::oj-label/following-sibling::input >> visible=true
${HCM.PayMethodBank_ItemList}            xpath=//span[normalize-space(text())='ธนาคารออมสิน']
${HCM.PayMethodBankBranch_ItemList}      xpath=//span[normalize-space(text())='-']
${HCM.PayMethodAdd_Button}               xpath=//span[normalize-space(.)='Add'] >> nth=1
${HCM.PayMethodCreate_Button}            xpath=//button[@aria-label='Create'] >> nth=0
${HCM.PayMethodDelete_Button}            xpath=//button[@aria-label='Delete'] >> nth=0
${HCM.PayMethodConfirmDel_Button}        xpath=//oj-button[@id='delPmpopup_primarybutton']//button
${HCM.PaymentMethodSuccess_MsgText}      xpath=//*[@title='{DateTime} ${TC02_004.PayMethod_PrefixName}']
# Account page
${HCM.AccountPersonType_Dropdown}        xpath=//input[contains(@id, 'aPersonTypeSoc::content')] >> visible=true
${HCM.AccountWorkerName_Input}            xpath=//input[@placeholder='Enter 3 or more characters to search']
${HCM.AccountEmail_Input}                 xpath=//span[label[normalize-space(.)='Email']]/input >> visible=true
${HCM.AccountUsername_Input}              xpath=//span[label[normalize-space(.)='User Name']]/input >> visible=true
${HCM.AccountPassword_Input}              xpath=//span[label[normalize-space(.)='Password']]/input >> visible=true
${HCM.AccountRePassword_Input}            xpath=//span[label[normalize-space(.)='Confirm Password']]/input >> visible=true
${HCM.AccountPersonType_ItemList}         xpath=//li[normalize-space(.)='Worker']
${HCM.AccountWorkerName_ItemList}          xpath=//span[normalize-space(.)='${common.PrefixPersonal} {Time}']
${HCM.AccountAddUser_Button}              xpath=//button[normalize-space(.)='Add User Account']
${HCM.AccountSearchUser_Button}           xpath=//*[normalize-space(.)='Worker Name']/ancestor::tr//a[@title='Search'] >> visible=true
${HCM.AccountOK_Button}                   xpath=//button[@title='OK'] >> visible=true
${HCM.AccountAutoAdd_Button}              xpath=//button[normalize-space(.)='Add Auto-Provisioned Roles']
${HCM.AccountSave_Button}                 xpath=//button[@title='Save and Close'] >> visible=true
# Performance page
${HCM.PerformanceGoalName_Input}           xpath=//textarea[@placeholder='Start writing a clear and concise goal name here.'] >> visible=true
${HCM.PerformanceAdditional_Input}         xpath=//textarea[@placeholder='Add details about this goal here.'] >> visible=true
${HCM.PerformanceAchieved_Input}           xpath=//div[@role='textbox' and contains(@aria-label, 'What will indicate that this goal is achieved?')]
${HCM.PerformanceWeight_Input}             xpath=//input[@id=(//label[span[text()='Weight']]/@for)]
${HCM.PerformanceStatus_Dropdown}          xpath=//input[@id='showGoalPlanStatus input']
${HCM.PerformanceAction_Dropdown}          xpath=//oj-menu-button[@title='Actions for Goals']
${HCM.PerformancePercentage_Input}         xpath=//input[@id=string((//label[normalize-space(.)='Completion Percentage']/@for)]
${HCM.PerformanceProgressGoal_Input}       xpath=//div[@role='textbox' and @aria-label='Comments'] >> nth=0
${HCM.PerformanceData_ItemList}            xpath=//a[normalize-space(.)='${TC05_001.Performance_GoalName}{DateTime}']
${HCM.PerformanceStatus_ItemList}          xpath=//span[normalize-space(.)='In progress'] >> nth=0
${HCM.PerformanceAction_ItemList}          xpath=//a[normalize-space(.)='Cancel']
${HCM.PerformanceSubmit_Alert}             xpath=//a[contains(@data-key, 'submitBannerId') and normalize-space(.)='Submit']
${HCM.PerformanceAdd_Button}               xpath=//button[normalize-space(.)='Add'] >> visible=true
${HCM.PerformanceSubmit_Button}            xpath=//button[normalize-space(.)='Submit'] >> visible=true
${HCM.PerformanceUpdate_Button}             xpath=//button[normalize-space(.)='Update Progress'] >> visible=true
${HCM.PerformanceBack_Button}               xpath=//span[@class='oj-ux-ico-nav-left']
${HCM.PerformanceSuccess_MsgText}           xpath=//div[@role='alert']//div[contains(@class, 'oj-messagebanner-summary') and contains(normalize-space(.), 'Pending Approval')]
${HCM.PerformanceCancel_MsgText}            xpath=//span[contains(@class, 'oj-badge') and normalize-space(.)='Marked for cancellation']
# Hire an employee selectors
${HCM.EmpRole_Button}                   xpath=//button[contains(@class,'role')]
${HCM.EmpContinue_Button}               xpath=//button[normalize-space(.)='Continue']
${HCM.EmpDate_Date}                     xpath=//label[normalize-space(.)='When is the employee hire date?']/following-sibling::input
${HCM.EmpLegalEmployer_Dropdown}        xpath=//span[normalize-space(.)='Legal Employer']/ancestor::oj-label/following-sibling::input
${HCM.EmpHire_Dropdown}                 xpath=//span[contains(normalize-space(.),"What's the way to hire an employee?")]/ancestor::oj-label/following-sibling::input
${HCM.EmpHire_ItemList}                 xpath=//div[normalize-space(.)='Hire']
${HCM.EmpReason_Dropdown}               xpath=//span[contains(normalize-space(.),'Why are you hiring an employee?')]/ancestor::oj-label/following-sibling::input
${HCM.EmpReason_ItemList}               xpath=//div[contains(normalize-space(.),'Replace the Original Rate')]
${HCM.EmpBusiness_Dropdown}             xpath=//span[normalize-space(.)='Business Unit']/ancestor::oj-label/following-sibling::input
${HCM.EmpPosition_Dropdown}             xpath=//span[normalize-space(.)='Position']/ancestor::oj-label/following-sibling::input
${HCM.EmpPosition_ItemList}             xpath=//div[contains(normalize-space(.),'${TC02_002.Emp_PositionCode}')]
${HCM.EmpLocation_Dropdown}             xpath=//span[normalize-space(.)='Location']/ancestor::oj-label/following-sibling::input
${HCM.EmpLocation_ItemList}             xpath=//div[contains(normalize-space(.),'${TC02_002.Emp_Location}')]
${HCM.EmpLevel_Dropdown}                xpath=//span[normalize-space(.)='Level (สิทธิ์)']/ancestor::oj-label/following-sibling::input
${HCM.EmpLevel_ItemList}                xpath=//div[normalize-space(.)='${common.Level}']
${HCM.EmpEditManager_Button}            xpath=//button[@aria-label='Edit Managers']
${HCM.EmpManagerName_Dropdown}          xpath=//span[normalize-space(.)='Name']/ancestor::oj-label/following-sibling::input
${HCM.EmpManagerName_ItemList}          xpath=//div[contains(normalize-space(.),'${TC02_002.Emp_ManagerName}')]
${HCM.EmpManagerSave_Button}            xpath=//button[normalize-space(.)='Save'] >> visible=true
${HCM.EmpSubmit_Button}                 xpath=//button[normalize-space(.)='Submit']
${HCM.EmpSuccess_MsgText}               xpath=//div[contains(@class,'oj-message-summary')]
${HCM.EmpPersonal_Input}                xpath=//span[normalize-space(.)='Person']/ancestor::oj-label/following-sibling::input
${HCM.EmpTitleTH_Dropdown}              xpath=//span[normalize-space(.)='Title (TH)']/ancestor::oj-label/following-sibling::input
${HCM.EmpTitleTH_ItemList}              xpath=//div[normalize-space(.)='นาย']
${HCM.EmpFirstName_Input}                xpath=//span[normalize-space(.)='First Name (TH)']/ancestor::oj-label/following-sibling::input
${HCM.EmpLastName_Input}                 xpath=//span[normalize-space(.)='Last Name (TH)']/ancestor::oj-label/following-sibling::input
${HCM.EmpTitleEN_Dropdown}              xpath=//span[normalize-space(.)='Title (EN)']/ancestor::oj-label/following-sibling::input
${HCM.EmpTitleEN_ItemList}              xpath=//div[normalize-space(.)='Mr']
