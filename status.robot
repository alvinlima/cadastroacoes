*** Settings ***
Resource            ./base.robot

Test Setup          Nova Sessão
Test Teardown       Encerra Sessão

 

*** Test Cases ***
Main Test

   Maximize Browser Window
   Click Element                   xpath://span[@class='d-none d-md-block'][contains(.,'ENTRAR')]
   Input Text                      css:input[type=email]           *email*
   Input Text                      css:input[type=password]        *senha*
   Click Element                   xpath://*[@id="btn-login"]
   Wait Until Element is Visible   xpath://span[@class='fw-100'][contains(.,'Olá,')]
   Capture Page Screenshot
    
   Click Element                   xpath://span[contains(@class,'apresentacao truncate mr-1 d-none d-sm-inline-block d-md-none d-lg-inline-block')]
   Click Element                   xpath://span[contains(.,'Carteira')]
   Sleep                           1s
   Click Element                   xpath:(//i[@class='material-icons'])[14]
   Click Element                   xpath://span[contains(.,'Transações')]
   
   Click Element                   xpath://button[@title='Adicionar transações'][contains(.,'ADICIONAR')]
   Wait Until Element Is Visible   xpath://div[@class='title fs-4 text-main lh-4 fw-700'][contains(.,'Adicionar transação')]
   Sleep                           1s
   Input Text                      xpath://input[@id='transaction_broker_nome']    CLEAR CORRETORA
   Wait Until Element is Visible   xpath://div[@class='tt-suggestion tt-selectable'][contains(.,'CLEAR CORRETORA')]                           5s
   Click Element                   xpath://div[contains(@class,'tt-suggestion tt-selectable')]
   Input Text                      xpath://input[contains(@placeholder,'ex. ABCD11, Título xpto')]      TAESA
   Wait Until Element Is Visible   xpath://div[@class='tt-suggestion tt-selectable'][contains(.,'TAEE3 - TAESA')]
   CLick Element                   xpath://div[@class='tt-suggestion tt-selectable'][contains(.,'TAEE3 - TAESA')]
   Input Text                      xpath://input[contains(@name,'ReferenceDate')]         09/09/2022
   Input Text                      xpath://input[contains(@name,'Quantity')]              10
   Input Text                      xpath://input[contains(@name,'UnitValue')]             12,58
   Input Text                      xpath://input[contains(@name,'Brokerage')]             0,03
   Input Text                      xpath://input[contains(@name,'Fees')]                  0,01
   Input Text                      xpath://input[contains(@name,'Taxes')]                 0,00
   Sleep                           1s
   Capture Page Screenshot
   Click Element                   xpath:(//button[@title='Salvar as configurações'][contains(.,'Salvar')])[2]
   Wait Until Element Is Visible   xpath://button[@type='button'][contains(.,'Fechar')]
   Click Element                   xpath://button[@type='button'][contains(.,'Fechar')]
   Wait Until Element Is Visible   xpath://span[@class='ticker truncate waves-effect'][contains(.,'TAEE3')]


  
  
    
 

  
    





