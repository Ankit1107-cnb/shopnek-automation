*** Settings ***
Library      SeleniumLibrary
Library    Collections
Library    String
Library    OperatingSystem
Resource    ../../Resources/variables/globalVariable.robot
Resource    ../../Resources/keywords/commonKeywords.robot
Resource    ../../Resources/locators/checkoutLocators.robot
Resource   ../../Resources/variables/testData.robot

*** Keywords ***

Address pop up for the Users
    Click Element    ${continue_to_address}
    Sleep    2s
    Click Element    ${closePopUp}
    Sleep    2s
    Element Should Be Visible    ${add_new_address}
    Sleep    2s
    # Click Element    ${BACK_ARROW_CART}
    Execute Javascript    window.history.back();
    Sleep    3s
    Element Should Be Visible    ${address_popUp_header}
    Element Should Be Visible    ${continueToSaveAddress}
    Element Should Be Visible    ${saveAddressText}
    Element Should Be Visible    ${outOfStockWarningText}
    Click Element    ${closePopUp}
    Sleep    2s

Adding address for logged in User
    Click Element    ${continue_to_address}
    Sleep    2s
    Element Should Be Visible    ${add_new_address}
    Click Element    ${add_new_address}
    Sleep    2s
    Input Text    ${pincode_required}    ${PINCODE}
    Input Text    ${complete_address}    ${ADDRESS}
    Click Element    ${save_address_cta}

Adding address for Guest User
    Click Element    ${add_new_address}
    Sleep    2s
    Click Element    ${closePopUp}
    Sleep    3s
    Input Text    ${pincode_required}    ${PINCODE}
    Sleep    5s
    Input Text    ${add_user_address}    ${ADDRESS}
    Sleep    5s
    Input Text    ${name_required}    ${GUEST_NAME}
    Sleep    5s
    Input Text    ${contact_number}    ${GUEST_CONTACT_NUMBER}
    Sleep    5s
    # Input Text    ${enterEmail}    ${EMAIL}    
    # Sleep    5s
    Click Element    ${save_address_cta}
    Sleep    2s

Continue to Order Summary
    Element Should Be Visible    ${continue_CTA}
    Click Element    ${continue_CTA}
    Sleep    5s