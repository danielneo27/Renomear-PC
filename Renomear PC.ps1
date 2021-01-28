<#	
	.NOTAS
	===========================================================================
	 Criado em:   	30/12/2020 16:25
	 Criado por:   	Daniel Neo
     Versão:        0.7.2
     Atualizado:    27/01/2021
	 Nome do arquivo:  Renomear PC
	===========================================================================
#>
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

$info =Get-WmiObject -Class Win32_ComputerSystem
#Modelo, Dominio, informações do sistema.
$info
#Nome da Maquina.
$info.Name
#Altere o campo "nomedamaquina" para o nome escolhido do seu PC.
$info.Rename("nomedamaquina")
#Restart-Computer -WhatIf
Restart-Computer -Force