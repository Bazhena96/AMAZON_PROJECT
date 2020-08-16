*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Signed user search the product
    @{search terms}  Create list  Reebok  Nike  Puma
    Load And Maximize Browser Window
    Sign In  bazhenkak@gmail.com    change13
    FOR   ${search term}  IN  @{search terms}
       User Search  ${search term}
       Verify That Search Completed
       Add Product to cart
    END
Verify that products in the cart
    Load And Maximize Browser Window
    Check The Cart  Subtotal (3 items):
    Close Browser