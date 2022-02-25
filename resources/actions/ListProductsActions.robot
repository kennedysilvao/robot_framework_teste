*Settings*
Documentation           Search a Product Actions

*Keywords*
Go To Shop
    Click           css=a[href*=shop] >> text=Shop

    Wait For Elements State         css=select[name="orderby"]          visible         5

Go To Link HTML

    ${element}      Set Variable        a[href="http://practice.automationtesting.in/product-category/html/"] >> text=HTML
    ${title}        Get Title

    Click           ${element}

Should Be a Item

    Wait For Elements State         css=h3 >> text=Thinking in HTML