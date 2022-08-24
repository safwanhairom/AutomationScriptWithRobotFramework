*** Settings ***
Suite Setup       Open Login Page    ${loginpage}    ${browser}    # setup to open login page
Suite Teardown    Close Browser
Library           SeleniumLibrary

*** Variables ***
${loginpage}      http://localhost/mockuplogin/login.html    # url for login page
${browser}        chrome

*** Keywords ***
Open Login Page
    [Arguments]    ${loginpage}    ${browser}
    Open Browser    ${loginpage}    ${browser}
    Maximize Browser Window
    Title Should Be    Login Page
