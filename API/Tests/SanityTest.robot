*** Settings ***
Documentation Robot Framework Demo

Library     Collections
Library     String
Library     JsonLibrary
Library     RequestsLibrary

*** Variables ***

${base_url}     https://reqres.in

*** Test Cases ***
Test title
    [Tags]      Demo
    Create Session    session1    ${base_url}