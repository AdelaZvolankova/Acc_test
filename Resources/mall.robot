*** Settings ***
Documentation   Washing machine test Mall.cz
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}    http://www.mall.cz
${search_term}    Pračka


*** Keywords ***

Search for products
    Go to    ${url}
    Title should be    MALL.CZ – bílé zboží, elektronika, PC, outdoor, hobby, hračky, kosmetika, chovatelské potřeby
    Input text  id=form-sitesearch-input  ${search_term}
    Click button    xpath=/html/body/div[2]/header/div/div[2]/div[3]/fieldset/div[1]/button
    Sleep    3s

Sort products
    Click link    xpath=//*[@id="content"]/div[1]/div/div[1]/div[2]/div/div/ul/li[3]/a
    Sleep    3s

Select product
    Click link    xpath=/html/body/div[2]/div[2]/div[2]/main/section/div/article[1]/div/a
    Sleep    3s

Add product to cart
    Click button    xpath=/html/body/div[2]/div/div[2]/main/div/article/div[1]/section[2]/div[2]/div[4]/form/div/span/div/span/div/button
    Sleep    3s

Check the cart
    Click link    xpath=//*[@id="navigation-widget"]/ul/li[4]/div[1]/a[1]
    Sleep    3s

End test
    Close Browser