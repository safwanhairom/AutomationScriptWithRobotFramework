*** Settings ***
Library           SeleniumLibrary

*** keyword ***
Login into webhrm
    open browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    chrome
    sleep    1
    input text    xpath=//*[@id="txtUsername"]    Admin
    sleep    1
    input text    xpath=//*[@id="txtPassword"]    admin123
    sleep    1
    click element    xpath=//*[@id="btnLogin"]
    sleep    1

Navigate to admin
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]

Navigate to nationalities
    click element    xpath=//*[@id="menu_admin_nationality"]

Click button add
    click element    xpath=//*[@id="btnAdd"]

Fill in information 1
    input text    xpath=//*[@id="nationality_name"]    Peru

Fill in information 2
    input text    xpath=//*[@id="nationality_name"]    Peru

Save information
    click element    xpath=//*[@id="btnSave"]
