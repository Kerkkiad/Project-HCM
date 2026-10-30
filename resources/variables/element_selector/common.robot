*** Variables ***
# Login
${common.LoginUser_Input}       xpath=//input[@id='idcs-signin-basic-signin-form-username']
${common.LoginPass_Input}       xpath=//input[@id='idcs-signin-basic-signin-form-password']
${common.LoginNext_Button}      xpath=//button[contains(@id,'signin-form-submit') and contains(@id,'text')]
# Menu
${common.MenuHome_Menu}         xpath=//a[@title='Home']
${common.MenuNoti_Menu}         xpath=//a[starts-with(@title,'Notifications')]
# Tabs
${common.MyClientGroup_Tab}     xpath=//a[@id='groupNode_workforce_management']
${common.Tool_Tab}              xpath=//a[@id='groupNode_tools']
# Sidebars
${common.HireEmp_SideBar}       xpath=//a[normalize-space(.)='Hire an Employee']
${common.Users_SideBar}         xpath=//div[normalize-space(text())='Users']
# Menu icons
${common.Workforce_IconMenu}    xpath=//a[starts-with(@id,'itemNode_workforce_management_workforce_structures')]
${common.SecurityCS_IconMenu}   xpath=//a[starts-with(@id,'ASE_FUSE_SECURITY_CONSOLE')]
${common.ScheduledPC_IconMenu}  xpath=//a[starts-with(@id,'itemNode_tools_scheduled_processes')]
${common.Pay_IconMenu}          xpath=//a[starts-with(@id,'itemNode_my_information_pay_0')]
${common.Performance_IconMenu}  xpath=//a[starts-with(@id,'itemNode_manager_resources_CareerandPerformance_0')]
# List menu and cards
${common.PositionsList_ListMenu} xpath=//a[normalize-space(.)='Positions']
${common.BOT_ItemList}          xpath=//div[normalize-space(text())='Bank of Thailand'] >> visible=true
${common.PayMethod_Card}        xpath=//span[normalize-space(text())='Payment Methods'] >> visible=true
${common.GoalCenter_Card}       xpath=//span[normalize-space(text())='Goals Center'] >> visible=true
