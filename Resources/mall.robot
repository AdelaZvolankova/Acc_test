*** Settings ***
Documentation   Washing machine test Mall.cz
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Cart.robot


*** Keywords ***

Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products

Sort products
    SearchResults.Sort Products

Select product
    SearchResults.Click product link

Add product to cart
    Cart.Add product to cart

Check the cart
    Cart.Verify product added

End test
    Close Browser
