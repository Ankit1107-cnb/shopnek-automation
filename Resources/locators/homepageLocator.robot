#Homepage Xpath
*** Variables ***

${urlStaging} =  https://cached-staging.shopnek.com/

${navBar_sale} =  xpath = //nav[contains(@class, 'bottom-0')]//span[text()='Sale']
${navBar_coins} =  xpath = //nav[contains(@class, 'bottom-0')]//span[text()='Coins']
${navBar_login} =  xpath = //nav[contains(@class, 'bottom-0')]//span[text()='Login']

${chains} =  xpath =  //a[.//img[@alt='chains']]
${earrings} =  xpath =  //a[.//img[@alt='cute studs']]
${pendants} =  xpath =  //a[.//img[@alt='pendants']]
${rings} =  xpath =  //a[.//img[@alt='rings']]

${ChainsURL} =  ${urlStaging}products?categories=chain
${RingsURL} =  ${urlStaging}products?categories=ring
${PendantsURL} =  ${urlStaging}products?subCategories=pendant
${EarringsURL} =  ${urlStaging}products?collections=cute_studs1


${nekHeader} =  xpath =  //div[@class='flex items-center']/a/img[@alt='logo']
${nekSaleHeader} =  xpath =  (//a[@href='/' and img[contains(@alt, 'Buy Jewellery')]])[1]

${express_delivery_banner} =   xpath =   //img[@alt='express-delivery-1' and contains(@src, 'NonBangloreGD.avif') and contains(@src, 'shopnek.com')]

${nekHeader_Banner} =   xpath =   //div[@class='w-full py-[10px] text-xs text-center font-normal']

${hamburger} =   xpath =   //img[contains(@src, 'hamburger.webp')]

${shopForMen} =   xpath =   //div[@data-product-id='for him']

${shopForWomen} =   xpath =   //img[@alt='for her']

${categoriesList} =   xpath =   //*[@class="flex flex-col gap-4 w-full"]

${image_banners_newGD} =   xpath =   //div[@id='widgets-spotlight-4']//img
${coinBanner} =  xpath = //img[contains(@src, 'banners/coins.avif')]

${continueShopping} =   xpath =   //span[text()='Continue Shopping']

${shopByPrice} =   xpath =   //div[@id='widget-9']//span[text()='Shop By Price']
${dealsForEveryBudget} =   xpath =   //div[@id='widget-9']//span[text()='Deals for every budget']
${shopUnder10k} =   xpath =   //img[@alt='shop under 10000']
${shopUnder4999} =   xpath =   //img[@alt='shop under 4999']
${shopUnder1999} =   xpath =   //img[@alt='shop under 1999']
${shopUnder999} =   xpath =   //img[@alt='shop under 999']




${bracelets} =  xpath =  //a[@href='products?collections=Nek_Bracelets']//span[text()='Bracelets']
# ${idols_and_frames} =  xpath =   //a[@href='/products?collections=idols_and_frames1']//span[text()='Idols & Frames']
# ${shubh_coins} =  xpath =  //a[@href='/products?collections=shubh_coins1']//span[text()='Shubh Coins']
# ${god_pendants} =  xpath =  //a[@href='/products?collections=god_pendants1']//span[text()='God Pendants']
# ${mangalsutras} =  xpath =  //a[@href='/products?collections=mangalsutras1']//span[text()='Mangalsutras']
# ${silver_jewellery} =  xpath =  //a[@href='/products?collections=silver_jewellery1']//span[text()='Silver Jewellery']
# ${casual_necklaces} =  xpath =  //a[@href='/products?collections=casual_necklaces1']//span[text()='Casual Necklaces']
# ${anklets} =  xpath =  //a[@href='/products?collections=anklets1']//span[text()='Anklets']

# ${MangalsutraURL} =  ${urlStaging}products?categories=mangalsutras1
# ${CoinsURL} =  ${urlStaging}products?collections=shubh_coins1
# ${idols_and_framesURL} =  ${urlStaging}products?categories=idols_and_frames1
# ${god_pendantsURL} =  ${urlStaging}products?categories=god_pendants1
# ${shubh_coinsURL} =  ${urlStaging}products?categories=shubh_coins1
# ${silver_jewelleryURL} =  ${urlStaging}products?categories=silver_jewellery1
# ${casual_necklacesURL} =  ${urlStaging}products?categories=casual_necklaces1
# ${ankletsURL} =  ${urlStaging}products?categories=anklets1
# ${braceletURL} =  ${urlStaging}products?collections=Nek_Bracelets
# ${silver_chainsURL} =  ${urlStaging}products?categories=Silver%20Chains