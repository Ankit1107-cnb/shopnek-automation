*** Settings ***
Library           SeleniumLibrary
Resource    ../Resources/locators/loginLocator.robot
Resource    ../Resources/variables/globalVariable.robot
Resource    loginTest.robot
Resource    ../Resources/keywords/commonKeywords.robot
Resource    ../Resources/keywords/homepageKeywords.robot


*** Test Cases ***

#homepage validation
Validate Homepage components
    [Documentation]    Test case to verify homepage components
    Opening In Mobile View
    Login Test
    Get Categoriess Titles- Homepage
    
