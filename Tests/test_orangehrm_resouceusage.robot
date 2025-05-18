*** Settings ***
Resource    resources.robot
Library     SeleniumLibrary

*** Variables ***
${err}         css:.oxd-alert-content-text
${dash-txt}    css:h6.oxd-text.oxd-text--h6.oxd-topbar-header-breadcrumb-module

*** Test Cases ***
Validate Unsuccessful Login
    [Tags]    Smoke    Regression
    Open the Browser with url
    Fill the login form    ${invalid-un}    ${invalid-pw}
    Verify the error msg is correct
    Close the browser session

Validate Successful Login
    [Tags]    ULT
    Open the Browser with url
    Fill the login form    ${un}    ${pw}
    Verify the dashboard page is open
    Close the browser session

*** Keywords ***
Fill the login form
    [Arguments]    ${un}    ${pw}
    Input Text    css:input[name="username"]    ${un}
    Input Password    css:input[name="password"]    ${pw}
    Click Button    //button

Verify the error msg is correct
    Element Text Should Be    ${err}    Invalid credentials

Verify the dashboard page is open
    Element Text Should Be    ${dash-txt}    Dashboard