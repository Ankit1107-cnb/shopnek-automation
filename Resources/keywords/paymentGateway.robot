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
    Click Element    ${place_order}
    Sleep    5s
    Wait Until Element Is Visible    ${PG_Header_Amount}
    Wait Until Element Is Visible    ${PG_bag_Icon}
    Wait Until Element Is Visible    ${PG_UPI_AppHeader}
    Wait Until Element Is Visible    ${PG_UPI_Id}
    Wait Until Element Is Visible    ${PG_NetBanking}
    sleep    2s
    # Element Should Be Visible    ${PG_NetBanking_RadioButton}
    Click Element    ${PG_NetBanking_RadioButton}
    Sleep    2s
    Click Element    ${PG_HDFC_Bank}
    Sleep    2s
    Click Element    ${PG_Pay_Button}
    Sleep    5s
    # Click Element    ${PG_Success_Button}
    Click Element    ${PG_Submit_Button}
    Sleep    10s
    Wait Until Element Is Visible    ${PG_Order_Placed}
    Element Should Be Visible    ${PG_Order_Amount}
    Element Should Be Visible    ${PG_post_Payment_Method}
    Element Should Be Visible    ${PG_Online_Payment}
    Element Should Be Visible    ${PG_Your_order}
    Element Should Be Visible    ${PG_Item_qty}
    Element Should Be Visible    ${PG_Item_image}
    Element Should Be Visible    ${PG_Track_Order}    
    Element Should Be Visible    ${PG_Delivery_address_header}
    Element Should Be Visible    ${PG_Delivery_address_Name}
    Element Should Be Visible    ${PG_Delivery_address_Phone}
    Click Element    ${PG_Track_Order}
    # Sleep    2s
    # Click Element    ${NEK_LOGO}
    
