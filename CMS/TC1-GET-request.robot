*** Settings ***
Library    RequestsLibrary

*** Variables ***
${base_url}     https://rad-sandbox.pod.ir
${contentTypeUniqueId}       contentTypeUniqueId

*** Test Cases ***
#name of testcase
/api/core/content-types/{contentTypeUniqueId}
    Create Session    myssion    ${base_url}
    ${response}  =    get request    myssion    /api/core/content-types/${contentTypeUniqueId}
    log to console ${response.status_code}
    log to console ${response.content}
    log to console ${response.headers}

