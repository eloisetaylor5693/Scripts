param (
    [Parameter(Mandatory = $true)]
    [string] 
    $serviceFolder,

    [Parameter(Mandatory = $true)]
    [string] 
    $accountName,

   [Parameter(Mandatory = $true)]
   [string]
   $password
)

$serviceName = "name"
$serviceDisplayName = "display name"
$serviceDescription = "description of the service"
$serviceExecutable = "$serviceFolder\service.exe"

$service = Get-Service -Name $serviceName -ErrorAction Ignore

if($service) {
    Stop-Service -Name $serviceName
    sc.exe delete $serviceName
}

$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential $accountName, $securePassword

New-Service `
    -Name $serviceName `
    -DisplayName $serviceDisplayName `
    -Description $serviceDescription `
    -BinaryPathName $serviceExecutable `
    -StartupType Automatic `
    -Credential $credential

Start-Service -Name $serviceName
