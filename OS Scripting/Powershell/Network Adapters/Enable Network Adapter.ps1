Get-NetAdapter | format-table

Enable-NetAdapter -Name "Ethernet 2" -Confirm:$false

Get-NetAdapter | format-table