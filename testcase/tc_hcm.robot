*** Settings ***
Resource       ../setting/import.robot
Suite Setup    [Common][HCM] Generate Dynamic Credentials

*** Test Cases ***
TC02_001 Create Position New
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${common.UserAdmin}    ${common.PassAdmin}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กด Tab My Client Group
    [Common][HCM] กดไอคอน Workforce
    [Common][HCM] กดรายการ Positions
    [HCM][Position] กดปุ่ม Add Position
    [HCM][Position] เลือกวันที่ Effective Start Date
    [HCM][Position] เลือก Business Unit
    [HCM][Position] กรอกข้อมูล Name
    [HCM][Position] กรอกข้อมูล Code
    [HCM][Position] เลือก Department Seated
    [HCM][Position] เลือก Job
    [HCM][Position] เลือก Level
    [HCM][Position] กรอกข้อมูล Hot Job Allowance
    [HCM][Position] กดปุ่ม Add Grades
    [HCM][Position] เลือกข้อมูล Grades
    [HCM][Position] กดปุ่ม Save Grades
    [HCM][Position] กดปุ่ม Submit
    [HCM][Position] ตรวจสอบ Msg Text Created Success

TC02_002 Create Employee
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${common.UserAdmin}    ${common.PassAdmin}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กด Tab My Client Group
    [Common][HCM] กด Sidebar Hire an Employee
    [HCM][When&Why] กดเลือก Managers
    [HCM][When&Why] กดปุ่ม Continue
    [HCM][When&Why] เลือกวันที่ จ้างงาน
    [HCM][When&Why] เลือก Legal Employer
    [HCM][When&Why] เลือก What's the way to hire an employee?
    [HCM][When&Why] เลือก Why are you hiring an employee?
    [HCM][When&Why] เลือก Business Unit
    [HCM][When&Why] เลือก Position
    [HCM][When&Why] กดปุ่ม Continue
    [HCM][PersonalDetail] กรอกข้อมูล Personal
    [HCM][PersonalDetail] เลือก Title TH
    [HCM][PersonalDetail] กรอกข้อมูล First Name
    [HCM][PersonalDetail] กรอกข้อมูล Last Name
    [HCM][PersonalDetail] เลือก Title EN
    [HCM][When&Why] กดปุ่ม Continue
    [HCM][When&Why] กดปุ่ม Continue
    [HCM][Assignment] เลือก Location
    [HCM][Assignment] เลือก Level
    [HCM][When&Why] กดปุ่ม Continue
    [HCM][Manager] กดปุ่ม Edit Manager
    [HCM][Manager] เลือก Manager Name
    [HCM][Manager] กดปุ่ม Save Manager
    [HCM][Manager] กดปุ่ม Submit
    [HCM][Manager] ตรวจสอบระบบ พากลับมาหน้าหลัก

TC02_003 Create Account Employee
    [Common][HCM] Wait Hire an Employee status success
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${common.UserAdmin}    ${common.PassAdmin}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กด Tab Tool
    [Common][HCM] กดไอคอน Security Console
    [Common][HCM] กด Sidebar Users
    [HCM][Account] กดปุ่ม Add User Account
    [HCM][Account] กดเลือก Person Type
    [HCM][Account] กดปุ่ม Search User Account
    [HCM][Account] กรอกข้อมูล Worker Name
    [HCM][Account] กดปุ่ม OK
    [HCM][Account] กรอกข้อมูล Email
    [HCM][Account] กรอกข้อมูล User Name
    [HCM][Account] กรอกข้อมูล Password
    [HCM][Account] กรอกข้อมูล Confirm Password
    [HCM][Account] กรอกข้อมูล User Name
    [HCM][Account] กดปุ่ม Add Auto-Provisioned Roles
    [HCM][Account] กดปุ่ม Save and Close
    [HCM][Account] ตรวจสอบระบบ กลับไปหน้า User Accounts

TC02_004 Add Account Number
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${TC02_003.Account_Username}${DYNAMIC.Datetime}    ${DYNAMIC.EncodedPass}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กดไอคอน Pay
    [Common][HCM] กด Card PayMethod
    [HCM][PaymentMethod] กดปุ่ม Add
    [HCM][PaymentMethod] กรอกข้อมูล What do you want to call this payment method?
    [HCM][PaymentMethod] กรอกข้อมูล Account Number
    [HCM][PaymentMethod] เลือกข้อมูล Bank
    [HCM][PaymentMethod] เลือกข้อมูล Bank Branch
    [HCM][PaymentMethod] กดปุ่ม Create
    [HCM][Account] ตรวจสอบระบบ สร้างบัญชีรับเงินสำเร็จ

