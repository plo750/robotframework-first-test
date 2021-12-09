*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${ENDPOINT}       https://www.google.com

*** Keywords ***
First keyword
    open browser   about:blank   browser=${BROWSER}     options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
    # Maximize Browser Window
    go to   ${ENDPOINT}
    close browser

*** Test Cases ***
Main Test
    First keyword
