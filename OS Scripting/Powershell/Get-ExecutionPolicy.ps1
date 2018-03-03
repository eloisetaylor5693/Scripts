Write-Host See "https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-6&viewFallbackFrom=powershell-Microsoft.PowerShell.Core"

Write-Host  
Write-Host "Current session Execution Policy is: " (Get-ExecutionPolicy)



Write-Host 
Write-Host All Exectuion Policies impacting current session:
Get-ExecutionPolicy -List