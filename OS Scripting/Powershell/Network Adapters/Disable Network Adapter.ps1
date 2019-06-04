Get-NetAdapter | format-table

Disable-NetAdapter -Name "Ethernet 2" -Confirm:$false

Get-NetAdapter | format-table