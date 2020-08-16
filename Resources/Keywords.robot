*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot

*** Keywords ***
Open and Load
    Open Browser  https://www.amazon.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
User Search
    [Arguments]  ${search term}
    Wait Until Page Contains Element  //*[@id="twotabsearchtextbox"]
    Click Element   //*[@id="twotabsearchtextbox"]
    Input Text  //*[@id="twotabsearchtextbox"]  ${search term}
    Click Element  css=.nav-search-submit > input:nth-child(2)
Verify That Search Completed
    Wait Until Page Contains  results for
Add Product To Cart
    Wait Until Page Contains Element  css=div.sg-col-4-of-24:nth-child(4) > div:nth-child(1) > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > h2:nth-child(1) > a:nth-child(1) > span:nth-child(1)
    Click Element  css=div.sg-col-4-of-24:nth-child(4) > div:nth-child(1) > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > h2:nth-child(1) > a:nth-child(1) > span:nth-child(1)
    Wait Until Page Contains Element  css=#add-to-cart-button
    Click Element  css=#add-to-cart-button
Check The Cart
    [Arguments]  ${carts contain}
    Wait Until Page Contains Element  css=#nav-cart
    Click Element  css=#nav-cart
    Page Should Contain  ${carts contain}
Verify Adress
    [Arguments]  ${country to delivery}
    Wait Until Page Contains Element  css=#glow-ingress-line1
    Click Element  css=#glow-ingress-line1 
    Page Should Contain  ${country to delivery}
Create Account
    Wait Until Page Contains Element  css=#nav-link-accountList
    Click Element  css=#nav-link-accountList
    Wait Until Page Contains Element  css=#createAccountSubmit
    Click Element  css=#createAccountSubmit
    Wait Until Page Contains  Create account
    Input Text  css=#ap_customer_name  ${user name}
    Input Text  css=#ap_email  ${user email}
    Input Text  css=#ap_password  ${user password}
    Input Text  css=#ap_password_check  ${user password}
    Click Element  css=#continue
Sign In
    Wait Until Page Contains Element  css=#nav-link-accountList
    Click Element  css=#nav-link-accountList
    Input Text  css=#ap_email  ${user email}
    Wait Until Page Contains Element  css=.a-button-input
    Click Element  css=.a-button-input
    Wait Until Page Contains Element  css=#ap_password
    Input Text  css=#ap_password  ${user password}
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
    Input Text  css=#ap_email  ${user email}
    Click Element  css=.a-button-input
    Wait Until Page Contains Element  css=#auth-fpp-link-bottom
    Click Element  css=#auth-fpp-link-bottom
    Wait Until Page Contains  Password assistance
    Input Text  css=#ap_email  ${user email}
    Click Element  css=#continue
Sign Out
    Mouse Down   css=#nav-link-accountList
    Wait Until Page Contains Element   //*[@id="nav-item-signout"]/span
    Click Element  //*[@id="nav-item-signout"]/span
    
    