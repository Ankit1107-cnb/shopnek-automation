*** Settings ***
Library           SeleniumLibrary
Library    XML
Library    Collections
Library    String
Resource    ../../Resources/variables/globalVariable.robot

*** Variables ***

${productURL} =  ${nekTestURL}products/square-chain-18-inches
${earringProductURL} =  ${nekTestURL}products/yellow-gold-trident-earrings
${product_image} =  //div[contains(@class, 'aspect-square')]//img[contains(@class, 'object-contain')]
${share_icon} =  //a[contains(@href, 'api.whatsapp.com/send')]//img[@alt='share']
${similar_product} =  //img[@alt='similar-products']
${product_name} =  //span[contains(@class, 'text-base') and contains(@class, 'leading-5')]
${original_price} =  //span[contains(@class, 'line-through') and contains(@class, 'text-[20px]')]
${discounted_price} =  //span[contains(@class, 'line-through')]/following-sibling::span[contains(@class, 'font-bold')]
${discounted_percentage} =  (//span[contains(text(), '% OFF') or contains(text(), 'OFF')])[1]
${Delivery_Services} =  //span[text()='Delivery & Services']
${Delivered_7_days} =  //span[text()='Delivered within 7-10 days']
${easy_returns} =  //span[contains(text(), 'Easy') and contains(text(), 'Return')]
${cancellation_allowed} =  //span[contains(text(), 'Cancellation allowed')]
${customer_reviews} =  //span[contains(@class, 'text-base') and contains(@class, 'font-bold') and normalize-space(text())='Customer Reviews']
${similar_product} =  //div[span[text()='Similar Products']]/span
${shop_best_sellers} =  //span[text()='Shop Our Bestsellers']
${shopByCategory} =  //span[text()='Shop by Category']

${exclusive_design_text} =  (//div[contains(@class, 'bg-gradient-to-r') and contains(@class, 'rounded-b-lg')]//span)[4]
${crossIcon_pdp} =  //div[contains(@class, 'justify-end') and contains(@class, 'items-end')]//img[@alt='close']


#Guest User Offer unlocked(bottom nav) on inactivity

${specialOfferUnlocked} =  //span[text()='Special Offer Unlocked!']
${closeOfferPopup} =  //div[@role='button' and @aria-label='Close']
