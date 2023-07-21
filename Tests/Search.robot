*** Settings ***
Resource    ../Resources/common.robot
Test Setup      Open Akakce Application
Test Teardown    Close Application

*** Keywords ***

*** Test Cases ***
Search For Product
    [Tags]    search
    Close Popup Message
    Type Bilgisayar In The Search Box
    Select First Product
    Go To Selected Product
    Scroll To Follow Button
    Click on Follow Button
    Verify Login Page Displayed
