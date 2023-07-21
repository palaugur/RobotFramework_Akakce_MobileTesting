*** Settings ***
Library    AppiumLibrary

*** Variables ***
${user_icon}     id=rightIcon


*** Keywords ***
Click on User Icon
  Wait Until Page Contains Element    ${user_icon}
  Click Element  ${user_icon}