*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Verify that page loaded
    Load And Maximize Browser Window
    Close Browser
Verify address to delivery
    Load And Maximize Browser Window
    Verify Adress  Belarus
    Close Browser
User create account
    Load And Maximize Browser Window
    Create Account  Bazhena  bazhenkak@gmail.com    change13CHANGE13
    Close Browser
User sign in to the account
    Load And Maximize Browser Window
    Sign In  bazhenkak@gmail.com    change13
    Close Browser
User change the language settings
    Load And Maximize Browser Window
    ENG to ESP
    Verify That language Settings changed
    Close Browser
User change the currency settings
    Load And Maximize Browser Window
    Change Currency Settings
    Maximize Browser Window
    Verify That Currency Settings Changed
    Close Browser
User forgot the password
    Load And Maximize Browser Window
    Change Password  bazhenkak@gmail.com
    Close Browser
User sign out of the account
    Load And Maximize Browser Window
    Sign In  bazhenkak@gmail.com    change 13
    Sign out
    Close Browser
