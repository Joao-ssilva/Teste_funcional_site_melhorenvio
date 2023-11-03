*** Settings ***
Documentation        Essa suite irá fazer realizar um preenchimento de dados do site Melhorenvio.com.br
Resource    melhor_envio_resources.resource


*** Keywords ***

Dado que estou na home page do site melhorenvio.com 
   Acessar a home page do site Melhorenvio.com.br
   verificar se aparecer o botao "Cadastre-se grátis" 
   Verificar se o titulo da página fica "Melhor Envio | Economize na gestão de fretes"
Quando aceitar os "cookies" deve aparecer a tela home normal
   Aceitar os termos de política

Então verifico se a frase "Calculadora de fretes" está visivel
   Verificar se a frase "Calculadora de fretes" esta visivel
E preecho o "CEP De Origem" e o "CEP De Destino"
   Clicar no campo de "CEP de origem"
   escrever o Cep de origem
   Clicar no campo "CEP de destino"   
   Escrever o Cep de destino
E preecho o valor da carga
   Escrever o Valor da carga R$100,00

Quando clico no botao "calcular"
   Clicar no Botao Calcular

Entao deve concluir e ir para a página "Calculadora de fretes"
   Deverar ir para a página "Calculadora de fretes" 
