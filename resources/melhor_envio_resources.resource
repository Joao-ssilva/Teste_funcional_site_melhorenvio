*** Settings ***
Library    SeleniumLibrary 
Library    Screenshot

 
*** Variables ***
${BROWSER}                       chrome
${URL}                           https://melhorenvio.com.br/
${CEP_DE_ORIGEM}                 01153000
${CEP_DE_DESTINO}                69037591
${CAMPO_VALOR_DA_CARGA}          //label[@for='insuranceValue'][contains(.,'Valor da carga')]
${VALOR_DA_CARGA}                1000
*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window 
Fechar navegador
    Capture Page Screenshot
    Close Browser
Acessar a home page do site Melhorenvio.com.br
    Go to    url=${URL}

Verificar se o titulo da página fica "${TITULO}" 
    Title Should Be    title=${TITULO}

Aceitar os termos de política 

    ${button_accept}    Set Variable     //button[@data-cookiefirst-action="accept"]

    Wait Until Element Is Visible        xpath=${button_accept}
    Click Element                        locator=${button_accept} 
    Wait Until Element Is Not Visible    locator=${button_accept}    
    Sleep    3
Verificar se a frase "${FRASE}" esta visivel 

    Wait Until Element Is Visible    locator=//h2[@class='text--big text-color--primary'][contains(.,'${FRASE}')]

Clicar no campo de "${CAMPO_CEP_DE_ORIGEM}"

    Click Element    locator=//label[@for='from'][contains(.,'${CAMPO_CEP_DE_ORIGEM}')]
escrever o Cep de origem 

    Input Text    locator=from  text=${CEP_DE_ORIGEM}

Clicar no campo "${CAMPO_DE_DESTINO}"

   Click Element    locator=//label[@for='to'][contains(.,'${CAMPO_DE_DESTINO}')]
Escrever o Cep de destino

    Input Text    locator=to    text=${CEP_DE_DESTINO}

Escrever o Valor da carga R$100,00 

    Click Element    locator=${CAMPO_VALOR_DA_CARGA}
    Input Text    locator=insuranceValue    text=100,00

Clicar no Botao Calcular 
     
    Wait Until Element Is Visible    locator=//button[@type='submit'][contains(.,'Calcular')]
    Click Element    locator=//button[@type='submit'][contains(.,'Calcular')]

Deverar ir para a página "${FRASE}"

    Wait Until page Contains    text=${FRASE}
verificar se aparecer o botao "${CADASTRE_SE_GRATIS}"

    Wait Until Element Is Visible    locator=(//a[@href='/cadastre-se'][contains(.,'${CADASTRE_SE_GRATIS}')])[1]
    Sleep    3

