@echo off

REM Executa o comando para listar as sessões
query session

REM Aguarda o usuário digitar o ID da sessão que deseja encerrar
set /p sessionID="Digite o ID da sessão que deseja encerrar: "

REM Executa o comando para encerrar a sessão com o ID fornecido
logoff %sessionID%

REM Exibe uma mensagem de confirmação
echo Sessão %sessionID% foi encerrada.

pause
