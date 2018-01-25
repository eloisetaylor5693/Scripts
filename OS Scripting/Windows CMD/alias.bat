@ECHO OFF

REM SOURCE=https://superuser.com/questions/150244/command-aliases-in-command-prompt
REM is rather easy to setup permanent aliases in the Windows command prompt using the @DOSKEY command and HKCU\Software\Microsoft\Command Processor Autorun option.

REM     Quick step-by-step guide:

REM      - Create a new batch file, call it Alias.bat. Copy/paste the text below. TIP: I recommend creating a C:\Bin folder for all your command line tools.
REM      - Open the register HKEY_CURRENT_USER\Software\Microsoft\Command Processor.
REM      - Add an String Value named Autorun and set the value to absolute path of the Alias.bat file. 

REM Linux aliases
DOSKEY ls=DIR $*
DOSKEY pwd=CD
DOSKEY cp=COPY $* 
DOSKEY xcp=XCOPY $*
DOSKEY mv=MOVE $* 

REM General
DOSKEY h=DOSKEY /HISTORY

REM NPM Aliases
DOSKEY nnt=npm run test -s
DOSKEY nnl=npm run lint -s
DOSKEY nnb=npm run build -s
DOSKEY nnw=npm run watch -s
DOSKEY npm=npm -s $*


DOSKEY alias=if ".$*." == ".." ( DOSKEY /MACROS ) else ( DOSKEY $* )

EXIT /B