*** Settings ***
Documentation   Washing machine test Mall.cz
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}    http://www.mall.cz


*** Keywords ***
Begin web test
    Open Browser  about:blank  ${browser}
    Maximize browser window

End test
    Close Browser