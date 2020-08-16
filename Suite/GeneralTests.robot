*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Verify that page loaded
    Open and Load
    Close Browser 
Verify address to delivery
    Open and Load
    Maximize Browser Window
    Verify Adress  Belarus
    Close Browser 
User create account
    Open and Load
    Maximize Browser Window
    Create Account  Bazhena  bazhenkak@gmail.com  change13CHANGE13
    Close Browser 
User sign in to the account
    Open and Load
    Maximize Browser Window
    Sign In  bazhenkak@gmail.com  change13
    Close Browser 
User change the language settings
    Open and Load
    ENG to ESP
    Verify That language Settings changed
    Close Browser
User change the currency settings
    Open and Load
    Change Currency Settings
    Maximize Browser Window
    Verify That Currency Settings Changed
    Close Browser 
User forgot the password
    Open and Load
    Change Password
    Close Browser 
User sign out of the account
    Open and Load
    Sign In  bazhenkak@gmail.com change 13
    Sign out
    Close Browser 
