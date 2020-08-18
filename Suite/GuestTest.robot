*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Guest user search the product
    [Tags]  guest
    @{search terms}  Create list  Reebok  Nike  Puma
    Load And Maximize Browser Window
    FOR   ${search term}  IN  @{search terms}
       User Search  ${search term}
       Verify That Search Completed
       Add Product to cart  ${search term}
    END
    Check The Cart  Your Amazon Cart is empty
    Close Browser
Verify that products in the cart
    Load And Maximize Browser Window
    Check The Cart  Your Amazon Cart is empty
    Close Browser
    