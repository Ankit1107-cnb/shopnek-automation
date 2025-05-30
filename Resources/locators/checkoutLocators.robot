*** Variables ***

${coupon_apply_button} =  xpath =  //button[text()='Apply']
${coupon_remove_button} =  xpath =  //button[text()='Remove']
${see_all_coupons} =  xpath =  //button[text()='See all coupons']
${total_discount} =  xpath =  (//div[contains(@class, 'rounded-lg') and contains(., 'Your total discount')])[1]
${highlighted_bag_stepper} =  xpath =  //li[contains(@class, 'text-teal-500')]//div[contains(text(), 'Bag')]
${cart_header} =  xpath =  //span[contains(text(), 'Your Bag')]
${free_delivery} =  xpath =  //span[contains(text(), 'FREE Delivery')]
${price_breakup_header} =  xpath =  //div[@class='flex-1 flex flex-col text-start']//span[contains(text(), 'Price Breakup')]
${sub_total} =  xpath =  //span[text()='Sub Total']
${platform_discount} =  xpath =  //div[span[text()='Platform Discount']]
${shipping_charge} =  xpath =  //div[span[text()='Shipping Charges']]
${total_discount} =  xpath =  //span[text()='Coupon Discount']
${total} =  xpath =  //div[span[text()='Total']]
${total_price} =  xpath =  //div[contains(@class, 'text-[0.813rem]')]/div/span[not(contains(@class, 'line-through'))]
${dropdown} =  xpath =  //div[@data-slot='mainWrapper']
${crossIcon_cart} =  xpath =  //div[./img[@alt='remove item from cart']]
${close_address_bottomsheet} =  xpath =  //img[@alt='close']
${continue_to_address} =  xpath =  //a[contains(@href, 'cart/address') and text()='Continue to Address']
${your_cart_is_empty} =  xpath =  //span[text()='Your Bag is Empty']
${start_shopping} =  xpath =  //button[normalize-space()='Start Shopping']
${checkout_price} =  xpath =  //span[@class='text-[0.813rem]' and contains(text(),'₹')]
${viewProductFromCart} =  xpath =  (//span[contains(text(), '₹')])[1]
${secondaryProduct} =  xpath =  (//span[text()='Add to Bag'])[6]
${addSecondaryProduct} =  xpath =  (//button[.//span[text()='Add to Bag']])[5]



${input_coupon_code} =  xpath =  //label[contains(text(), 'Enter Coupon Code')]/preceding-sibling::input
${custom_coupon_apply_cta} =  xpath =  (//button[contains(text(), 'Apply')])[2]

${selected_address} =  xpath =  //input[@type='radio' and @checked]
${add_new_address} =  xpath =  //p[normalize-space()='+ Add New Address']
${selected_address_header} =  xpath =  //span[normalize-space()='Select Address']
${edit_address} =  xpath =  /(//button[text()='Edit'])[1]
${remove_address} =  xpath =  (//button[text()='Remove'])[1]   
${highlighted_address_stepper} =  xpath =  //li[contains(@class, 'text-teal-500')]//div[contains(text(), 'Address')]
${continue_CTA} =  xpath =  //a[text()='Continue']

${edit_address_header} =  xpath =  //div[contains(@class, 'bg-white')]//p[text()='Edit Address']
${address_details_header} =  xpath =  //p[text()='Address Details']
${pincode_required} =  xpath =  //input[@name='pinCode']
${city_required} =  xpath =  //label[contains(text(), 'City (Required)')]
${state_required} =  xpath =  //label[contains(text(), 'State (Required)')]
${complete_address} =  xpath =  //lab//label[contains(text(), 'House no.') and contains(text(), 'Required')]
${add_user_address} =  xpath =  //textarea[@name='mainAddress']


${name_required} =  xpath =  //p[text()='Contact Details']/following::input[@name='name'][1]
${contact_number} =  xpath =  //p[text()='Contact Details']/following::input[@name='phone'][1]
${enterEmail} =  xpath =  //label[contains(text(), 'Email (Optional)')]
${save_address_cta} =  xpath =  //button[contains(text(), 'Save Address')]

${address_popUp_header} =  xpath =  //p[contains(text(), 'Having trouble with address?')]
${continueToSaveAddress} =  xpath =  //div[contains(@class, 'shadow-lg')]//p[text()='Continue to Save Address']
${saveAddressText} =  xpath =  //p[text()='Save address for faster checkout']
${outOfStockWarningText} =  xpath =  //p/span[text()='Out of Stock']
${closePopUp} =  xpath =  //img[@alt='close']




${PG_Pending_Icon} =  xpath = //div[contains(@style, 'top: 7%')]/img[@alt='order pending']
${PG_Header_Amount} =  xpath =  //span[contains(@class, 'b2bHeaderAmount')]/currency
${PG_bag_Icon} =  xpath =  //span[contains(@class, 'b2bMerchantLogoWrapper')]/img
${PG_UPI_AppHeader} =  xpath =  //label[contains(@class, 'instrument-checked') and @for='upi-apps']
${PG_UPI_Id} =  xpath =  //label[@for='new-vpa' and normalize-space(text())='UPI ID']
${PG_Order_Placed} =  xpath =  //h2[text()='Order Placed']
${PG_Pending_Order} =  xpath =  //div[contains(@class, 'flex') and .//h2[text()='We are processing your order']]/h2
${PG_Order_Amount} =  xpath =  //p[text()='Payment Method']/following-sibling::div//p[contains(text(),'₹')]
${PG_post_Payment_Method} =  xpath =  //p[text()='Payment Method']
${PG_Online_Payment} =  xpath =  //div[@class='w-full flex justify-between items-center']/p[1]
${PG_Delivery_address_header} =  xpath =  //h3[text()='Delivery Address']
${PG_Delivery_address_Name} =  xpath = //div[h3[text()='Delivery Address']]//p[1]
${PG_Delivery_address_Phone} =  xpath = //div[h3[text()='Delivery Address']]//p[2]    
${PG_Delivery_address_Address} =  xpath = //div[h3[text()='Delivery Address']]//p[3]
${PG_Your_order} =  xpath =  //h3[text()='Your Order']
${PG_Track_Order} =  xpath =  //div[@class='flex justify-between items-center mb-2']//a[text()='Track Order']
${PG_Item_qty} =  xpath =  //div[@class='flex gap-3 py-3 items-center']//p[text()='Qty: 1']
${PG_Item_image} =  xpath =  //img[contains(@src, 'shopnek.com/assets_new/images/products/')]

${PG_NetBanking} =  xpath =  //label[@for='net-banking']
${PG_NetBanking_RadioButton} =  xpath =  //input[@id='net-banking']
${PG_NetBanking_Subtext} =  xpath =  //div[contains(text(), 'Choose your bank')]
${PG_HDFC_Bank} =  xpath =  //img[contains(@src, 'HDFC.png')]
${PG_Pay_Button} =  xpath =  //button[@id='b2bOnboardingSubmitButton']
${PG_Pending_Button} =  xpath =  //label[@id='pendingLabel']/input[@value='PENDING']
${PG_Success_Button} =  xpath =  //label[@id='successLabel']/input[@value='SUCCESS']
${PG_Failure_Button} =  xpath = //label[@id='failureLabel']/input[@value='FAILED']
${PG_Submit_Button} =  xpath =  //input[@type='submit' and contains(@class, 'btn-primary')]




#Order Summary

${place_order} =  xpath = //button[text()='Place Order']
${highlighted_summary_stepper} =  xpath =  //li[contains(@class, 'text-teal-500')]//div[contains(text(), 'Summary')] 
${order_summary_header} =  xpath =  //span[text()='Order Summary']
${couponDiscountOrderSummary} =  xpath =  //p[contains(text(), 'saving with')]
${priceBreakupChevron} =  xpath =  //button//img[@alt='down cheveron']
${deliveryAddressChevron} =  xpath =  //img[contains(@alt, 'right chevron icon')]
${quantityChevron} =  xpath =  //button[@aria-label='select']
${increaseQuantityChevron} =  xpath =  //li[@data-key='2']

