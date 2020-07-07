*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***
Load
    Go to    ${url}
Verify Page Loaded
    Title should be    MALL.CZ – bílé zboží, elektronika, PC, outdoor, hobby, hračky, kosmetika, chovatelské potřeby

