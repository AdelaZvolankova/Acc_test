*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***

Search for Products
    Input text  id=form-sitesearch-input  ${search_term}
    Click button    xpath=//*[@id="mobile-search"]/fieldset/div[1]/button
    Sleep    ${sleep_time}


