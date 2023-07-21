*** Settings ***
Library    AppiumLibrary
Resource   common.robot

*** Variables ***
${search_input_field}               id=searchText
${search_input_field2}              xpath=(//*[@resource-id='com.akakce.akakce:id/searchTextView'])[2]
${first_product}                    xpath=(//*[@resource-id='com.akakce.akakce:id/cellContainer'])[1]
${go_to_product}                    id=detailBtnTextView
${follow_button}                    xpath=//*[@text='Takip Et']

*** Keywords ***
Type Bilgisayar In The Search Box
  Wait Until Page Contains Element  ${search_input_field}
  Click Element  ${search_input_field}
  Input Text  ${search_input_field2}  Bilgisayar
  Press Keycode    66   #KEYCODE_ENTER

Select First Product
  Wait Until Page Contains Element      ${first_product}
  Click Element     ${first_product}

Go To Selected Product
  Wait Until Page Contains Element  ${go_to_product}
  Click Element     ${go_to_product}

Scroll To Element
  [Arguments]    ${element}
  ${isElementVisible}  Run Keyword And Return Status    Page Should Contain Element  ${element}
  WHILE    "${isElementVisible}"=="False"
    Swipe By Percent    50  80  50  30
    ${isElementVisible}  Run Keyword And Return Status    Page Should Contain Element  ${element}
  END

Scroll To Follow Button
  Scroll To Element    ${follow_button}

Click on Follow Button
  Click Element    ${follow_button}