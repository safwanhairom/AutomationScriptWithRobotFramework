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

Choose nation to edit
    click element    xpath=//*[@id="resultTable"]/tbody/tr[3]/td[2]/a
    sleep    1

Leave text box empty
    click element    xpath=//*[@id="resultTable"]/tbody/tr[3]/td[2]/a
    sleep    1

Clear text box
    clear element text    xpath=//*[@id="resultTable"]/tbody/tr[3]/td[2]/a

Click button save
    click element    xpath=//*[@id="btnSave"]
