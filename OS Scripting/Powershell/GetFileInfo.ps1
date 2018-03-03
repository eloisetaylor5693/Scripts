$filePath = "C:\Windows\notepad.exe"
Get-ItemProperty -Path $filePath
Get-ItemProperty -Path $filePath | Get-Member -MemberType property

#[System.Io.FileAttributes] | Get-Member -Static -MemberType property


#Write-Host File Attributes: -ForegroundColor DarkGray
#[enum]::GetValues([system.io.fileattributes])



(Get-ItemProperty -Path $filePath).attributes