#login xpath

*** Variables ***

${loginButton} =  xpath =  //p[contains(text(), 'Login/SignUp')]
${enterPhoneNumber} =  xpath =  //input[@aria-label='Enter your phone number']
${getOtpButton} =  xpath =  //button[text()='Get OTP']
${enterOtp} =  xpath =  //input[@aria-label='Enter OTP']
${logoutButton} =  xpath =  //div[contains(@class, 'justify-center')]//button[contains(text(), 'Logout')]