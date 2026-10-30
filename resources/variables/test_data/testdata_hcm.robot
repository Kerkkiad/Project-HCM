*** Variables ***
# Test data from the screenshots. Credentials and tenant URL are intentionally externalized.
${common.URL}                           %{HCM_URL=https://example.invalid/hcm}
${common.UserAdmin}                     %{HCM_ADMIN_USER=ADMIN_USER_FROM_ENV}
${common.PassAdmin}                     %{HCM_ADMIN_PASSWORD=ADMIN_PASSWORD_FROM_ENV}
${common.UserManager}                   %{HCM_MANAGER_USER=MANAGER_USER_FROM_ENV}
${common.PassManager}                   %{HCM_MANAGER_PASSWORD=MANAGER_PASSWORD_FROM_ENV}
${common.UserEmp}                       %{HCM_EMPLOYEE_USER=EMPLOYEE_USER_FROM_ENV}
${common.PassEmp}                       %{HCM_EMPLOYEE_PASSWORD=EMPLOYEE_PASSWORD_FROM_ENV}
${common.dummy}                         dummy
${common.BOTSite}                       Bank of Thailand
${common.Level}                         Senior Officer
${common.PrefixPersonal}                RGT
${common.ThisIs}                        This is a test
${common.NotificationDone}              Done!

# TC02_001 — Position
${TC02_001.Position_PrefixName}          Position_RegressionTest_
${TC02_001.Position_PrefixCode}          POSRT_
${TC02_001.Position_Department}          สังกัดไม่ปรากฏ
${TC02_001.Position_HotJob}               3000
${TC02_001.Position_ExpectTextMsg}        Position created

# TC02_002 — Hire an employee
${TC02_002.Emp_Hire}                      Hire
${TC02_002.Emp_Reason}                    ทดแทนอัตราเดิม/Replace the Original Rate
${TC02_002.Emp_PositionCode}              POS05105002
${TC02_002.Emp_Location}                  สนญ. อาคาร 1 ชั้น 3 โซน 4
${TC02_002.Emp_ManagerName}               TestManager Automation
${TC02_002.Emp_ExpectTextMsg}             Test Automation

# TC02_003 — Account
${TC02_003.Account_Email}                 test@example.invalid
${TC02_003.Account_Username}              RegressionTest
${TC02_003.Account_ExpectTextMsg}          User Account

# TC02_004 — Payment method
${TC02_004.PayMethod_PrefixName}          - PPM
${TC02_004.PayMethod_AccountNumber}       0061234588
${TC02_004.PayMethod_Bank}                ธนาคารออมสิน
${TC02_004.PayMethod_BankBranch}          -

# TC05_001 — Goal plan
${TC05_001.SchNewProcess_Name}            Manage Goal Scheduled Process
${TC05_001.SchNewProcess_ProcessType}     Assign goal plans
${TC05_001.Performance_GoalName}          Regression Test
${TC05_001.Performance_Weight}            100
${TC05_001.Performance_ExpectText}        Pending Approval

# TC05_004 — Progress update
${TC05_004.Performance_Percentage}        50

# TC05_005 — Cancel goal
${TC05_005.Notification_CancelText}       Marked for cancellation
