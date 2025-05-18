*** Settings ***
Documentation     A resource file with reusable keywords
Library           SeleniumLibrary

*** Variables ***
${un}             Admin
${pw}             admin123
${invalid-un}     123
${invalid-pw}     123
${url}            https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Open the Browser with url
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Close the browser session
    Close Browser