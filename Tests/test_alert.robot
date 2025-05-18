*** Settings ***
Library    SeleniumLibrary
Test Teardown    Close Browser

*** Test Cases ***
Handling the alerts
    Open the Browser with url
    Select the alert with ok button
    Select the alert with dismiss button
    Select the alert and send text

*** Keywords ***
Open the Browser with url
    Open Browser    https://demo.automationtesting.in/Alerts.html    browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    3
    Click Element    xpath://a[@href='#OKTab']    
    Click Button    xpath://button[@class='btn btn-danger']
    Sleep    5s

Select the alert with ok button
    Alert Should Be Present    I am an alert box!    ACCEPT
    Sleep    5s

Select the alert with dismiss button
    Click Element    xpath:(//a[@class='analystic'])[2]    
    Click Button    xpath://button[@class='btn btn-primary']
    Sleep    5s
    Alert Should Be Present    Press a Button !    DISMISS  

Select the alert and send text
    Click Element    xpath://a[contains(text(),'Alert with Textbox ')]   
    Click Button    xpath://button[contains(text(),'click the button to demonstrate the prompt box ')]
    Sleep    5s
    # Handle Alert    Please enter your name    ENTER
    Input Text Into Alert    txt=hello    
    # Handle Alert    ACCEPT
    Sleep    3s
    Page Should Contain    hello

    # Alert Should Be Present    Please enter your name    ENTER
    # Handle Alert    Hello    ACCEPT

