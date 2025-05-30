*** Settings ***
Library           SeleniumLibrary
Library    XML
Resource    ../../Resources/locators/loginLocator.robot
Resource    ../../Resources/variables/globalVariable.robot
Resource    ../../Resources/locators/commonLocator.robot
Resource    ../../Resources/locators/checkoutLocators.robot
Resource    ../../Resources/locators/homepageLocator.robot

*** Keywords ***

Opening In Mobile View
# Mobile values and simulation for user agent
    ${chrome_options}=    Evaluate    selenium.webdriver.ChromeOptions()    selenium.webdriver
    ${mobile_emulation}=    Create Dictionary    deviceName=Pixel 4
    Call Method    ${chrome_options}    add_experimental_option    mobileEmulation    ${mobile_emulation}
    
    # Browser and website
    Open Browser    ${url}    ${browser}    options=${chrome_options}
    Maximize Browser Window
    Set Window Size    320    900
    Sleep    2s
    Execute JavaScript    document.body.style.zoom='100%'
    Sleep    2s
    Wait Until Page Contains Element    ${nekHomepage}    5s
    Log To Console    Logo image found


Login Test
    [Documentation]    Test case to verify login functionality
    Click Element    ${hamburger}
    Click Element    ${loginButton}
    Input Text    ${enterPhoneNumber}    ${phoneNumber}
    Sleep    1s
    Click Element    ${getOtpButton}
    Sleep    1s
    Input Text    ${enterOtp}    ${otp}
    Sleep    5s
    Click Element    ${NEK_HOMEPAGE_HEADER}
    Sleep    5s

Logout Nek
    Click Element    ${hamburger}
    Sleep    2s
    Click Element    ${YOUR_ACCOUNT_HEADER}
    sleep    2s
    Click Element    ${logoutButton}
    Sleep    2s

Scroll Until Element Visible And Click
    [Arguments]    ${element}
    FOR    ${i}    IN RANGE    15
        ${isVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${element}
        Run Keyword If    ${isVisible}    Exit For Loop
        Execute Javascript    window.scrollBy(70, 500)
        Sleep    0.5s
        Log To Console    scrolled for element ${i}
    END
    Click Element    ${element}
    Sleep    3s

Scroll Until Element Visible
    [Arguments]    ${element}
    FOR    ${i}    IN RANGE    15
        ${isVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${element}
        Run Keyword If    ${isVisible}    Exit For Loop
        Execute Javascript    window.scrollBy(70, 500)
        Sleep    0.5s
        Log To Console    scrolled for element ${i}
    END
    Wait Until Element Is Visible    ${element}
    Sleep    3s

Search and add to cart
    [Arguments]    ${productName}
    Click Element    ${SEARCH_BAR_HOMEPAGE}
    Sleep    2s
    Input Text    ${SEARCH_INPUT}    ${productName}
    Sleep    2s
    Click Element    ${SEARCH_INPUT_ICON}
    Log To Console    Element is searched
    Click Element    ${cart_buttons}
    Sleep    2s
    IF    ${VIEW_DETAILS}
        Wait Until Element Is Visible    ${BUY_NOW_BUTTON}
        Click Element    ${BUY_NOW_BUTTON}
    ELSE
        ${ADD_TO_BAG_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${ADD_TO_BAG}
        IF    ${ADD_TO_BAG_visible}
            Click Element    ${ADD_TO_BAG}
            Wait Until Element Is Visible    ${GO_TO_BAG}
            Click Element    ${GO_TO_BAG}
        ELSE
            Click Element    ${GO_TO_BAG}
        END  
    END
    
Sort and filter 
    Wait Until Element Is Visible    ${SORT}

