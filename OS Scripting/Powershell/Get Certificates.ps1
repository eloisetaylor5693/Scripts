Import-Module Microsoft.PowerShell.Security

Write-Host Get all certificates
Get-ChildItem -Path Cert:\* -Recurse

Write-Host Get all certificates that have code-signing authority
Get-ChildItem -Path Cert:\* -Recurse -CodeSigningCert