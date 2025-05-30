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


*** Keywords ***

Click Correct Add To Cart Button
    ${is_button1_present}=    Run Keyword And Return Status    Page Should Contain Element    ${VIEW_DETAILS}
    Run Keyword If    ${is_button1_present}    Run Keywords
    ...    Click Element    ${VIEW_DETAILS}
    ...    AND    Sleep    5s
    ...    AND    Click Element    ${BUY_NOW_BUTTON}
    ...    AND    Sleep    5s
    ...    ELSE
    ...    Run Keywords
    ...    Click Element    ${ADD_TO_BAG}
    ...    AND    Sleep    2s
    ...    AND    Click Element    ${GO_TO_BAG}
    ...    AND    Sleep    5s
    

Verify PLP Elements Are Visible
    [Documentation]    Verifies that all key elements on the PLP screen are visible.
    
    @{elements_to_verify}=    Create List
    ...    ${price_low_high}
    ...    ${SORT}
    ...    ${SORT_ICON}
    ...    ${FILTER}
    ...    ${FILTER_ICON}
    ...    ${SEARCH_ICON}
    ...    ${applied_filter_pill}

    FOR    ${element}    IN    @{elements_to_verify}
        Wait Until Element Is Visible    ${element}    timeout=10s
    END


#     # Element Should Be Visible    ${hotsellers}
#     # Element Should Be Visible    ${silver_pill}
#     # Element Should Be Visible    ${gold_pill}
#     # Wait Until Element Is Visible    ${price_post_couponDiscount}


Actions in PLP Screen
    [Documentation]    Test case to verify actions in PLP screen

    # Click And Wait    ${close_pill_icon}    ${SEARCH_ICON}
    Click And Wait    ${SEARCH_ICON}        ${BACK_ARROW}
    Click And Wait    ${BACK_ARROW}         ${SORT}
    Click And Wait    ${SORT}               ${crossIcon}
    Click And Wait    ${crossIcon}          ${FILTER}
    Click And Wait    ${FILTER}             ${crossIcon}
    Click Element     ${crossIcon}

Click And Wait
    [Arguments]    ${click_element}    ${wait_element}
    Scroll Element Into View    ${click_element}
    Wait Until Element Is Enabled    ${click_element}    timeout=10s

    ${status}    ${message}=    Run Keyword And Ignore Error    Click Element    ${click_element}
    Run Keyword If    '${status}' == 'FAIL'    Execute JavaScript    arguments[0].click();    ${click_element}

    Wait Until Element Is Visible    ${wait_element}    timeout=10s

