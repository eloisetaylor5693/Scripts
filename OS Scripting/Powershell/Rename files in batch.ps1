## https://devblogs.microsoft.com/scripting/use-powershell-to-rename-files-in-bulk/
Get-ChildItem -Filter “*.pdf” -Recurse | Rename-Item -NewName {$_.name -replace ‘old value’,’new value’ }
