*** Settings ***
Library      SeleniumLibrary
Library    Collections
Library    String
Library    OperatingSystem
Resource    ../../Resources/variables/globalVariable.robot
Resource    ../../Resources/keywords/commonKeywords.robot
Resource    ../../Resources/locators/checkoutLocators.robot
Resource    ../../Resources/variables/testData.robot

*** Keywords ***

Payment flow via Net Banking
    Wait Until Page Does Not Contain    ${place_order}    timeout=10s
    Click Element    ${place_order}
    Wait Until Element Is Visible    ${PG_Header_Amount}    timeout=10s

    Verify Elements Visible From List
    ...    ${PG_bag_Icon}
    ...    ${PG_UPI_AppHeader}
    ...    ${PG_UPI_Id}
    ...    ${PG_NetBanking}

    Click Element    ${PG_NetBanking_RadioButton}
    Wait Until Element Is Visible    ${PG_HDFC_Bank}
    Click Element    ${PG_HDFC_Bank}
    Click Element    ${PG_Pay_Button}

    Wait Until Element Is Visible    ${PG_Submit_Button}    timeout=10s
    Click Element    ${PG_Submit_Button}
    Wait Until Element Is Visible    ${PG_Order_Placed}    timeout=15s

    Verify Elements Visible From List
    ...    ${PG_Order_Amount}
    ...    ${PG_post_Payment_Method}
    ...    ${PG_Online_Payment}
    ...    ${PG_Your_order}
    ...    ${PG_Item_qty}
    ...    ${PG_Item_image}
    ...    ${PG_Track_Order}
    ...    ${PG_Delivery_address_header}
    ...    ${PG_Delivery_address_Name}
    ...    ${PG_Delivery_address_Phone}

    Click Element    ${PG_Track_Order}

    # Sleep    2s
    # Click Element    ${NEK_LOGO}

Verify Elements Visible From List
    [Arguments]    @{elements}
    FOR    ${element}    IN    @{elements}
        Wait Until Element Is Visible    ${element}    timeout=10s
    END
    
