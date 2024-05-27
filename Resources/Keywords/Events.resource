*** Settings ***
Library           Browser
*** Variables ***


*** Keywords ***
Select an event
    [Arguments]    ${eventname}
    Click     xpath=//div[normalize-space()='${eventname}']