@echo off

echo Count of processes matching:
tasklist /fi "imagename eq git.exe" | find /v /c ""