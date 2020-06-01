***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***

Signed User Search The Product 
    [Documentation]  The first product from list.
    Open and Load
    User Search  Reebok
    Verify That Search Completed
    Close Browser 
Signed User Add Product To The Cart 
    [Documentation]  The first product from list.
    Open and Load
    Maximize Browser Window
    User Search  Reebok
    Verify That Search Completed
    Add Product to cart
    Close Browser
Verify That Product In The Cart 
    Open and Load
    Maximize Browser Window
    Check The Cart  1 product
    Close Browser
    