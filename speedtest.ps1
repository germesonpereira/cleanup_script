# Verifica se está executando como administrador
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Error "Este script precisa ser executado como administrador."
    exit
}

# Definir URL e caminhos
$downloadUrl = "https://install.speedtest.net/app/cli/ookla-speedtest-1.0.0-win64.zip"
$zipPath = "$env:TEMP\speedtest.zip"
$extractPath = "$env:TEMP\speedtest"
$installPath = "C:\Program Files\Speedtest"
$executable = "speedtest.exe"
$finalExecutablePath = Join-Path $installPath $executable

# Baixar o instalador do Speedtest CLI
Write-Output "Baixando o Speedtest CLI..."
Invoke-WebRequest -Uri $downloadUrl -OutFile $zipPath

# Extrair o conteúdo do arquivo zip
Write-Output "Extraindo o Speedtest CLI..."
Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

# Criar pasta de instalação se não existir
if (-not (Test-Path -Path $installPath)) {
    New-Item -ItemType Directory -Path $installPath
}

# Mover o executável para a pasta de instalação
Write-Output "Instalando o Speedtest CLI..."
Move-Item -Path (Join-Path $extractPath $executable) -Destination $finalExecutablePath -Force

# Adicionar a pasta ao PATH do sistema
$env:Path += ";$installPath"
[System.Environment]::SetEnvironmentVariable("Path", $env:Path, [System.EnvironmentVariableTarget]::Machine)

# Limpar arquivos temporários
Remove-Item -Path $zipPath -Force
Remove-Item -Path $extractPath -Recurse -Force

# Verificar se a instalação foi bem-sucedida
Write-Output "Verificando a instalação do Speedtest CLI..."
& $finalExecutablePath --version

Write-Output "Instalação concluída com sucesso!"
