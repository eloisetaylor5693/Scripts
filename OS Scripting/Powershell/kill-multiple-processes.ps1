$processesToKill = "process1", "process2"

foreach ($processName in $processesToKill) {
    $theProcessToKill = Get-Process $processName -ErrorAction SilentlyContinue

    if($theProcessToKill){
        $theProcessToKill | Stop-Process -Force
    } else {
        write-host $processName not running
    }
}


write-host Success? $? $LASTEXITCODE