*** Settings ***
Library     Browser  timeout=100   run_on_failure=Take Screenshot \ fail-screenshot-{index}
Library    String
*** Variables ***
${STatusmessage}    xpath=//div[@role='status']
*** Keywords ***
Begin Test
    new browser      chromium    headless=false    timeout=100      slowMo=00:01
    Set Browser Timeout        100
    #Set Browser Timeout   timeout=2m   scope=Global
    New Context   viewport={'width': 1280, 'height': 720}
    New Page
    go to    ${URL}
    set browser timeout    30s

End Test
    close browser

generate random name
    ${random_string} =  string.generate random string     8
    [Return]    ${random_string}
generate random email
    ${random_number} =  string.generate random string    3    [NUMBERS]
    ${randomemail}=    catenate    TestDemo    ${random_number}     @gmail.com
    [Return]    ${randomemail}

Assert status message
    [Arguments]    ${expected_message}
    ${actualmessage}        get text    ${STatusmessage}
    should be equal as strings    ${expected_message}    ${actualmessage}