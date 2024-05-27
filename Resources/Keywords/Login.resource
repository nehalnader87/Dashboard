*** Settings ***
Library           Browser
*** Variables ***
${usernameTXT}      id=username
${PasswordTXT}    id=password
${LoginBTN}        xpath=//button[normalize-space()='Login']
${Skiplink}         xpath=//button[contains(text(),'Skip')]
*** Keywords ***
Login with user
    [Arguments]    ${username}    ${password}
    fill text    ${usernameTXT}    ${username}
    fill text    ${PasswordTXT}    ${password}
    Click    ${LoginBTN}
    wait for elements state    ${Skiplink}    visible    30s
    click    ${Skiplink}
