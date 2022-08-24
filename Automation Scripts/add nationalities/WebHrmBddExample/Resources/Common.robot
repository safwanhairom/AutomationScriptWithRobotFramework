*** Settings ***
Library           SeleniumLibrary

*** Variables ***
@{_tmp}           browserName: ${chrome},    platform: ${platform},    version: ${version},    visual: ${visual},    network: ${network},    console: ${console},    name: RobotFramework Lambda Test
${BROWSER}        ${chrome}
${CAPABILITIES}    ${EMPTY.join(${_tmp})}
${REMOTE_URL}     http://%{safwanhairom@gmail.com}:%{FdtgSUzgu3Up5cg3Kn3w2F7tzHzUsFsfzSXAKfWspwfOZ6ixG9}@hub.lambdatest.com/wd/hub
${TIMEOUT}        3000

*** Keywords ***
Open test browser
    [Timeout]    ${TIMEOUT}
    Open browser    https://lambdatest.github.io/sample-todo-app/    browser=${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=${CAPABILITIES}

Close test browser
    Run keyword if    '${REMOTE_URL}' != ''    Report Lambdatest Status    ${TEST_NAME}    ${TEST_STATUS}
    Close all browsers
