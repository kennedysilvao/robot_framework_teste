*Settings*
Documentation    Search a Product Actions

*Keywords*
Go To My Account
    Click    css=a[href="http://practice.automationtesting.in/my-account/"] >> text=My Account


Fill Credentials
    [Arguments]    ${user}

    Fill Text    id=reg_email       ${user}[email]
    Fill Text    id=reg_password    ${user}[password]

Submit Credentials

    Click    css=input[type=submit] >> text=REGISTER

User Registered
    [Arguments]     ${user}

    ${element}      Set Variable            nav a[href="http://practice.automationtesting.in/my-account/edit-account/"]

    Click           ${element}

    Wait For Elements State    id=account_email    visible    5
    Get Text                   id=account_email    equal      ${user}[email]