*** Settings ***
Library           SeleniumLibrary
Library    XML
Library    Collections
Library    String
Resource    ../../Resources/variables/globalVariable.robot

*** Variables ***

${price_low_high} =  //span[contains(text(), 'Price Low to High')]
${hotsellers} =  //div[@class='flex justify-center items-center']//span[contains(@class, 'text-xs') and contains(text(), 'Hot Sellers')]
${silver_pill} =  //div[contains(@class, 'justify-center')]//span[contains(@class, 'text-xs') and normalize-space(text())='Silver']
${gold_pill} =  //div[contains(@class, 'justify-center')]//span[contains(@class, 'text-xs') and normalize-space(text())='Gold']
${low_making_charge} =  //span[contains(text(), 'LOW MAKING')]
${newArrivals} =  //span[text()='NEW ARRIVAL']
${bestSellers} =  //span[text()='Bestseller']
${price_post_couponDiscount} =  (.//span[contains(text(), 'Buy for ₹')])[1]
${applied_filter_pill} =  //a[span[contains(text(), 'Chains')]]
${close_pill_icon} =  //div[contains(@class, 'rounded-3xl')]//img[@alt='close' and contains(@class, 'cursor-pointer')]
${plp_braker} =  //img[@alt='silver' and contains(@src, '2_breaker.avif')]

#other locators