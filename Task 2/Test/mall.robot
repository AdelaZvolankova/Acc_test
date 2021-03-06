*** Settings ***
Documentation   Washing machine test Mall.cz
Variables   ../Data/variables.py
Resource    ../Resources/common.robot     #for Setup & Teardown
Resource    ../Resources/mall.robot       #for lower level keywords in test cases
Test Setup    Common.Begin web test
Test Teardown    Common.End test


*** Test Cases ***
User can search for products
    [Tags]  Smoke
    Mall.Search for products

User can sort the products by price
    Mall.Search for products
    Mall.Sort products

User can view detail of the product
    Mall.Search for products
    Mall.Sort products
    Mall.Select product

User can proceed to check out
    Mall.Search for products
    Mall.Sort products
    Mall.Select product
    Mall.Add product to cart
    Mall.Check the cart



