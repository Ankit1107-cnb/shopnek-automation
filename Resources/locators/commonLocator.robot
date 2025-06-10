*** Variables ***

# Search bar across the NEK application
${SEARCH_BAR_HOMEPAGE}    xpath =  //span[contains(text(), 'Search for')]
${SEARCH_INPUT}    xpath =  //input[@placeholder='Search for']
${SEARCH_INPUT_ICON}    xpath =  //input[@placeholder='Search for']/ancestor::div[contains(@class, 'border-grey-500')]//img[@alt='icon']
${SEARCH_ICON} =    xpath =  (//img[@alt='search'])[1]

${ActualSearchResult} =    xpath =  //h1[text()='No products found']

#Tracking page icon
${TRUCK_ICON} =    xpath =  //img[contains(@src, 'truck.avif')]
${BACK_ICON} =    xpath =  //img[@alt='back arrow']
${BACK_ARROW_CART} =    xpath = //img[@alt='back' and contains(@class, 'h-auto')]
${YOUR_ACCOUNT_HEADER} =    xpath =  //div[contains(@class, 'bg-primary-default')]//p[text()='Your Account']
${YOUR_ACCOUNT_HAMBURGER} =  xpath =  //div[@class='bg-primary-default flex flex-row pl-8 h-16 items-center py-5 w-full']/p[text()='Your Account']


#Buttons
@{cart_buttons}    xpath=(//button[span[text()='Add']])[2]    xpath=(//button[.//p[contains(text(),'View')]])[1]
${ADD_BUTTON} =    xpath =  (//button[span[text()='Add']])[2]
${ADD_TO_BAG} =    xpath =  (//span[contains(text(), 'Add to Bag')])[1]
${VIEW_DETAILS} =    xpath =  (//button[.//div[contains(text(), 'View') or .//p[text()='View']]])[2]
${PLP_VIEW_DETAILS} =    xpath =  (//button[p[text()='View Details']])[2]
${BUY_NOW_BUTTON} =    xpath =  //button[contains(text(), 'Buy Now')]
${GO_TO_BAG} =    //button[.//span[text()='Go to Bag']]
${GO_TO_BAG_CHECKOUT} =    xpath =  //div[@class='text-white']//div[@class='font-semibold text-sm' and text()='Go to Bag']


${crossIcon} =    xpath =  //img[@alt='close' and contains(@src, 'close.webp')]
${BACK_ARROW} =    xpath =  //img[@alt='icon' and contains(@src, 'left-black')]
${BACK_ARROW_PLP} =    xpath =  //img[@alt='back' and contains(@src, 'left-black')]



${NEK_HOMEPAGE_HEADER} =    xpath = //img[contains(@src, 'logo-teal-jar.webp')]
${NEK_LOGO} =    xpath = //img[contains(@alt, 'Nek') and contains(@alt, 'Jewellery')]

#chevron
${collapse_chevron} =  xpath =  //span[@data-open='true' and @aria-hidden='true']//img[@alt='down cheveron']
${open_chevron} =  xpath =  //img[@alt='down cheveron']

#Sort and Filters
${SORT} =    xpath =    //span[normalize-space(text())='Sort']
${FILTER} =    xpath =    //span[normalize-space(text())='Filter']
${FILTER_ICON} =    xpath =  //img[contains(@src, 'filter.webp')]
${SORT_ICON} =    xpath =  //img[contains(@src, 'sort.webp')]
${CATEGORIES_FILTER} =    xpath =  //div[@class='flex gap-1']/span[text()='Categories']
${PRICE_FILTER} =  xpath =  //div[@class='relative p-4 cursor-pointer bg-white border-t']//span[text()='Price Range']
${PURITY_FILTER} =    xpath =  //div[@class='relative p-4 cursor-pointer bg-white border-t']//span[text()='Purity']
${GENDER_FILTER} =    xpath =  //div[@class='relative p-4 cursor-pointer bg-white border-t']//span[text()='Gender']
${FINISH_FILTER} =    xpath =  //div[@class='relative p-4 cursor-pointer bg-white border-t']//span[text()='Finish']
${STONE_FILTER} =    xpath =  //div[@class='relative p-4 cursor-pointer bg-white border-t']//span[text()='Stone']
${CLOSE_ICON} =    xpath =  //div[contains(@class, 'flex') and contains(@class, 'justify-between')]//img[contains(@alt, 'close')]

${22KTGOLD_FILTER} =    xpath =  //input[@type='checkbox' and @aria-label='22KT Gold']
${STERLING_SILVER_FILTER} =    xpath =  //input[@type='checkbox' and @aria-label='Sterling Silver']

${APPLY_FILTER} =    xpath =  //button[normalize-space(text())='Apply']
${NO_PRODUCTS_FOUND} =    xpath =  //h1[normalize-space(text())='No products found']
${CLEAR_FILTERS} =    xpath =  //button[normalize-space(text())='Clear Filters']





#Radio buttons
${SORT_LOW_TO_HIGH} =    xpath =  //label[.//span[text()='Price Low to High']]//input[@type='radio']
${SORT_HIGH_TO_LOW} =    xpath =  //label[.//span[text()='Price High to Low']]//input[@type='radio']
${LATEST} =    xpath =  //label[.//span[text()='Latest']]//input[@type='radio']
${FEATURED} =    xpath =  //label[.//span[text()='Featured']]//input[@type='radio']
