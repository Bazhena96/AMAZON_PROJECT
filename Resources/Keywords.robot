***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Keywords***
Open and Load
    Open Browser  https://www.amazon.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Sleep  5
User Search
    [Arguments]  ${SEARCH_TERM}
    Wait Until Page Contains Element  //*[@id="twotabsearchtextbox"]
    Click Element   //*[@id="twotabsearchtextbox"]
    Input Text  //*[@id="twotabsearchtextbox"]  ${SEARCH_TERM}
    Click Element  css=.nav-search-submit > input:nth-child(2)
Verify That Search Completed
    Wait Until Page Contains  results for
Add Product To Cart
    Wait Until Page Contains Element  css=div.sg-col-4-of-24:nth-child(4) > div:nth-child(1) > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > h2:nth-child(1) > a:nth-child(1) > span:nth-child(1)
    Click Element  css=div.sg-col-4-of-24:nth-child(4) > div:nth-child(1) > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > h2:nth-child(1) > a:nth-child(1) > span:nth-child(1)
    Wait Until Page Contains Element  css=#add-to-cart-button
    Click Element  css=#add-to-cart-button
Check The Cart
    [Arguments]  ${CARTS CONTAIN}
    Wait Until Page Contains Element  xpath=/html/body/div[1]/header/div/div[1]/div[2]/div/a[4]/span[3]
    Click Element  xpath=/html/body/div[1]/header/div/div[1]/div[2]/div/a[4]/span[3]
    Page Should Contain  ${CARTS CONTAIN}
Verify Adress
    [Arguments]  ${Country to delivery}
    Wait Until Page Contains Element  css=#glow-ingress-line1
    Click Element  css=#glow-ingress-line1 
    Page Should Contain  ${Country to delivery}
Create Account
    Click Element  css=.nav-long-width
    Wait Until Page Contains Element  css=#createAccountSubmit
    Click Element  css=#createAccountSubmit
    Wait Until Page Contains  Create account
    Input Text  css=#ap_customer_name  ${USER_NAME}
    Input Text  css=#ap_email  ${USER_EMAIL}
    Input Text  css=#ap_password  ${USER_PASSWORD}
    Input Text  css=#ap_password_check  ${USER_PASSWORD}
    Click Element  css=#continue
Sign In
    Wait Until Page Contains Element  css=.nav-long-width
    Click Element  css=.nav-long-width
    Input Text  css=#ap_email  ${USER_EMAIL}
    Wait Until Page Contains Element  css=.a-button-input
    Click Element  css=.a-button-input
    Wait Until Page Contains Element  css=#ap_password
    Input Text  css=#ap_password  ${USER_PASSWORD}
    Click Element  css=#signInSubmit
ENG to ESP
    Wait Until Page Contains Element  css=.icp-nav-link-inner
    Click Element  css=.icp-nav-link-inner
    Wait Until Page Contains   Language Settings 
    Click Element  css=div.a-row:nth-child(8) > div:nth-child(1) > label:nth-child(1) > span:nth-child(3)
    Click Element  css=.a-button-input
Verify That Language Settings Changed
   Page Should Contain Element  css=#icp-touch-link-language > span:nth-child(2)
Change Currency Settings
    Wait Until Page Contains Element  css=.icp-nav-link-inner
    Click Element  css=.icp-nav-link-inner
    Wait Until Page Contains element  css=#a-autoid-0-announce
    Click Element  css=#a-autoid-0-announce
    Wait Until Page Contains Element  css=#icp-sc-dropdown_7
    Click Element  css=#icp-sc-dropdown_7
    Wait until Page Contains Element  css=.a-button-input
    Click Element  css=.a-button-input
Verify That Currency Settings Changed
    Page Should Contain Element  css=#icp-touch-link-cop > span:nth-child(2)
Change Password
    Wait Until Page Contains Element  css=.nav-line-1-container > span:nth-child(1)
    Click Element  css=.nav-line-1-container > span:nth-child(1)
    Wait Until Page Contains   Sign-In 
    Input Text  css=#ap_email  ${USER_EMAIL}
    Click Element  css=.a-button-input
    Wait Until Page Contains Element  css=#auth-fpp-link-bottom
    Click Element  css=#auth-fpp-link-bottom
    Wait Until Page Contains  Password assistance
    Input Text  css=#ap_email  ${USER_EMAIL}
    Click Element  css=#continue
Sign Out
    Mouse down   css=#nav-link-accountList
    Wait Until Page Contains  xpath=//*[@id="nav-item-signout"]
    Click element  xpath=//*[@id="nav-item-signout"]
    
    