*** Settings ***
Library    Collections
Library    Selenium2Library

*** Variables ***
${URL}    http://188.166.212.15/
${BROWSER_DRIVER}    chrome

*** Test Cases ***
Get Username
    Go To MyApp
    Input Text    username      12345678
    Get Length Username

*** Keywords ***
Go To MyApp
    Open Browser   ${URL}    ${BROWSER_DRIVER}
    
Get Length Username 
    Wait For Condition    return $("#username").val() == "12345678";
