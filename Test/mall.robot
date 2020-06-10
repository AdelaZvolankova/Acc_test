*** Settings ***
Documentation   Washing machine test Mall.cz
Resource    ../Resources/mall.robot
Resource    ../Resources/common.robot
Test Setup    Begin web test
Test Teardown    End test

*** Test Cases ***
User wants to buy 2 most expensive washing machines
    [Documentation]  Washing machine test Mall.cz
    [Tags]  Smoke
    Mall.Search for products
    Mall.Sort products
    Mall.Select product
    Mall.Add product to cart
    Mall.Check the cart



