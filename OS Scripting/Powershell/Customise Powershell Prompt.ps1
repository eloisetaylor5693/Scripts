function prompt {
    return "`n" + 
        (Get-Date -Format g) +
        "`n" +
        (Get-Item -Path ".\").FullName + 
        "`nPS [$env:COMPUTERNAME]> "
}