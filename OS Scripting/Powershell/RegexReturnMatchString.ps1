function getFirstMatchInStringUsingRegex
{
    param([string]$stringval= $(throw"$stringval required."))

    return [regex]::Matches($stringval,"\d+x\d+").Value
}

$sut = "the cupboard is 82x156 and is a nice cupboard"
write-host -foregroundcolor darkgray "given: " $sut
$firstmatch = (getFirstMatchInStringUsingRegex -stringval $sut)
write-host "`texpected = 82x156, actual =" $firstmatch
write-host

$sut = "this is a string and is a test"
write-host -foregroundcolor darkgray "given: " $sut
write-host "`texpected =  , actual =" (getFirstMatchInStringUsingRegex -stringval $sut)
write-host


try {
    write-host -foregroundcolor darkgray "given no value"
    matchregex -stringval
}
catch {
    write-host "`terrored because it was give no value"
}
