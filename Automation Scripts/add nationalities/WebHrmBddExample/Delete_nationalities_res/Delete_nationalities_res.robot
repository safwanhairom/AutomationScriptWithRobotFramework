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

Choose nation 1 to delete
    click element    xpath=//*[@id="ohrmList_chkSelectRecord_32"]

Choose nation 2 to delete
    click element    xpath=//*[@id="ohrmList_chkSelectRecord_33"]

Click button delete
    click element    xpath=//*[@id="btnDelete"]

Click button okey
    click element    xpath=//*[@id="dialogDeleteBtn"]
