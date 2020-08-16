*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Guest user search the product
    @{search term}  Create list  Reebok  Nike  Puma
    Open and Load
    Maximize Browser Window
    FOR   ${search  term}  IN  @{search terms}
     \  User Search  ${search term}
     \  Verify That Search Completed
     \  Add Product to cart 
Verify that products in the cart
    Open and Load
    Maximize Browser Window
    Check The Cart  Your Amazon Cart is empty
    Close Browser 
    