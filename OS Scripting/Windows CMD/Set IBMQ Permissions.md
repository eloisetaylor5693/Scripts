# Configuring IBMQ for new user

## Steps

1. Log onto MQ server.
1. Go to:  Computer management > Local users and groups.
1. Add your account the "mqm" group.
1. Run script to refresh IBMQ Permissions (See below).

### Script to refresh IBMQ Permissions

*Run as administrator*

```cmd
CD /D %MQ_FILE_PATH%\bin

REM     If there are multiple instances then add as an argument to the runmqsc.exe command
REM     eg runmqsc.exe instance1
ECHO REFRESH SECURITY | runmqsc.exe
```

## Troubleshooting

### Find location of tool

Update above CD command with the output from this script

```cmd
CD /D %MQ_FILE_PATH%
DIR /S runmqsc.exe
```