@echo off
:: Desenvolvido por Germeson Pereira - Tecnico de TI, atualizado em 29 setembro 2024
:menu
cls
echo TELA DE SCRIPTS
echo.
echo MENU
echo.
echo 1. LIMPEZA DE PC
echo 2. LIMPEZA DE PC E REINICIA
echo 3. LIMPEZA DE PC E DESLIGA
echo 4. LIMPEZA DE PC E DESLOGA TODOS OS USUARIOS
echo 5. DESLOGAR
echo 6. INGRESSO DNS (SEJUS)
echo 7. REINICIAR TODAS AS MAQUINAS
echo 8. LIMPEZA CHKDSK E REINICIA
echo 9. LENTIDAO
echo 10. SAIR
echo.
set /p escolha="Escolha uma opcao: "

if "%escolha%"=="1" (
    call \\10.237.10.43\ibage\script1.bat
) else if "%escolha%"=="2" (
    call \\10.237.10.43\ibage\script2.bat
) else if "%escolha%"=="3" (
    call \\10.237.10.43\ibage\script3.bat
) else if "%escolha%"=="4" (
    call \\10.237.10.43\ibage\script4.bat
) else if "%escolha%"=="5" (
    call \\10.237.10.43\ibage\script5.bat
) else if "%escolha%"=="6" (
    call \\10.237.10.43\ibage\script6.bat
) else if "%escolha%"=="7" (
    call \\10.237.10.43\ibage\script7.bat
) else if "%escolha%"=="8" (
    call \\10.237.10.43\ibage\script8.bat
) else if "%escolha%"=="9" (
    call \\10.237.10.43\ibage\script9.bat
) else if "%escolha%"=="10" (
    echo Saindo...
    exit
) else (
    echo Opcao invalida! Tente novamente.
    pause
    goto menu
)
