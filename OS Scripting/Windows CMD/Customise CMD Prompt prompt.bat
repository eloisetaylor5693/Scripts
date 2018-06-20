@ECHO OFF

REM From https://stackoverflow.com/questions/12028372/how-to-change-command-line-prompt-in-windows
REM SET PROMPT=$_$D $t$_%Computername%$_$P$_$M$G

REM         $_   Carriage return and linefeed
REM         $S   (space)
REM         $D   Current date
REM         $T   Current time
REM         $P   Current drive and path
REM         $M   Displays the remote name associated with the current drive
REM         letter or the empty string if current drive is not a network drive.
REM         $G   > (greater-than sign)

SETX PROMPT $_$D$S$t$_%Computername%$_$P$_$M$G /M
