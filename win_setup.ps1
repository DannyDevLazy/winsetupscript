#Chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
powershell choco feature enable -n allowGlobalConfirmation
$chocoversion = powershell choco -v
Write-Output "Chocolatey Version $chocoversion installed"

#Install prerequisites
irm "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"-o "./Microsoft.VCLibs.x64.14.00.Desktop.appx"
irm "https://github.com/microsoft/winget-cli/releases/download/v1.2.10271/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"-o "./Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
irm "https://github.com/microsoft/winget-cli/releases/download/v1.2.10271/b0a0692da1034339b76dce1c298a1e42_License1.xml"-o "./b0a0692da1034339b76dce1c298a1e42_License1.xml"
Add-AppxProvisionedPackage -Online -PackagePath ".\Microsoft.VCLibs.x64.14.00.Desktop.appx" -SkipLicense
Add-AppxProvisionedPackage -Online -PackagePath ".\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -LicensePath ".\b0a0692da1034339b76dce1c298a1e42_License1.xml"

#ChrisTitusUtitlity
# irm christis.com/win | iex
