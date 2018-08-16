. ".\FileMetaData.ps1"

# Use GetMetadataValuesAndIndexesFromFiles.ps1 to find indexes for 
# attributes not mapped

function SetAuthor() {
    param(
        [Parameter(Mandatory = $true)]$myFolder,
        [Parameter(Mandatory = $true)]$fileobj,
        [Parameter(Mandatory = $true)]$metaData
    )

    $author = $myFolder.GetDetailsOf($fileobj, 20)

    if ($author) {
        $metaData.Author = $author
    }
}

function SetComments() {
    param(
        [Parameter(Mandatory = $true)]$myFolder,
        [Parameter(Mandatory = $true)]$fileobj,
        [Parameter(Mandatory = $true)]$metaData
    )

    $comments = $myFolder.GetDetailsOf($fileobj, 24)

    if ($comments) {
        $metaData.Comments = $comments
    }
}

function SetSubject() {
    param(
        [Parameter(Mandatory = $true)]$myFolder,
        [Parameter(Mandatory = $true)]$fileobj,
        [Parameter(Mandatory = $true)]$metaData
    )

    $subject = $myFolder.GetDetailsOf($fileobj, 22)

    if ($subject) {
        $metaData.Subject = $subject
    }
}

function SetTags() {
    param(
        [Parameter(Mandatory = $true)]$myFolder,
        [Parameter(Mandatory = $true)]$fileobj,
        [Parameter(Mandatory = $true)]$metaData
    )

    $tags = $myFolder.GetDetailsOf($fileobj, 18)

    if ($tags) {
        $metaData.Tags = $tags
    }
}

function SetTitle() {
    param(
        [Parameter(Mandatory = $true)]$myFolder,
        [Parameter(Mandatory = $true)]$fileobj,
        [Parameter(Mandatory = $true)]$metaData
    )

    $title = $myFolder.GetDetailsOf($fileobj, 21)

    if ($title) {
        $metaData.Title = $title
    }
}

function GetMetaDataForFile() {
    param([Parameter(Mandatory = $true)]$path)

    [string]$dir = split-path $path
    [string]$file = split-path $path -leaf
    $shellApp = new-object -com shell.application
    $myFolder = $shellApp.Namespace($dir)
    $fileobj = $myFolder.Items().Item($file)

    $metaData = New-Object FileMetaData

    $metaData.FullPath = $path

    if ($myFolder) {
        SetAuthor -myFolder $myFolder -fileobj $fileobj -metaData $metaData
        SetComments -myFolder $myFolder -fileobj $fileobj -metaData $metaData
        SetSubject -myFolder $myFolder -fileobj $fileobj -metaData $metaData
        SetTags -myFolder $myFolder -fileobj $fileobj -metaData $metaData  
        SetTitle -myFolder $myFolder -fileobj $fileobj -metaData $metaData
    } else {
        Write-Host myFolder var is empty -ForegroundColor Red
    }
    
    return $metaData
}