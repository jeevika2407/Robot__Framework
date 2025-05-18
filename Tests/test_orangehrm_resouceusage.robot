*** Settings ***
Documentation    test to login 
Library    SeleniumLibrary
Resource    resources.robot

*** Variables ***
${login_error_message}    css:.oxd-text.oxd-text--p.oxd-alert-content-text
${DashBoard_text}    css:.oxd-text.oxd-text--h6.oxd-topbar-header-breadcrumb-module
*** Test Cases ***
Validate unsuccessful login
    [Tags]    Regression    Smoke
    Open the browser with URL
    Fill the login form    ${invalid_username}    ${invalid_password}
    Verify error message is correct
    Close browser

Validate successful login
    [Tags]    UIT
    Open the browser with URL
    Fill the login form    ${valid_username}    ${valid_password}
    Verify dashboard page opens
    Close browser

*** Keywords ***
Fill the login form
    [Arguments]    ${username}    ${password}
    Input Text    css:input[name=username]    ${username}
    Input Password    css:input[name=password]    ${password}
    Click Button    css:.orangehrm-login-button

Verify error message is correct
    Element Text Should Be    ${login_error_message}    Invalid credentials

Verify dashboard page opens
    Element Text Should Be    ${DashBoard_text}    Dashboard
