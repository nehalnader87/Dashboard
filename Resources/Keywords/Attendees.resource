*** Settings ***
Library           Browser
Library     String
*** Variables ***
${Regsiteration}    xpath=//span[contains(text(),'Registration')]
#//span[normalize-space()='Registration']
${Attendee}         xpath=//p[normalize-space()='Attendees']
${users}            xpath=//p[normalize-space()='All Users']
${AddUserBTN}       xpath=//span[normalize-space()='Add User']
${firstNameTXT}      xpath=//input[@name='firstName']
${lastNameTXT}       xpath=//input[@name='lastName']
${emailTXT}          xpath=//input[@name='email']
${createBTN}        xpath=//button[normalize-space()='Create']
${AddTripBTN}       xpath=(//tr//td//div[normalize-space()='Add Trip'])[1]
${Status}        xpath=//select[@id='status_trip']
${flightstatus}    xpath=//select[@id='flight_status']
${Package}         xpath=//select[@id='entity']
${textTXT}      xpath=//input[@id='1']

*** Keywords ***
Add new attendee
    click    ${Regsiteration}
    click    ${Attendee}
    click    ${users}
    click    ${AddUserBTN}

Insert User Details
    [Arguments]    ${FirstName}    ${LastName}    ${Email}
    fill text        ${firstNameTXT}   ${FirstName}
    fill text     ${lastNameTXT}    ${LastName}
    fill text     ${emailTXT}   ${Email}
    click    ${createBTN}

Add a Trip
    click    ${Attendee}
    click    ${users}
    click    ${AddTripBTN}
    select options by    ${Package}     index     1
    fill text    ${textTXT}     test1234
    click    ${createBTN}
