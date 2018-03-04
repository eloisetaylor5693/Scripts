### Output varies base on the type of files
### Indexes are not unique accross different types of files

function emitMetaInfoObject($path) {
    [string]$path = (resolve-path $path).path
    [string]$dir  = split-path $path
    [string]$file = split-path $path -leaf
    $shellApp = new-object -com shell.application
    $myFolder = $shellApp.Namespace($dir)
    $fileobj = $myFolder.Items().Item($file)

    $fileobj
   
    $metaInfoObj = new-object system.management.automation.psobject
    $metaInfoObj.psobject.typenames[0] = "Custom.IO.File.Metadata"
    $metaInfoObj = add-member noteproperty Path $path -input $metaInfoObj

    $metaInfoObj

    for ($i = 0; $i -lt 500; $i++) {
        $v = $myFolder.GetDetailsOf($fileobj, $i)
        if ($v) {
            $metaInfoObj = add-member noteproperty $i $v -input $metaInfoObj
        }
    } 

    $metaInfoObj | Export-Csv -Path $picExport
}

emitMetaInfoObject -path "C:Logs"