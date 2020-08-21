*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
Open and Load
    Open Browser  https://www.amazon.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Load And Maximize Browser Window
    Open and Load
    Maximize Browser Window
User Search
    [Arguments]  ${search term}
    Wait And Click  css=#twotabsearchtextbox
    Input Text  css=#twotabsearchtextbox  ${search term}
    Press Keys  css=#twotabsearchtextbox  ENTER
Verify That Search Completed
    Wait Until Page Contains  results for
Add Product To Cart
    [Arguments]  ${search term}
    &{product links}  Create Dictionary  Reebok=css=#anonCarousel1 > ol:nth-child(1) > li:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > a:nth-child(1)  Nike=css=div.sg-col-4-of-24:nth-child(3) > div:nth-child(1) > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > h2:nth-child(1) > a:nth-child(1)  Puma=css=div.s-result-item:nth-child(2) > div:nth-child(1) > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > h2:nth-child(2) > a:nth-child(1)
    Wait And Click  ${product links}[${search term}]
    Wait And Click  css=#add-to-cart-button
Check The Cart
    [Arguments]  ${carts contain}
    Wait And Click  css=#nav-cart
    Page Should Contain  ${carts contain}
Verify Adress
    [Arguments]  ${country to delivery}
    Wait And Click  css=#glow-ingress-line1
    Page Should Contain  ${country to delivery}
Create Account
    [Arguments]  ${user name}  ${user email}  ${user password}
    Wait And Click  css=#nav-link-accountList
    Wait And Click  css=#createAccountSubmit
    Wait Until Page Contains  Create account
    Input Text  css=#ap_customer_name  ${user name}
    Input Text  css=#ap_email  ${user email}
    Input Text  css=#ap_password  ${user password}
    Input Text  css=#ap_password_check  ${user password}
    Wait And Click  css=#continue
Sign In
    [Arguments]  ${user email}  ${user password}
    Wait And Click  css=#nav-link-accountList
    Input Text  css=#ap_email  ${user email}
    Wait And Click  css=.a-button-input
    Wait Until Page Contains Element  css=#ap_password
    Input Text  css=#ap_password  ${user password}
    Wait And Click  css=#signInSubmit
ENG to ESP
    Wait And Click  css=.icp-nav-link-inner
    Wait Until Page Contains  Language Settings
    Wait And Click  css=div.a-row:nth-child(8) > div:nth-child(1) > label:nth-child(1) > span:nth-child(3)
    Wait And Click  css=.a-button-input
Verify That Language Settings Changed
    Page Should Contain Element  css=#icp-touch-link-language > span:nth-child(2)
Change Currency Settings
    Wait And Click  css=.icp-nav-link-inner
    Wait And Click  css=#a-autoid-0-announce
    Wait And Click  css=#icp-sc-dropdown_7
    Wait And Click  css=.a-button-input
Verify That Currency Settings Changed
    Page Should Contain Element  css=#icp-touch-link-cop > span:nth-child(2)
Change Password
    [Arguments]  ${user email}
    Wait And Click  css=.nav-line-1-container > span:nth-child(1)
    Wait Until Page Contains  Sign-In
    Input Text  css=#ap_email  ${user email}
    Wait And Click  css=.a-button-input
    Wait And Click  css=#auth-fpp-link-bottom
    Wait Until Page Contains  Password assistance
    Input Text  css=#ap_email  ${user email}
    Wait And Click  css=#continue
Sign Out
    Mouse Down  css=#nav-link-accountList
    Wait And Click  //*[@id="nav-item-signout"]/span

    