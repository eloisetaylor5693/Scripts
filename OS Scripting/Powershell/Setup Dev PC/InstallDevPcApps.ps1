Write-Host "If an installer requires reboot, then run script once, wait for reboot, then run it again" -ForegroundColor Green
Write-Host
Start-Sleep -s 10

Write-Host "Search for apps you want at this url:  https://chocolatey.org/packages" -ForegroundColor Blue
Start-Sleep -s 10


choco feature enable -name=exitOnRebootDetected


Write-Host Install Visual Studio 2019 Professional 
choco install -y visualstudio2019Professional -InstallArguments WebTools


Write-Host Installing other VS tools
choco install -y specflow
choco install -y nunit
choco install -y resharper
choco install -y dotpeek
choco install -y teamcityaddin

Write-host SQL Server DB Tools
choco install -y azure-data-studio
choco install -y sql-server-management-studio

Write-Host Installing Git Tools
choco install -y git
choco install -y git-credential-manager-for-windows
choco install -y kdiff3
choco install -y gitextensions

Write-Host Installing Other dev tools
choco install -y fiddler
choco install -y NugetPackageExplorer
choco install -y postman
choco install -y sysinternals
choco install -y royalts
choco install -y devaudit

Write-Host Installing IIS web tools
choco install -y urlrewrite
choco install -y webdeploy

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
choco install -y slack

Write-Host Installing node version manager
choco install -y nvm