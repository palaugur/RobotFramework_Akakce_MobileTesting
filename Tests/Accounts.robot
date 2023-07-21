*** Settings ***
Resource    ../Resources/common.robot
Test Setup      Open Akakce Application
Test Teardown    Close Application


*** Test Cases ***
Login With Standard User
  [Tags]    login
  Close Popup Message
  Click On User Icon
  Verify Login Page Displayed
  Enter Standard User Login Credentials
  Click On Login Button
  Verify User Is Logged In

Register Akakce Application
    [Tags]    register
    Close Popup Message
    Click On User Icon
    Verify Login Page Displayed
    Click On Register Button on Login Page
    Enter Register Details
    Accept Terms And Conditions
    Click On Register Button
    Verify New User Is Created
