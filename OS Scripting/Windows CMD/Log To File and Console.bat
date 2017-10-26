@ECHO OFF
::CALL :Main > test.txt 1>&2
::CALL :Main > test.txt 2>&1
::CALL :Main > output.log & type output.log
CALL :OutputToFileAndConsole
exit /b


:OutputToFileAndConsole
CALL :Main > test.txt 



:Main
echo %time%
echo a 
echo b  
tasklist /v
net use
tree ..