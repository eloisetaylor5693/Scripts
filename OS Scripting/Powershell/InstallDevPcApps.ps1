Write-Host "If an installer requires reboot, then run script once, wait for reboot, then run it again" -ForegroundColor Green
Write-Host
Start-Sleep -s 10

Write-Host "Search for apps you want at this url:  https://chocolatey.org/packages" -ForegroundColor Blue
Start-Sleep -s 10


function Test-PendingReboot
{
 if (Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Component Based Servicing\RebootPending" -EA Ignore) { return $true }
 if (Get-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\RebootRequired" -EA Ignore) { return $true }
 if (Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager" -Name PendingFileRenameOperations -EA Ignore) { return $true }
 try { 
   $util = [wmiclass]"\\.\root\ccm\clientsdk:CCM_ClientUtilities"
   $status = $util.DetermineIfRebootPending()
   if(($status -ne $null) -and $status.RebootPending){
     return $true
   }
 }catch{}
 
 return $false
}

if (Test-PendingReboot) { Invoke-Reboot }

Write-Host Install Visual Studio 2019 Professional 
choco install -y visualstudio2019Professional -InstallArguments WebTools

if (Test-PendingReboot) { Invoke-Reboot }

Write-Host Installing other VS tools
choco install -y specflow
choco install -y nunit
choco install -y resharper
choco install -y dotpeek
choco install -y teamcityaddin

Write-host SQL Server DB Tools
choco install -y azure-data-studio
choco install -y sql-server-management-studio


Write-Host Installing Other dev tools
choco install -y fiddler
choco install -y git
choco install -y git-credential-manager-for-windows
choco install -y gitextensions
choco install -y NugetPackageExplorer
choco install -y postman
choco install -y ProcExp Write-Host choco install -y sysinternals
choco install -y royalts
choco install -y devaudit

Write-Host Installing VS Code and extensions
choco install -y visualstudiocode
choco install -y vscode-powershell
choco install -y vscode-csharp
choco install -y vscode-mssql
choco install -y vscode-gitlens

Write-Host Installing Browsers
choco install -y googlechrome
choco install -y firefox

Write-Host Installing Other essential tools
choco install -y 7zip
choco install -y adobereader
choco install -y javaruntime
choco install -y notepadplusplus

Write-Host Installing node
choco install nodejs