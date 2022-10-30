*** Settings ***
Library               RequestsLibrary

*** Variables ***
${BASE_URL}        https://sasweb2-mod-bff-v1-sasweb2-produto-hom.apps.ocp4-dev.sascar.com.br/fleets-utilization/utilization

*** Test Cases ***
Should gerar relatorio 
    
    ${payload}    Create Dictionary
   ...            identifierClient=162058
    ...            identifierVehicles=[1429466,1429465,1429468,1429467,1429464,1429463,1429473,1429476,1429475,1429470,1429469,1429471,1429450,1429449,1429451,1429446,1429445,1429448,1429447,1429458,1429457,1429459,1429454,1429453,1429455,1429498,1429500,1429499,1429494,1429493,1429495,1429506,1429505,1429508,1429507]
    ...            dateFrom=1666321200000
    ...            dateTo=1666407599000

    ${headers}    Create Dictionary
    ...           Content-Type=application/json
    ...           Authorization=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJ1c2VySWQiOjE4MTc3NSwiY3VzdG9tZXJJZCI6MTYyMDU4LCJjdXN0b21lckV4dGVybmFsSWQiOjAsInVzZXJMb2dpbiI6IldBQkVSRVJTLkhVIiwic3ViIjoiV0FCRVJFUlMuSFUiLCJleHAiOjE2NjY1NzA3NjAsImlhdCI6MTY2NjQ4NDM2MH0.vPar0wLcG_fqT2q2U9UATc-UaOYCLtCAzxxW-2jMdatrd-ATyNG-FsorVYU_UMxF30591cWwlqL6nw1aCPY0uA 

    ${response}    POST    ${BASE_URL}
    ...            headers=${headers} 
    ...            json=${payload}

    Status Should Be  200

Should gerar relatorio senha errada
    
    ${payload}    Create Dictionary
    ...            identifierClient=162058
    ...            identifierVehicles=[1429466,1429465,1429468,1429467,1429464,1429463,1429473,1429476,1429475,1429470,1429469,1429471,1429450,1429449,1429451,1429446,1429445,1429448,1429447,1429458,1429457,1429459,1429454,1429453,1429455,1429498,1429500,1429499,1429494,1429493,1429495,1429506,1429505,1429508,1429507]
    ...            dateFrom=1666321200000
    ...            dateTo=1666407599000

    ${headers}    Create Dictionary
    ...           Content-Type=application/json
    ...           Authorization=Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJ1c2VySWQiOjE4MTc3NSwiY3VzdG9tZXJJZCI6MTYyMDU4LCJjdXN0b21lckV4dGVybmFsSWQiOjAsInVzZXJMb2dpbiI6IldBQkVSRVJTLkhVIiwic3ViIjoiV0FCRVJFUlMuSFUiLCJleHAiOjE2NjY1NzA3NjAsImlhdCI6MTY2NjQ4NDM2MH0.vPar0wLcG_fqT2q2U9UATc-UaOYCLtCAzxxW-2jMdatrd-ATyNG-FsorVYU_UMxF30591cWwlqL6nw1aCPY0uA 

    ${response}    POST    ${BASE_URL}
    ...            headers=${headers} 
    ...            json=${payload}

    Status Should Be  500