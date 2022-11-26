# Chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadStringo('https://chocolatey.org/install.ps1'))
powershell choco feature enable -n allowGlobalConfirmation
$chocoversion = powershell choco -v
Write-Output "Chocolatey Version $chocoversion installed"
