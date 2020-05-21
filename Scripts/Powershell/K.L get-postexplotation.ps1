function get-postexplotation{

param (
$Method = 0,
[string] $Name = "*"
)
 
$proclist = Get-Process | Select-Object -Property ProcessName
$servicelist = Get-Service -DisplayName $Name

Switch ($Method)
{
  0{$applist = wmic product get name,version}
  1{$applist = gwmi  Win32_Product}
  3{$applist = gp HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*, HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | ? {![string]::IsNullOrWhiteSpace($_.DisplayName) } | select DisplayName}
  4{$applist = Get-WmiObject -Class Win32_Product | Select-Object -Property Name}
  x32{$applist = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize}
  x64{$applist = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize}
}


return @{apps=$applist;procs=$proclist;services=$servicelist}


<#
  .SYNOPSIS
  Script de Post-explotacion

  .DESCRIPTION
  Haciendo un $variable = get-postexplotation -Name podemos filtrar por nombre de servicio por ejemplo -name *Xbox y luego llamarlo con $variable.services
  Haciendo un $variable = get-postexplotation -Method tiene diferentes metodos para sacar las aplicaciones 0 por Default por ejemplo -Method x64 aplicaciones de 64 bits luego llamarlo con $variable.apps
 
  .EXAMPLE
  $variable = get-postexplotacion
  $variable.procs/apps/services

  .EXAMPLE
  $variable = get-postexplotation -Name Vm*
  $variable.services
  Esto nos sacara los servicios que empiecen por Vm, como VmWare
  
  .EXAMPLE
  $variable = get-postexplotation -Method 0

  0{$applist = wmic product get name,version}
  1{$applist = gwmi  Win32_Product}
  3{$applist = gp HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*, HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | ? {![string]::IsNullOrWhiteSpace($_.DisplayName) } | select DisplayName}
  4{$applist = Get-WmiObject -Class Win32_Product | Select-Object -Property Name}
  x32{$applist = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize}
  x64{$applist =Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize}

  Diferentes formas de sacar las aplicaciones instaladas, todas devuelven resultados distintos x64 Nos muestra unicamente las aplicaciones de 64 bits instaladas

#>



}
