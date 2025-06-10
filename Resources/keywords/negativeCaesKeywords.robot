*** Settings ***
Library           SeleniumLibrary
Library    Collections
Library    String
Library    OperatingSystem
Resource    ../../Resources/locators/homepageLocator.robot
Resource    ../../Resources/locators/plpLocators.robot
Resource    ../../Resources/variables/globalVariable.robot
Resource    ../../Resources/locators/commonLocator.robot
Resource    ../../Resources/keywords/commonKeywords.robot
Resource    ../../Resources/variables/testData.robot


*** Keywords ***
No Products Found With The Given Keyword Searched
    [Arguments]    ${keyword}
    [Documentation]    Verifies that no products are found with the given keyword.

    Click Element    ${SEARCH_BAR_HOMEPAGE}
    Wait Until Element Is Visible    ${SEARCH_INPUT}    timeout=10s
    Input Text    ${SEARCH_INPUT}    ${keyword}
    Click Element    ${SEARCH_INPUT_ICON}

    # Wait for search result message or empty product list to appear
    Wait Until Element Is Visible    ${ActualSearchResult}    timeout=10s

    ${actual}=    Get Text    ${ActualSearchResult}
    ${expected}=  Set Variable    No products found
    Should Be Equal As Strings    ${actual}    ${expected}

    Log To Console    No products found for keyword: ${keyword}

No Products Found In The Given Filter Category
    Click Element    ${FILTER_ICON}
    Wait Until Element Is Visible    ${PURITY_FILTER}    timeout=10s
    Click Element    ${PURITY_FILTER}
    Wait Until Element Is Visible    ${22KTGOLD_FILTER}    timeout=10s
    Click Element    ${22KTGOLD_FILTER}
    Wait Until Element Is Visible    ${STERLING_SILVER_FILTER}    timeout=10s
    Click Element    ${STERLING_SILVER_FILTER}
    Click Element    ${APPLY_FILTER}
    Wait Until Element Is Visible    ${NO_PRODUCTS_FOUND}    timeout=10s
    Click Element    ${CLEAR_FILTERS}


Enter an expired or invalid coupon code during the payment process.
    [Documentation]    Attempts to add an out-of-stock item to the cart and verifies the error message.
    Go To    ${ganeshaPendant}
    Reload Page
    Wait Until Element Is Visible    ${BUY_NOW_BUTTON}    timeout=10s
    Click Element    ${BUY_NOW_BUTTON}
    Wait Until Element Is Visible    ${see_all_coupons}    timeout=10s
    Click Element    ${coupon_remove_button}
    Click Element    ${see_all_coupons}    timeout=5s
    Input Text    ${input_coupon_code}    ${expiredCouponCode}
    Wait Until Element Is Visible    ${noCouponFound}   timeout=5s
    Click Element    ${custom_coupon_apply_cta}
    Wait Until Element Is Visible    ${InvalidCouponToastMessage}    timeout=5s
    ${actual}=    Get Text    ${InvalidCouponToastMessage}
    ${expected}=  Set Variable    Items are not eligible for the coupon
    Should Be Equal As Strings    ${actual}    ${expected}
    Log To Console    Invalid coupon code message displayed: ${actual}
    Click Element    ${BACK_ARROW_CART}

    
Invalid non-serviceable pincode during the delivery address setup
    [Documentation]    Attempts to enter an invalid pincode during delivery address setup and verifies the error message.
    Go To    ${ganeshaPendant}
    Reload Page
    Wait Until Element Is Visible    ${BUY_NOW_BUTTON}    timeout=5s
    Click Element    ${BUY_NOW_BUTTON}
    Wait Until Element Is Visible    ${continue_to_address}    timeout=5s
    Click Element    ${continue_to_address}
    Wait Until Element Is Visible    ${selected_address_header}    timeout=5s
    Click Element    ${add_new_address}
    Wait Until Element Is Visible    ${add_new_address_heaser}    timeout=5s
    Input Text    ${pincode_required}    ${invalidPincode}
    Wait Until Element Is Visible    ${invalidPincodeSubtext}    timeout=5s
    ${actual}=    Get Text    ${invalidPincodeSubtext}
    ${expected}=  Set Variable    Unfortunately, we don't deliver to your pincode.
    Should Be Equal As Strings    ${actual}    ${expected}
    Log To Console    Invalid pincode error message displayed: ${actual}
    Click Element    ${BACK_ARROW_PLP}
    Wait Until Element Is Visible    ${address_popUp_header}    timeout=5s
    Click Element    ${closePopUp}
    Click Element    ${BACK_ARROW_PLP}
    Click Element    ${BACK_ARROW_CART}
    


    