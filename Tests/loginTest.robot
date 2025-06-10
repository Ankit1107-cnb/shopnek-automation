*** Settings ***
Library           SeleniumLibrary
Resource    ../Resources/locators/loginLocator.robot
Resource    ../Resources/variables/globalVariable.robot
Resource    ../Resources/keywords/commonKeywords.robot
Resource    ../Resources/keywords/homepageKeywords.robot
Resource    ../Resources/keywords/plpKeywords.robot
Resource    ../Resources/keywords/checkoutKeywords.robot
Resource    ../Resources/keywords/pdpKeywords.robot
Resource    ../Resources/keywords/addressKeywords.robot
Resource    ../Resources/keywords/paymentGateway.robot


*** Test Cases ***
#end to end test cases
Validate Homepage components
    [Documentation]    Test case to verify homepage components
    Opening In Mobile View
    Order chains
PLP Screen Components
    Verify PLP Elements Are Visible
    Actions in PLP Screen
PDP Screen Components
    Elements in PDP Screen
Add product in cart
    Click Correct Add To Cart Button
Cart components and actions
    Check and verify cart variables
Order after emptying the cart
    Order earrings post emptying cart
Address flow
    Address pop up for the Users
    Adding address for Guest User
Order Summary
    Check And Verify Order Summary Elements
Payment Gateway
    Payment flow via Net Banking
    

