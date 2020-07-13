*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***

Search for Products
    Input text  ${search_box}  ${search_term}
    Click button    ${search_button}
    Sleep    ${sleep_time}


