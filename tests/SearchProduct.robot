*Settings*
Documentation    Search a Product Test Suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    After Test


*Test Cases*
Search a Product

    ${product}    Create Dictionary
    ...           name=HTML

    Go To Home Page

    Fill Search Field    ${product}
    Submit Search
    Product Should Be

Product Not Found

    ${product}    Create Dictionary
    ...           name=python

    Go To Home Page
    Fill Search Field  ${product}
    Submit Search
    Product Not Exists