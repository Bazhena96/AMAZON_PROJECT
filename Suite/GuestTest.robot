*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
 Guest User Search The Product 
    @{SEARCH_TERMS}  Create list  Reebok  Nike  Puma
    Open and Load
    Maximize Browser Window
    FOR   ${SEARCH_TERM}  IN  @{SEARCH_TERMS}
     \  User Search  ${SEARCH_TERM}
     \  Verify That Search Completed
     \  Add Product to cart 
Verify That Products In The Cart
    Open and Load
    Maximize Browser Window
    Check The Cart  Your Amazon Cart is empty
    Close Browser 
    