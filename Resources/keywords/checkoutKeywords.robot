*** Settings ***
Library      SeleniumLibrary
Library      Collections
Library      String
Library      OperatingSystem
Resource    ../../Resources/variables/globalVariable.robot
Resource    ../../Resources/keywords/commonKeywords.robot
Resource    ../../Resources/locators/checkoutLocators.robot
Resource    ../../Resources/variables/testData.robot
Resource    ../../Resources/keywords/plpKeywords.robot
Resource    ../../Resources/locators/pdpLocator.robot

*** Keywords ***

Check And Verify Cart Variables
    [Documentation]    Checks all major cart page elements are visible and functional.
    @{cart_elements}=    Create List
    ...    ${see_all_coupons}
    ...    ${cart_header}
    ...    ${price_breakup_header}
    ...    ${collapse_chevron}
    ...    ${sub_total}
    ...    ${platform_discount}
    ...    ${shipping_charge}
    ...    ${total}
    ...    ${continue_to_address}
    ...    ${highlighted_bag_stepper}
    ...    ${crossIcon_cart}
    Verify Elements Visible From List    @{cart_elements}

    Sleep    2s
    Click Apply Or Remove Button
    Click Element    ${crossIcon_cart}
    Wait Until Element Is Visible    ${your_cart_is_empty}
    Click Element    ${start_shopping}
    Sleep    2s

Click Apply Or Remove Button
    [Documentation]    Applies or removes coupon based on button visibility.
    ${apply}=    Run Keyword And Return Status    Element Should Be Visible    ${coupon_apply_button}
    Run Keyword If    ${apply}    Click Element    ${coupon_apply_button}
    ...    ELSE    Click Element    ${coupon_remove_button}

Add Products From Cart
    [Documentation]    Adds products to cart, navigates and verifies.
    Element Should Be Visible    ${viewProductFromCart}
    Click Correct Add To Cart Button
    Click Element    ${BACK_ARROW_CART}
    Scroll Until Element Visible    ${shopByCategory}
    Click Element    ${addSecondaryProduct}
    Click Element    ${GO_TO_BAG}
    Sleep    2s

Apply Custom Coupons
    [Documentation]    Applies custom coupon from test data.
    Click Element    ${see_all_coupons}
    Input Text    ${input_coupon_code}    ${couponCode}
    Click Element    ${custom_coupon_apply_cta}
    Log    Custom coupon applied: ${couponCode}

Compare Price And Checkout
    [Documentation]    Verifies if sum of products equals total checkout price.
    ${elements}=    Get WebElements    ${totalPrice}
    ${totalSum}=    Set Variable    0
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        ${clean}=    Replace String    ${text}    ₹    EMPTY
        ${clean}=    Replace String    ${clean}    ,    EMPTY
        ${val}=    Convert To Number    ${clean}
        ${totalSum}=    Evaluate    ${totalSum} + ${val}
    END

    ${checkoutText}=    Get Text    ${checkout_price}
    ${parts}=    Split String    ${checkoutText}    |
    ${orderPrice}=    Strip String    ${parts[1]}
    Should Be Equal As Numbers    ${totalSum}    ${orderPrice}
    Log    Price comparison passed

Check And Verify Order Summary Elements
    [Documentation]    Validates summary and price breakdown elements.
    @{summary_elements}=    Create List
    ...    ${highlighted_summary_stepper}
    ...    ${order_summary_header}
    ...    ${deliveryAddressChevron}
    Verify Elements Visible From List    @{summary_elements}

    Click Element    ${deliveryAddressChevron}
    Click Element    ${crossIcon}
    Wait Until Element Is Visible    ${crossIcon_cart}    timeout=5s
    Click Element    ${close_address_bottomsheet}
    Scroll Until Element Visible    ${priceBreakupChevron}
    Sleep    5s
    # Click Element    ${priceBreakupChevron}

    # @{price_breakdown}=    Create List
    # ...    ${total_discount}
    # ...    ${sub_total}
    # ...    ${platform_discount}
    # ...    ${shipping_charge}
    # Verify Elements Visible From List    @{price_breakdown}


    Click Element    ${place_order}

Verify Elements Visible From List
    [Documentation]    Loops through a list of elements and verifies each is visible, logging errors.
    [Arguments]    @{elements}
    FOR    ${element}    IN    @{elements}
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${element}
        Run Keyword Unless    ${status}    Log    Element not visible: ${element}    WARN
    END
