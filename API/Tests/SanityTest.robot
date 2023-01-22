*** Settings ***
Documentation Robot Framework Demo

Library     Collections
Library     String
Library     JSONLibrary
Library     RequestsLibrary

*** Variables ***

${base_url}     https://reqres.in

*** Test Cases ***
Test title
    [Tags]      Demo
    Create Session     session1    ${base_url}
    ${endpoint}     Set Variable   /api/users?page=2
    ${response}=    GET On Session  session1    ${endpoint}
    Log To Console  ${response.header}
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}
    Log             ${response.content}

    #validation
    ${status_code}=     Convert To String    ${response.status_code}
    Should Be Equal    ${status_code    200