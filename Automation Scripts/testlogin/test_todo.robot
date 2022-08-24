*** Settings ***
Test Setup        Open TodoMVC Page Using Chrome Browser
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Variables ***
${MAIN_PAGE}      https://todomvc.com/examples/react/#/
${TODO_INPUT_FIELD}    //input[@class='new-todo']
${FILTER_ELEMENT}    //ul[@class='filters']/li/a

*** Test Cases ***
Empty list can have item added

GIVEN An empty Todo list

WHEN I add a todo for
    Buy cheese

THEN Only that item is listed
    Buy cheese

AND The list summary is
    1 item left

AND The filter is set to
    All

AND The filter is unset to
    Completed

AND The filter is unset to
    Active

AND Clear completed is unavailable

*** Keywords ***
Open TodoMVC Page Using Chrome Browser

Open Browser
    ${MAIN_PAGE}    Chrome

Maximize Browser Window

Open TodoMVC Page Using Chrome Browser

Open Browser
    ${MAIN_PAGE}    Chrome

Maximize Browser Window

An Empty Todo List
    Wait Until Element Is Visible    ${TODO_INPUT_FIELD}
    Wait Until Element Is Not Visible    //section[@class='main']

I add a todo for

[Arguments]
    ${todo_item}

Wait Until Element Is Enabled
    ${TODO_INPUT_FIELD}

Input Text
    ${TODO_INPUT_FIELD}    ${todo_item}

Press Keys
    ${TODO_INPUT_FIELD}    RETURN

Only that item is listed

[Arguments]
    ${todo_item}

Wait Until Element Is Visible
    //label[text()='${todo_item}']

The list summary is

[Arguments]
    ${item_left}

Wait Until Element Is Visible
    //footer//span[contains(., '${item_left}')]

The filter is set to

[Arguments]
    ${filter_name}

Click Link
    ${FILTER_ELEMENT} [text()='${filter_name}']

Wait until page contains element
    ${FILTER_ELEMENT} [text()='${filter_name}'][contains(@class, 'selected')]

The filter is unset to

[Arguments]
    ${filter_name}

Wait until page contains element
    ${FILTER_ELEMENT} [text()='${filter_name}'][contains(@class, '')]

Clear completed is unavailable

Wait Until Element Is Not Visible
    //button[text()='Clear completed']
