***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Verify That Page Loaded
    Open and Load
    Close Browser 
Verify Address to Delivery
    Open and Load
    Maximize Browser Window
    Verify Adress  Belarus
    Close Browser 
User Create Account
    Open and Load
    Maximize Browser Window
    Create Account
    Close Browser 
User Sign In To Account
    Open and Load
    Maximize Browser Window
    Sign In
    Close Browser 
User Change The Language Settings
    Open and Load
    ENG to ESP
    Verify That language Settings changed
    Close Browser
User Change The Currency Settings
    Open and Load
    Change Currency Settings
    Maximize Browser Window
    Verify That Currency Settings Changed
    Close Browser 
User Forgot The Password
    Open and Load
    Change Password
    Close Browser 
User Sign Out Of Account
    Open and Load
    Sign In
    Sign out
    Close Browser 
