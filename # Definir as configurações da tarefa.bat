@echo off
setlocal

:: Define o caminho de origem e destino
set "origem=\\10.237.10.43\ibage\Zeus\zeus.bat"
set "destino=C:\Zeus\zeus.bat"

:: Cria o diretório de destino caso não exista
if not exist "C:\Zeus" mkdir "C:\Zeus"

:: Copia o arquivo
copy "%origem%" "%destino%" /Y

:: Verifica se a cópia foi bem-sucedida
if %errorlevel% equ 0 (
    echo Arquivo copiado com sucesso para %destino%
) else (
    echo Falha ao copiar o arquivo.
)

endlocal

@echo off
REM Define as configurações da tarefa

REM Cria uma tarefa agendada chamada "ExecutarZeus" para executar o script Zeus diariamente à meia-noite
schtasks /create /tn "ExecutarZeus" /tr "C:\zeus\zeus.bat" /sc daily /st 00:00 /ru "SYSTEM" /rl highest /f

REM Descrição:
REM /tn "ExecutarZeus" - Nome da tarefa
REM /tr "C:\zeus\zeus.bat" - Caminho do script a ser executado
REM /sc daily - Frequência diária
REM /st 00:00 - Horário da execução (meia-noite)
REM /ru "SYSTEM" - Executa com a conta SYSTEM
REM /rl highest - Nível de privilégio mais alto
REM /f - Força a criação, sobrescrevendo qualquer tarefa com o mesmo nome
