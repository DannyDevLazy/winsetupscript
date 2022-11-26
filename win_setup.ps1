# Chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
powershell choco feature enable -n allowGlobalConfirmation
$chocoversion = powershell choco -v
Write-Output "Chocolatey Version $chocoversion installed"

#Install essentials
if (-not($chocoversion)){
    Write-Output "Chocolatey not installed!"
} else {
    choco install brave
    choco install steam
}
