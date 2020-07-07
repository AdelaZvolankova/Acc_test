*** Settings ***
Documentation   Washing machine test Mall.cz
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Variables ***


*** Keywords ***
Begin web test
    Open Browser  about:blank  ${browser}
    Maximize browser window

End test
    Close Browser
