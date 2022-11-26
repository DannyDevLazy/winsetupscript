# Chocolatey install
$testchoco = powershell choco -v
if (-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadStringo('https://chocolatey.org/install.ps1'))
    powershell choco feature enable -n allowGlobalConfirmation
}
else {
    Write-Output "Chocolatey Version $testchoco is already installed"
}
