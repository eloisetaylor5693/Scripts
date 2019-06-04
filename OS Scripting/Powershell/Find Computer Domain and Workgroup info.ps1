Write-Host "Part of domain?" (Get-WmiObject -Class Win32_ComputerSystem).PartOfDomain
Write-Host "Domain:" (Get-WmiObject -Class Win32_ComputerSystem).Domain
Write-Host "WorkGroup:" (Get-WmiObject -Class Win32_ComputerSystem).Workgroup