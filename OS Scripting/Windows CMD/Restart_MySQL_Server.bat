
echo [%Date% - %Time%]  Restarting MySQL Server..... >> Logs\eventlog.log
echo %date% ________  %time%

NET STOP MySQL56
NET START MySQL56