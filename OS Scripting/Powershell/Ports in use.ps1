# Get All ports
# Get-NetTCPConnection | Sort-Object LocalPort

Get-NetTCPConnection | Sort-Object LocalPort | select -First 20