TC02_005 Delete Account Number
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${TC02_003.Account_Username}${DYNAMIC.Datetime}    ${DYNAMIC.EncodedPass}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กดไอคอน Pay
    [Common][HCM] กด Card PayMethod
    [HCM][PaymentMethod] กดปุ่ม Delete
    [HCM][PaymentMethod] กดปุ่ม Confirm Delete
    [HCM][Account] ตรวจสอบระบบ ลบบัญชีรับเงินสำเร็จ

TC05_001 Add Goal Plan Admin
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${common.UserAdmin}    ${common.PassAdmin}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กด Tab Tool
    [Common][HCM] กดไอคอน Scheduled Process
    [HCM][SchNewProcess] กดปุ่ม Scheduled New Process
    [HCM][SchNewProcess] กดเลือก Name
    [HCM][SchNewProcess] กดเลือก Search ...
    [HCM][SchNewProcess] กรอกข้อมูล Name
    [HCM][SchNewProcess] กดปุ่ม Search หน้าต่าง
    [HCM][SchNewProcess] กดเลือก Manage Goal Scheduled Process
    [HCM][SchNewProcess] กดปุ่ม OK หน้าต่าง
    [HCM][SchNewProcess] กดปุ่ม OK หน้าหลัก
    [HCM][SchNewProcess] กด Process Type
    [HCM][SchNewProcess] เลือก Assign Goal
    [HCM][SchNewProcess] กด Process Name
    [HCM][SchNewProcess] เลือก 2026 Annual Performance Evaluation Plan
    [HCM][SchNewProcess] กดปุ่ม Submit
    [HCM][SchNewProcess] เก็บค่า ProcessID
    [HCM][SchNewProcess] กดปุ่ม Confirm OK
    [HCM][SchNewProcess] ตรวจสอบสถานะ Succeeded

TC05_002 Add Goal Plan Employee
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${TC02_003.Account_Username}${DYNAMIC.Datetime}    ${DYNAMIC.EncodedPass}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กดไอคอน Career Performance
    [Common][HCM] กด Card Goals Center
    [HCM][Performance] กดปุ่ม Add
    [HCM][Performance] กรอกข้อมูล What's the name of this goal?
    [HCM][Performance] กรอกข้อมูล Any additional info you want to add?
    [HCM][Performance] กรอกข้อมูล What will indicate that this goal is achieved?
    [HCM][Performance] กรอกข้อมูล Weight
    [HCM][Performance] กดปุ่ม Add
    [HCM][Performance] กดปุ่ม Alert Submit
    [HCM][Performance] กดปุ่ม Submit
    [HCM][Performance] ตรวจสอบ Submit สำเร็จ

TC05_003 Approve Goal for Manager
    [Common][HCM] Wait Data in Notification Manage
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${common.UserManager}    ${common.PassManager}
    [Common][HCM] กดเข้าหน้า Notification
    [HCM][Notification] Manager กดปุ่ม Approve
    [HCM][Notification] ตรวจสอบข้อความ Done

common Add Note Employee
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${TC02_003.Account_Username}${DYNAMIC.Datetime}    ${DYNAMIC.EncodedPass}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กดไอคอน Career Performance
    [Common][HCM] กด Card Goals Center
    [HCM][Performance] กดเลือกรายการข้อมูล Goal Name
    [HCM][Performance] กดเลือก สถานะ Inprogress
    [HCM][Performance] กรอกข้อมูล Percentage
    [HCM][Performance] กรอกข้อมูล How's the progress on this goal?
    [HCM][Performance] กดปุ่ม Update Process
    [HCM][Performance] กดปุ่ม Back กลับ
    [HCM][Performance] กดปุ่ม Alert Submit
    [HCM][Performance] กดปุ่ม Submit
    [HCM][Performance] ตรวจสอบ Submit สำเร็จ

TC05_004 Approve Add Note for Manager
    [Common][HCM] Wait Data in Notification Manage
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${common.UserManager}    ${common.PassManager}
    [Common][HCM] กดเข้าหน้า Notification
    [HCM][Notification] Manager กดปุ่ม Approve
    [HCM][Notification] ตรวจสอบข้อความ Done

TC05_005 Cancel Goal Employee
    [Common][HCM] เปิด browser url    ${common.URL}
    [Common][HCM] Log in ด้วย user และ pass    ${TC02_003.Account_Username}${DYNAMIC.Datetime}    ${DYNAMIC.EncodedPass}
    [Common][HCM] กดเข้าหน้า Home
    [Common][HCM] กดไอคอน Career Performance
    [Common][HCM] กด Card Goals Center
    [HCM][Performance] กดเลือก Action Cancel
    [HCM][Performance] ตรวจสอบ Cancel สำเร็จ
