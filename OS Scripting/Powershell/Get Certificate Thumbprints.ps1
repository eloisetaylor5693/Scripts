function DisplayCertificateInfo($serverName){
    $cert = (Get-Childitem cert:\LocalMachine\My | Where-Object { $_.subject -like "*$serverName*" })
    $certThumbprint = $cert.Thumbprint

    if ($cert){
        Write-Host Certificate $cert.Subject with thumbprint $certThumbprint -ForegroundColor Gray
    } else {
        Write-Host "Can't find certificate for server $serverName" -ForegroundColor Red
    }
}


DisplayCertificateInfo "AServer"