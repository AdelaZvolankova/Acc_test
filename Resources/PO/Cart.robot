*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***
Add product to cart
    Click button    xpath=//*[@id="content"]/div/article/div[1]/section[2]/div[3]/div[4]/form/div/span/div/span/div/button
    Sleep    ${sleep_time}
Verify product added
    Click link    xpath=//*[@id="navigation-widget"]/ul/li[4]/div[1]/a[1]
    Sleep    ${sleep_time}