*** Settings ***
Library    SeleniumLibrary
Variables   ../Data/variables.py

*** Keywords ***

Search for Products
    Input text  id=form-sitesearch-input  ${search_term}
