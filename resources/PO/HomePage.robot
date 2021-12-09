*** Settings ***
Library     SeleniumLibrary
Resource    ../variables.robot

*** Keywords ***
Load Google Page
    go to    ${GOOGLE_URL}
    wait until page contains     recherche Google
    click element   xpath=//*[@id="L2AGLb"]/div
    wait until page contains    Google

Search Amazon Web Page
    clear element text  name=q
    input text    name=q    ${AMAZONPAGE}
    mouse down  class=lnXdpd
    mouse up    class=lnXdpd
    click element    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    wait until page contains    Images

Navigate to Amazon website
    click element    xpath=//*[@id="rso"]/div[1]/div/div/div/div/div/div[1]/a/h3
    wait until page contains    Commandes

Search the product
    clear element text    xpath=//*[@id="twotabsearchtextbox"]
    input text    xpath=//*[@id="twotabsearchtextbox"]  rj45 cable
    click element    xpath=//*[@id="nav-search-submit-button"]
    wait until page contains    "rj45 cable"