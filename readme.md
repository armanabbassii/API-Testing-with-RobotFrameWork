*** Settings ***
Library  RequestsLibrary

*** Variables ***
${base_url}     https://rad-sandbox.pod.ir
${entity}       content-types
*** Test Cases ***
#name of testcase
Get_content-type
    Create Session    mysession    ${base_url}
    ${response}=      Get Request    mysession    /api/core/${entity}
    log to console ${response.status_code}
    log to console ${response.content}
    log to console ${response.headers}
5
