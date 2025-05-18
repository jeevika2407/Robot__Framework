*** Settings ***
Documentation    a resource file with reusable keywords and variables.
Library    SeleniumLibrary

*** Variables ***
${valid_username}    Admin
${valid_password}    admin123
${invalid_username}    Ad
${invalid_password}    123
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Open the browser with URL
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
    Set Browser Implicit Wait    5

Close browser
    Close browser
