*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Signed user search the product
    @{search terms}  Create list  Reebok  Nike  Puma
    Open and Load
    Maximize Browser Window
    Sign In
    FOR   ${search term}  IN  @{search terms}
       User Search  ${search term}
       Verify That Search Completed
       Add Product to cart
    END
   Check The Cart  Subtotal (3 items):
    