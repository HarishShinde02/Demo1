***Settings***
Library     SeleniumLibrary

***Variables***
${url}          https://www.jio.com/
${Browser}      Chrome
***Keywords***

Start TestCase
    Open Browser    ${url}     ${Browser} 
    Maximize Browser Window

Finish TestCase
    Close Browser