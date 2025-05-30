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
