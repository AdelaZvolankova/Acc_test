*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***

Sort Products
    Click link    xpath=//*[@id="content"]/div[1]/div/div[1]/div[2]/div/div/ul/li[3]/a
    Sleep    ${sleep_time}

Click product link
    Click link    xpath=//*[@id="1364180"]
    Sleep    ${sleep_time}
