*** Settings ***
Library    AppiumLibrary
Resource    accounts_page.robot
Resource    home_page.robot
Resource    search_page.robot

*** Variables ***
${pop_up_message}     id=framePopupLyt
${execution_env}      local              #default variable
${user}               standard_user1     #default variable

*** Keywords ***
Open Akakce Application
    Run Keyword If    "${execution_env}"=="local"
    ...     Open Akakce Application In Local
    Run Keyword If    "${execution_env}"=="browserstack"
    ...     Open Akakce Application In BrowserStack

Open Akakce Application In Local
  Open Application
  ...  remote_url=http://localhost:4723
  ...  platformName=Android
  ...  platformVersion=11.0
  ...  deviceName=emulator
  ...  appPackage=com.akakce.akakce
  ...  appActivity=com.akakce.akakce.ui.splash.SplashActivity
  ...  automationName=Uiautomator2

Open Akakce Application In BrowserStack
  Open Application
  ...  remote_url=http://ugurpala_nRFEf5:KCby2MaUBaUkufXEAH3s@hub.browserstack.com/wd/hub
  ...  platformName=Android
  ...  platformVersion=11.0
  ...  deviceName=Samsung Galaxy S21
  ...  appPackage=com.akakce.akakce
  ...  appActivity=com.akakce.akakce.ui.splash.SplashActivity
  ...  automationName=Uiautomator2
  ...  app=bs://1c132a481ed4cc2d461bf5803678342ef39732a2

Close Popup Message
  Wait Until Page Contains Element  ${pop_up_message}   timeout=15
  Click Element  ${pop_up_message}







