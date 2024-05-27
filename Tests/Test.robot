*** Settings ***
Resource    ../Resources/Keywords/Common_Keywords.resource
Resource    ../Resources/Keywords/Login.resource
Resource    ../Resources/Keywords/Events.resource
Resource    ../Resources/Keywords/Attendees.resource

Suite Setup    Begin Test
Suite Teardown    End Test
*** Variables ***
${username}    nxttester
${password}    nxt#qA@23
${eventname}    Set Later Event: 25-05-2024 10:12:46
*** Test Cases ***
Adding an attendee with a trip
    login with user     ${username}    ${password}
    Select an event     ${eventname}
    Add new attendee
    ${1stName}    generate random name
    ${2ndName}    generate random name
    ${email}    generate random email
    Insert User Details    ${1stName}    ${2ndName}    ${email}
    Assert status message      User created successfully
    Add a Trip
    Assert status message    Trip created successfully