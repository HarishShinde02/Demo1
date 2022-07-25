***Settings***
Documentation      Check Out Products
Resource           ../Resources/CommonFunctionality.robot
Resource           ../Resources/UserDefineKeywords.robot
Test Setup         CommonFunctionality.Start TestCase
Test Teardown      CommonFunctionality.Finish TestCase
#Resource      ../Resources/PageObjects/HeaderObject.robot


**Variables***

***Test Cases***
Check Out Product
    [Documentation]      This testcase is for checkout product
    [Tags]               Functional
    Select Shop Link and add product to cart        400706  
    Check Out
    Personal Details        Sachin      Tendulkar       sachin123@gmail.com         9856787787
    Adress Details          E-1,26      ABCsociety      Nerul
    #Payment