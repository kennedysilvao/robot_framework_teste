*Settings*
Documentation    Base Test

Library    Browser

Library    Utils.py
Library    factories/user.py

Resource    actions/__SharedActions.robot
Resource    actions/SignupActions.robot
Resource    actions/ListProductsActions.robot
Resource    actions/SearchProductActions.robot


*Variables*
${BASE_URL}         http://practice.automationtesting.in


*Keywords*
Start Session
    New Browser             ${BROWSER}        headless=${HEADLESS}      slowMo=00:00:00
    New Page                ${BASE_URL}
    Set Viewport Size       1280    768


After Test
    ${shot_name}    Screenshot Name

    Take Screenshot    fullPage=true    filename=${shot_name}

