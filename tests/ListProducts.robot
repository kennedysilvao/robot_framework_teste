*Settings*
Documentation    List Products Test Suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    After Test

*Test Cases*
List Products
    Go To Home Page
    Go To Shop

    Go To Link HTML
    Should Be a Item