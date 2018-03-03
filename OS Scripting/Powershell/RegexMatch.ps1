function MatchRegex
{
    Param([string]$stringVal= $(throw"$stringVal required."))

    $isMatch = $stringVal -match "\d+x\d+"
    return $isMatch
}

$sut = "The cupboard is 82x156 and is a nice cupboard"
Write-Host -ForegroundColor DarkGray "Given: " $sut
Write-Host "Expected = true, Actual =" (MatchRegex -stringVal $sut)

$sut = "This is a string and is a test"
Write-Host -ForegroundColor DarkGray "Given: " $sut
Write-Host "Expected = false, Actual =" (MatchRegex -stringVal $sut)


try {
    Write-Host -ForegroundColor DarkGray "Given no value"
    Write-Host "Expected = false, Actual =" (MatchRegex -stringVal)
}
catch {
    Write-Host "Errored because it was give no value"
}
