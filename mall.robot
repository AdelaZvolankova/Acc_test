*** Settings ***
Documentation   Washing machine test Mall.cz
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User wants to buy 2 most expensive washing machines
    [Documentation]  Washing machine test Mall.cz
    [Tags]  Smoke
    Open Browser  http://www.mall.cz    chrome
    Sleep   3s
    Maximize browser window
    Sleep   3s
    Input text  id=form-sitesearch-input  Pračka
    Sleep   3s
    Click button    xpath=/html/body/div[2]/header/div/div[2]/div[3]/fieldset/div[1]/button
    Sleep    3s
    Click link    xpath=//*[@id="content"]/div[1]/div/div[1]/div[2]/div/div/ul/li[3]/a
    Sleep    3s
    Click link    xpath=/html/body/div[2]/div[2]/div[2]/main/section/div/article[1]/div/a
    Sleep    3s
    Click button    xpath=/html/body/div[2]/div/div[2]/main/div/article/div[1]/section[2]/div[2]/div[4]/form/div/span/div/span/div/button
    Sleep    3s
    Click link    xpath=//*[@id="navigation-widget"]/ul/li[4]/div[1]/a[1]
    Sleep    3s
    Close Browser

*** Keywords ***
