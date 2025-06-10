*** Settings ***
Library           SeleniumLibrary
Library    Collections
Library    String
Library    OperatingSystem
Resource    ../../Resources/locators/homepageLocator.robot
Resource    ../../Resources/variables/globalVariable.robot
Resource    ../../Resources/locators/commonLocator.robot
Resource    ../../Resources/keywords/commonKeywords.robot
Resource    ../../Resources/keywords/plpKeywords.robot
Resource    ../../Resources/keywords/checkoutKeywords.robot

*** Variables ***

@{NekCategoriesXpath}=    ${earrings}    ${pendants}    ${rings}    ${chains}    
@{CategoriesName}     Pendants    Rings    Chains    Earrings
@{segmentOneURL}=    ${chainsURL}    ${RingsURL}    ${PendantsURL}    ${EarringsURL}

*** Keywords ***
    
Homepage Elements
    Element Should Be Visible    ${nekHeader}
    Element Should Be Visible    ${nekHeader_Banner}
    Element Should Be Visible    ${hamburger}
    Element Should Be Visible    ${shopForMen}
    Element Should Be Visible    ${shopForWomen}
    Element Should Be Visible    ${image_banners_newGD}
    Element Should Be Visible    ${coinBanner}
    Element Should Be Visible    ${shopByPrice}
    Element Should Be Visible    ${dealsForEveryBudget}
    Element Should Be Visible    ${shopUnder10k}
    Element Should Be Visible    ${shopUnder4999}
    Element Should Be Visible    ${shopUnder1999}

Homepage navBar
    Element Should Be Visible    ${navBar_sale}
    Element Should Be Visible    ${navBar_coins}
    Element Should Be Visible    ${navBar_login}

Homepage Navbar actions
    Click Element    ${navBar_sale}
    Sleep    2s
    Click Element    ${nekSaleHeader}
    Sleep    2s
    Click Element    ${navBar_coins}
    Sleep    2s
    Click Element    ${BACK_ARROW}
    Sleep    2s
    Click Element    ${navBar_login}
    Sleep    2s
    Click Element    ${crossIcon}
    Sleep    2s

Get Categoriess Titles- Homepage
    # Categories
    ${categoryValues}=    Get Text    ${categoriesList}
    @{catList}=    Split String    ${categoryValues}    \n
    @{categoriesText}=    Get Slice From List    ${catList}    2
    Set Global Variable    @{categoriesText}
    Log To Console    Categories: ${categoriesText}
    Should Be Equal    ${CategoriesName}    ${categoriesText}

Order chains
    Click Element    ${earrings}
    Sleep    5s

Order earrings post emptying cart
    Go To    ${earringProductURL}
    Reload Page
    sleep    2s
    Click Correct Add To Cart Button
    Click Element    ${crossIcon_cart}
    Sleep    3s
    Wait Until Element Is Visible    ${your_cart_is_empty}    timeout=5s
    Add products from cart
