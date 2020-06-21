***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Verify That Page Loaded
  When Open and Load
  Then Close Browser 
Verify Address to Delivery
   Given Open and Load
    Maximize Browser Window
   When Verify Adress  Belarus
   Then Close Browser 
User Create Account
   Given Open and Load
   And Maximize Browser Window
   When Create Account
   Then Close Browser 
User Sign In To Account
   Given Open and Load
   And Maximize Browser Window
   When Sign In
   Then Close Browser 
User Change The Language Settings
   Given Open and Load
   When ENG to ESP
   Then Verify That language Settings changed
    Close Browser
User Change The Currency Settings
   Given Open and Load
   When Change Currency Settings
   And Maximize Browser Window
   Then Verify That Currency Settings Changed
    Close Browser 
User Forgot The Password
   Given Open and Load
   When Change Password
   Then Close Browser 
User Sign Out Of Account
   Given Open and Load
   When Sign In
   And Sign out
   Then Close Browser 
