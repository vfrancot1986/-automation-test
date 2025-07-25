*** Settings ***
Library    Browser

*** Variables ***
${BROWSER}    chromium

*** Keywords ***
Abrir Página de Login
    [Arguments]    ${url}
    New Browser    ${BROWSER}
    New Page    ${url}
    Set Viewport Size    1280    720

Efetuar Login
    [Arguments]    ${usuario}    ${senha}
    Fill Text    input[name="username"]    ${usuario}
    Fill Text    input[name="password"]    ${senha}
    Click        button[type="submit"]

Verificar Login Com Sucesso
    Wait For Elements State    text=Dashboard    visible    10s

Fechar Navegador
    Close Browser