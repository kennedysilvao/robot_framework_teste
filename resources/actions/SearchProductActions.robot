*Settings*
Documentation    Search a Product Actions

*Keywords*
Fill Search Field
    [Arguments]    ${product}

    Fill Text    id=s    ${product}[name]

Submit Search

    Press Keys    id=searchform    Enter

Product Should Be
    ${element}    Set Variable    css=a[title="HTML5 Forms"]

    Wait For Elements State    ${element}    visible    5
    Get Text                   ${element}    equal      HTML5 Forms

Product Not Exists

    ${element}    Set Variable    css=div[id="content"] p >> text=Sorry, nothing found.

    Wait For Elements State    ${element}    visible    5
    Get Text                   ${element}    equal      Sorry, nothing found.

