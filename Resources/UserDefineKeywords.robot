***Settings***
Library     SeleniumLibrary
***Keywords***

Select Shop Link and add product to cart
    [Arguments]       ${pincode}
    Click Link       xpath=//*[@id="firstlevel-nav"]/ul/li[4]/section/a
    Sleep             3s
    Scroll Element Into View        xpath=//*[@id="sites-footer-container"]/div/section/div/div[2]/div[1]/h3
    Sleep     2s
    Scroll Element Into View        xpath=//*[@id="Category1"]/h1
    Click Image      xpath=//*[@id="491894897"]
    Capture Page Screenshot         SS.png
    Input Text       xpath=//*[@id="address.postcode"]       ${pincode}
    Click Element    xpath=//div[@id="pincode-button"]          
    Wait Until Element Is Visible       xpath=//div[@id="stock-availaible-message"]
    Sleep          3s
    Click Button                    xpath=//*[@id="AddToCartBTN"]
    Sleep          3s
    Page Should Contain Element     xpath=//*[@id="popup3"]/div/div/div/div[3]
    Click Element                   xpath=//*[@id="digi-cartpopup-GotoCart"]/a
Check Out 
    Click Button     xpath=//*[@id="checkoutButtonBottom"]
Personal Details
    [Arguments]       ${First Name}     ${LastName}     ${mail}     ${Phno}
    Click Element       xpath=//*[@id="content"]/div/div/div[1]/ul/li[1]/a
    Sleep      3s
    Input Text      xpath=//*[@id="personalDetail.firstName"]           ${First Name}      
    Input Text      xpath=//*[@id="personalDetail.lastName"]            ${LastName} 
    Input Text      xpath=//*[@id="personalDetail.emailAddress"]        ${mail}                                                           
    Input Text      xpath=//*[@id="personalDetail.mobileNumber"]        ${Phno}                                                     
    Click Button    xpath=//*[@id="personalDetailsContinueBtn"]
    Sleep      3s
Adress Details
    [Arguments]       ${Add1}     ${Add2}     ${Add3}
    Click Element           xpath=//*[@id="content"]/div/div/div[1]/ul/li[2]/a/span[2]
    #Click Element            xpath=//button[@class='positive']
    Sleep      3s
    #Click Button            xpath=//span[@class="update_gm_closebtn"]
    Input Text              xpath=//*[@id="address.line1"]                  ${Add1}
    Input Text              xpath=//*[@id="address.line2"]                  ${Add2}
    Input Text              xpath=//*[@id="address.area.locality" ]         ${Add3}
    Sleep              2s
    #Click Element           xpath=//*[@id="addressForm"]/span/button
#Payment
    #Click Element         xpath=//*[@id="content"]/div[3]/div[2]/ul/li[3]/a/span[2]
    #Click Element         xpath=//*[@id="paymentopt10"]
    #Select Checkbox       xpath=//*[@id="collapse5"]/div[2]/div[1]/label[1]
    #Sleep       2s
    #Click Button           xpath=//*[@id="upiButton"]
