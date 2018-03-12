$specflowCacheFiles = Get-ChildItem $env:temp | Where{$_.Name -Match "^specflow-stepmap-.+.cache$"} 

if ($specflowCacheFiles){
    $specflowCacheFiles
    write-host 
    write-host 

    write-host Deleting Specflow Cache files
    $specflowCacheFiles | Remove-Item
} else{
    write-host Not found any Specflow Cache files
}