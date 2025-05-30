*** Settings ***
Library      SeleniumLibrary
Resource    ../Resources/locators/loginLocator.robot
Resource    ../Resources/variables/globalVariable.robot
Resource    loginTest.robot
Resource    ../Resources/keywords/commonKeywords.robot
Resource    ../Resources/keywords/homepageKeywords.robot
Resource    ../Resources/keywords/plpKeywords.robot
Resource    ../Resources/keywords/checkoutKeywords.robot
Resource    ../Resources/keywords/pdpKeywords.robot

*** Test Cases ***

Validate Homepage components
    [Documentation]    Test case to verify homepage components
    Opening In Mobile View
    Login Test
    # Get Categoriess Titles- Homepage
    # Homepage loggedin Users
    Order chains
    Verify PLP Elements Are Visible
    Actions in PLP Screen    
    Click Correct Add To Cart Button
    Check and verify cart variables

    # Elements in PDP Screen





