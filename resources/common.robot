*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Begin Web Test
    open browser   about:blank   browser=${BROWSER}     options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
    maximize browser window

    go to   ${HOMEPAGE}
    Wait Until Page Contains  Amazon

End Web Test
    close browser