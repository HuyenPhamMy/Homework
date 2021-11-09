*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

*** Keywords ***
Open Website
    open browser    https://www.amazon.com/    chrome

Register
    [Arguments]      ${your_name}   ${email}    ${pass_word}    ${pass_check}
    Open Website    
    Click element   xpath=//a[@id='nav-link-accountList']
    Click element    xpath=//a[@id='createAccountSubmit']
    Input Text    xpath=//input[@name='customerName']    ${your_name}   
    Input Text    xpath=//input[@name='email']    ${email}
    Input Text    xpath=//input[@name='password']    ${pass_word}  
    Input Text    xpath=//input[@name='passwordCheck']    ${pass_check}  
    Click button    xpath=//input[@id='continue'] 
 Register with get xpath
    Register    Huyen    huyenpm1@smartosc.com    Huyen123    Huyen123    

Login    
    [Arguments]     ${your_email}   
    Input Text    xpath=//input[@name='email']    ${your_email}
    Click element    xpath=//input[@id='continue']
 Login with the account above
     Login    huyenpm1@smartosc.com

*** Test Cases ***
Verify that can register successfully
    Register with get xpath
    Sleep      10s    

Verify that can login successfully
    Login with the account above
    Close browser
    

