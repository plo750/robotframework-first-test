*** Settings ***
Resource    ../resources/common.robot
Resource    ../resources/PO/HomePage.robot

Suite Setup    common.Begin Web Test
Suite Teardown    common.End Web Test

*** Test Cases ***
Show product available
    HomePage.Load Google Page
    HomePage.Search Amazon Web Page
    HomePage.Navigate to Amazon website
    HomePage.Search the product

