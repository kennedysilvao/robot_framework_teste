*Settings*
Documentation    Register A New User Test Suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    After Test

*Test Cases*
Register a New User

    ${user}         Factory User

    Go To My Account

    Fill Credentials  ${user}
    Submit Credentials
    User Registered  ${user}