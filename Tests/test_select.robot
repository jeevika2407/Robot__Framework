*** Settings ***
Library           SeleniumLibrary
Test Teardown     Close Browser

*** Test Cases ***
Select options in dropdown
    Open the browser with url
    Select the dropdown option APIs by value
    Select the dropdown option Microsoft by index
    Select the dropdown option CSS by label
    Get and Print all the values in a list

*** Keywords ***
Open the browser with url
    Open Browser    https://demo.automationtesting.in/Register.html    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    2

Select the dropdown option APIs by value
    Select From List By Value    id=Skills    APIs

Select the dropdown option Microsoft by index
    Select From List By Index    id=Skills    43

Select the dropdown option CSS by label
    Select From List By Label    id=Skills    CSS

Get and Print all the values in a list
    ${options}=    Get List Items    id=Skills
    ${length}=    Get Length    ${options}
    Log To Console    Total options:${length}
    FOR    ${item}    IN    ${options}
        Log To Console    ${item}
    END
