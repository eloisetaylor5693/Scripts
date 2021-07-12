Set-Location -Path "C:\Code"

[Boolean]$DoDryRun = $true

if ($DoDryRun) 
{
    Write-Host Dry run
    Get-ChildItem . -Include packages,node_modules,bin,obj -Recurse -Force | Remove-Item -Recurse -Force -WhatIf
}
else 
{
    Write-Host Deleting
    Get-ChildItem . -Include packages,node_modules,bin,obj -Recurse -Force | Remove-Item -Recurse -Force
}

Write-Host Done