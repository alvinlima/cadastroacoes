*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}              https://www.statusinvest.com.br

*** Keywords ***
Nova Sessão
    Open Browser        ${url}      chrome   
Encerra Sessão
    Capture Page Screenshot
    Close Browser