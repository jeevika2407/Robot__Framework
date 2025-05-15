*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login with Correct Username and Password
    Open Browser    https://the-internet.herokuapp.com/login    chrome
    Maximize Browser Window
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button    class=radius
    Wait Until Page Contains Element    id=flash    timeout=5s
    Element Should Contain    id=flash    You logged into a secure area!
    Click Link    Logout
    Close Browser
