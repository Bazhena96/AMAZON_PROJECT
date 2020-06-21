***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Keywords***
Open and Load
    Open Browser  https://www.amazon.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
User Search
    [Arguments]  ${SEARCH_TERM}
   Given Wait Until Page Contains Element  //*[@id="twotabsearchtextbox"]
   When Click Element   //*[@id="twotabsearchtextbox"]
   And Input Text  //*[@id="twotabsearchtextbox"]  ${SEARCH_TERM}
   Then Click Element  css=.nav-search-submit > input:nth-child(2)
Verify That Search Completed
    Wait Until Page Contains  results for
Add Product To Cart
   Given Wait Until Page Contains Element  css=div.sg-col-4-of-24:nth-child(4) > div:nth-child(1) > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > h2:nth-child(1) > a:nth-child(1) > span:nth-child(1)
   When Click Element  css=div.sg-col-4-of-24:nth-child(4) > div:nth-child(1) > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > h2:nth-child(1) > a:nth-child(1) > span:nth-child(1)
   And Wait Until Page Contains Element  css=#add-to-cart-button
   Then Click Element  css=#add-to-cart-button
Check The Cart
    [Arguments]  ${CARTS CONTAIN}
   Given Wait Until Page Contains Element  css=#nav-cart
   When Click Element  css=#nav-cart
   Then Page Should Contain  ${CARTS CONTAIN}
Verify Adress
    [Arguments]  ${Country to delivery}
   Given Wait Until Page Contains Element  css=#glow-ingress-line1
   And Click Element  css=#glow-ingress-line1 
   Then Page Should Contain  ${Country to delivery}
Create Account
   Given Wait Until Page Contains Element  css=#nav-link-accountList
   When Click Element  css=#nav-link-accountList
   Then Wait Until Page Contains Element  css=#createAccountSubmit
   When Click Element  css=#createAccountSubmit
   And Wait Until Page Contains  Create account
   Then Input Text  css=#ap_customer_name  ${USER_NAME}
   And Input Text  css=#ap_email  ${USER_EMAIL}
   And Input Text  css=#ap_password  ${USER_PASSWORD}
   And Input Text  css=#ap_password_check  ${USER_PASSWORD}
   Then Click Element  css=#continue
Sign In
   Given Wait Until Page Contains Element  css=#nav-link-accountList
   When Click Element  css=#nav-link-accountList
   And Input Text  css=#ap_email  ${USER_EMAIL}
   Then Wait Until Page Contains Element  css=.a-button-input
   When Click Element  css=.a-button-input
   And Wait Until Page Contains Element  css=#ap_password
   Then Input Text  css=#ap_password  ${USER_PASSWORD}
   And Click Element  css=#signInSubmit
ENG to ESP
   Given Wait Until Page Contains Element  css=.icp-nav-link-inner
   When Click Element  css=.icp-nav-link-inner
   And Wait Until Page Contains   Language Settings 
   Then Click Element  css=div.a-row:nth-child(8) > div:nth-child(1) > label:nth-child(1) > span:nth-child(3)
   And Click Element  css=.a-button-input
Verify That Language Settings Changed
   Page Should Contain Element  css=#icp-touch-link-language > span:nth-child(2)
Change Currency Settings
   Given Wait Until Page Contains Element  css=.icp-nav-link-inner
   When Click Element  css=.icp-nav-link-inner
   And Wait Until Page Contains element  css=#a-autoid-0-announce
   Then Click Element  css=#a-autoid-0-announce
   And Wait Until Page Contains Element  css=#icp-sc-dropdown_7
   Then Click Element  css=#icp-sc-dropdown_7
   When Wait until Page Contains Element  css=.a-button-input
   Then Click Element  css=.a-button-input
Verify That Currency Settings Changed
    Page Should Contain Element  css=#icp-touch-link-cop > span:nth-child(2)
Change Password
   Given Wait Until Page Contains Element  css=.nav-line-1-container > span:nth-child(1)
   And Click Element  css=.nav-line-1-container > span:nth-child(1)
   Then Wait Until Page Contains   Sign-In 
   When Input Text  css=#ap_email  ${USER_EMAIL}
   And Click Element  css=.a-button-input
   Then Wait Until Page Contains Element  css=#auth-fpp-link-bottom
   When Click Element  css=#auth-fpp-link-bottom
   And Wait Until Page Contains  Password assistance
   Then Input Text  css=#ap_email  ${USER_EMAIL}
   And Click Element  css=#continue
Sign Out
   When Mouse Down   css=#nav-link-accountList
   And Wait Until Page Contains Element   //*[@id="nav-item-signout"]/span
   Then Click Element  //*[@id="nav-item-signout"]/span
    
    