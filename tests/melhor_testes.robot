*** Settings ***
Documentation    Essa Suite testa o site Melhorenvio.com.br 
Resource         ../resources/testes_resources_gherkin.robot

Task Setup       Abrir o navegador
Test Teardown    Fechar navegador 

*** Test Cases *** 
Caso Teste 01 - Preenche Dados para Envio de frete 
    [Documentation]   Esse teste preenche os dados para o frete de um produto   
    [Tags]            preecher_dados de Localização
    
    Acessar a home page do site Melhorenvio.com.br
    verificar se aparecer o botao "Cadastre-se grátis"  
    Verificar se o titulo da página fica "Melhor Envio | Economize na gestão de fretes"
    Aceitar os termos de política      
    Verificar se a frase "Calculadora de fretes" esta visivel
    Clicar no campo de "CEP de origem"
    escrever o Cep de origem 
    Clicar no campo "CEP de destino"
    Escrever o Cep de destino
    Escrever o Valor da carga R$100,00  
    Clicar no Botao Calcular  
    Deverar ir para a página "Calculadora de fretes"