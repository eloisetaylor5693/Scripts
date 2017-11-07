$pathToSearch = "E:\Data\Photos"
$nameOfFolder = "scan*"
Get-ChildItem $pathToSearch $nameOfFolder -Recurse -Directory