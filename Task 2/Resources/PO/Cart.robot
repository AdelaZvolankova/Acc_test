*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***
Add product to cart
    Click button  ${add_to_cart}
    Sleep    ${sleep_time}
Verify product added
    Click link    ${view_cart}
    Sleep    ${sleep_time}