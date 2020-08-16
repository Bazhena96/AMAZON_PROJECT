*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Signed User Search The Product 
    @{SEARCH_TERMS}  Create list  Reebok  Nike  Puma
    Open and Load
    Maximize Browser Window
    Sign In
    FOR   ${SEARCH_TERM}  IN  @{SEARCH_TERMS}
     \  User Search  ${SEARCH_TERM}
     \  Verify That Search Completed
     \  Add Product to cart   
   Check The Cart  Subtotal (3 items):
    