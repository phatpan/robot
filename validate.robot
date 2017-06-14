*** Settings ***
Library    Selenium2Library
Suite Teardown    Close All Browsers

*** Variables ***
${URL}    http://localhost:8000/
${BROWSER_DRIVER}    chrome

*** Test Cases ***
Show Message Error When Validate Name Invalid
    [Tags]   test
    Given Go To MyApp
    When Click Home
    And Link Add Book Is Visible
    And Click Add Book
    And Name Book Is Visible
    And Fill Name Book
    And Delete Name Book 
    Then Message Error Is Visible

*** Keywords ***
Go To MyApp
    Open Browser   ${URL}    ${BROWSER_DRIVER}

Click Home
    Click Link    link-home

Link Add Book Is Visible
    Element Should Contain   link-add    Add

Click Add Book
    Click Link    link-add

Name Book Is Visible
    Element Should Be Visible    nameBook

Fill Name Book
    Input Text    nameBook    test

Delete Name Book 
    Input Text    nameBook    ${EMPTY}

Message Error Is Visible
    Element Should Contain    msg-error-name    กรุณากรอกชื่อด้วยค่ะ