*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***

Sort Products
    Click link    ${sort_by_price_desc}
    Sleep    ${sleep_time}

Click product link
    Click link    ${product_link}
    Sleep    ${sleep_time}
