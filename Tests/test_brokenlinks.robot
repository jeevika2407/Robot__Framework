*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary

*** Test Cases ***
    Open the Browser
    Number of broken links
    List of broken links

*** Keywords ***
Open the Browser
    Open Browser    https://www.selenium.dev/    browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    3

Number of broken links
    Get