*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***
Load
    Go to    ${url}
Verify Page Loaded
    Title should be    ${main_page_title}

