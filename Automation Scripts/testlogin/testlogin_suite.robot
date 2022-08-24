*** Settings ***
Test Setup        Login Page Display    ${loginpage}
Test Template     Test Login    # This template will test all posible validation
Library           SeleniumLibrary

*** Variables ***
${loginpage}      http://localhost/mockuplogin/login.html    # url for login page
${browser}        chrome
${email}          admin@gmail.com
${password}       admin
${successpage}    http://localhost/mockuplogin/success.html
${failurepage}    http://localhost/mockuplogin/loginfailed.html

*** Test Cases ***
Invalid EmailId
    abcd@gmail.com    ${password}

Invalid Password
    ${email}    xyz

Empty Email Id
    ${EMPTY}    ${password}

Empty Password
    ${email}    ${EMPTY}

Empty Email and Password
    ${EMPTY}    ${EMPTY}

*** Keywords ***
Login Page Display
    [Arguments]    ${loginpage}
    Go To    ${loginpage}
    Title Should Be    Login Page

Test Login
    [Arguments]    ${email}    ${password}
    Enter Email    ${email}
    Enter Password    ${password}
    Submit Details
    Login Should Fail

Enter Email
    [Arguments]    ${email}
    Input Text    email    ${email}

Enter Password
    [Arguments]    ${password}
    Input Text    passwd    ${password}

Submit Details
    Click Button    btnsubmit

Login Should Fail
    Location Should Be    ${failurepage}
    Title Should Be    Login Failed
