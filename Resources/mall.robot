*** Settings ***
Documentation   Washing machine test Mall.cz
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot

*** Keywords ***

Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Input text  id=form-sitesearch-input  ${search_term}
    Click button    xpath=/html/body/div[2]/header/div/div[2]/div[3]/fieldset/div[1]/button
    Sleep    ${sleep_time}

Sort products
    Click link    xpath=//*[@id="content"]/div[1]/div/div[1]/div[2]/div/div/ul/li[3]/a
    Sleep    ${sleep_time}

Select product
    Click link    xpath=/html/body/div[2]/div[2]/div[2]/main/section/div/article[1]/div/a
    Sleep    ${sleep_time}

Add product to cart
    Click button    xpath=/html/body/div[2]/div/div[2]/main/div/article/div[1]/section[2]/div[2]/div[4]/form/div/span/div/span/div/button
    Sleep    ${sleep_time}

Check the cart
    Click link    xpath=//*[@id="navigation-widget"]/ul/li[4]/div[1]/a[1]
    Sleep    ${sleep_time}

End test
    Close Browser
