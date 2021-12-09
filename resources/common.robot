*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Begin Web Test
    open browser   about:blank   browser=${BROWSER}     options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
    maximize browser window

End Web Test
    close browser