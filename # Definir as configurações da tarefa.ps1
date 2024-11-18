# Definir as configurações da tarefa
$trigger = New-ScheduledTaskTrigger -Daily -At 00:00
$action = New-ScheduledTaskAction -Execute "C:\zeus\zeus.bat"
$principal = New-ScheduledTaskPrincipal -UserId "SYSTEM" -LogonType ServiceAccount

# Criar a tarefa agendada
Register-ScheduledTask -TaskName "ExecutarZeus" -Trigger $trigger -Action $action -Principal $principal -Description "Executa o script Zeus diariamente à meia-noite."
