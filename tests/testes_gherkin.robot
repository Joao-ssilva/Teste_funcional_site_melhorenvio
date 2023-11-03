*** Settings ***
Documentation     Essa suide vai testar o preenchimento do site da melhorenvio usando Gherkin
Resource          ../resources/testes_resources_gherkin.robot

Task Setup        Abrir o navegador 
Test Teardown     Fechar navegador



*** Test Cases ***
Caso Teste 01 - Deve fazer login no site melhorenvio.com.br

   Dado que estou na home page do site melhorenvio.com
   Quando aceitar os "cookies" deve aparecer a tela home normal
   Então verifico se a frase "Calculadora de fretes" está visivel

Caso Teste 02 - Deve preecher os dados para calcular o frete
    
   Dado que estou na home page do site melhorenvio.com
   Quando aceitar os "cookies" deve aparecer a tela home normal
   Então verifico se a frase "Calculadora de fretes" está visivel
   E preecho o "CEP De Origem" e o "CEP De Destino"
   E preecho o valor da carga

Caso Teste 03 - Deve fazer o calculo do frete

   Dado que estou na home page do site melhorenvio.com
   Quando aceitar os "cookies" deve aparecer a tela home normal
   Então verifico se a frase "Calculadora de fretes" está visivel
   E preecho o "CEP De Origem" e o "CEP De Destino"
   E preecho o valor da carga
   Quando clico no botao "calcular" 
   Entao deve concluir e ir para a página "Calculadora de fretes"