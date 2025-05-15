*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
select an option of radio button
    open the browser
    Select the checkbox contains cricket and hockey
    Unselect the chekcbox option hockey
    Verify checkbox hockey is unselected

*** Keywords ***
open the browser
    Open Browser    url=https://demo.automationtesting.in/Register.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Select the checkbox contains cricket and hockey
    Select Checkbox    id=checkbox1
    Select Checkbox    id=checkbox3

Unselect the chekcbox option hockey
    Unselect Checkbox    id=checkbox3

 Verify checkbox cricket is selected
     Checkbox Should Be Selected    id=checkbox1

Verify checkbox hockey is unselected
    Checkbox Should Not Be Selected    id:checkbox3