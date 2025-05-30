*** Settings ***
Library           SeleniumLibrary
Library    Collections
Library    String
Library    OperatingSystem
Resource    ../../Resources/locators/homepageLocator.robot
Resource    ../../Resources/variables/globalVariable.robot
Resource    ../../Resources/locators/commonLocator.robot
Resource    ../../Resources/keywords/commonKeywords.robot
Resource    ../../Resources/locators/pdpLocator.robot


# *** Keywords ***

# Elements in PDP Screen
#     Go To    ${productURL}
#     Reload Page
#     sleep    2s
#     Element Should Be Visible    ${share_icon}
#     Element Should Be Visible    ${similar_product}
#     Click Element    ${product_image}
#     sleep    2s
#     Click Element    ${crossIcon_pdp}
#     sleep    3s
#     Element Should Be Visible    ${product_name}
#     Element Should Be Visible    ${original_price}
#     Element Should Be Visible    ${discounted_price}
#     Element Should Be Visible    ${discounted_percentage}
#     Handle Offer Pop Up If Present
#     Scroll Until Element Visible And Click    ${similar_product}
#     Element Should Be Visible    ${Delivery_Services}
#     Element Should Be Visible    ${Delivered_7_days}
#     Element Should Be Visible    ${easy_returns}
#     Element Should Be Visible    ${cancellation_allowed}
#     Element Should Be Visible    ${customer_reviews}
#     Element Should Be Visible    ${similar_product}
#     Element Should Be Visible    ${shop_best_sellers}

*** Keywords ***

Elements in PDP Screen
    [Documentation]    Verifies all key elements on the PDP screen and handles interactions.

    Go To    ${productURL}
    Reload Page
    Wait Until Page Contains Element    ${share_icon}    timeout=10s

    @{initial_elements}=    Create List
    ...    ${share_icon}
    ...    ${similar_product}
    Verify Elements Visible From List    @{initial_elements}

    Scroll Element Into View    ${product_image}
    Wait Until Element Is Enabled    ${product_image}    timeout=10s
    Click Element    ${product_image}

    Wait Until Element Is Visible    ${crossIcon_pdp}    timeout=10s
    Click Element    ${crossIcon_pdp}

    @{product_details}=    Create List
    ...    ${product_name}
    ...    ${original_price}
    ...    ${discounted_price}
    ...    ${discounted_percentage}
    Verify Elements Visible From List    @{product_details}

    Handle Offer Pop Up If Present

    Offer Pop Up for guest User

    Scroll Until Element Visible And Click    ${similar_product}

    @{post_scroll_elements}=    Create List
    ...    ${Delivery_Services}
    ...    ${Delivered_7_days}
    ...    ${easy_returns}
    ...    ${cancellation_allowed}
    ...    ${customer_reviews}
    ...    ${similar_product}
    ...    ${shop_best_sellers}
    Verify Elements Visible From List    @{post_scroll_elements}


Verify Elements Visible From List
    [Arguments]    @{elements}
    FOR    ${element}    IN    @{elements}
        Wait Until Element Is Visible    ${element}    timeout=10s
    END


Offer Pop Up for guest User
    Element Should Be Visible    ${specialOfferUnlocked}
    Element Should Be Visible    ${closeOfferPopup}
    Click Element    ${closeOfferPopup}
    sleep    2s

Handle Offer Pop Up If Present
    ${popupVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${closeOfferPopup}    timeout=5s
    Run Keyword If    ${popupVisible}    Offer Pop Up for guest User

