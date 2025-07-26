*** Settings ***
Library           Browser
Library           JSONLibrary
Resource          ../resources/loginResources.robot

*** Test Cases ***
Login Com Vários Usuários (via JSON)
    ${dados}=    Load JSON From File    ../data/config.json
    ${usuario}=   Get From Dictionary    ${dados}    user
    ${senha}=     Get From Dictionary    ${dados}    pass
    Abrir Página de Login    ${url}
    Efetuar Login            ${usuario}    ${senha}
    Verificar Login Com Sucesso
    Fechar Navegador
