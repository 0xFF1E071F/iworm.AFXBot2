@ECHO OFF
REM FUCK SHIT
SET FILENAME=data.dat
SET BINARY=b64.main.exe
SET EXT=b64

IF NOT EXIST %FILENAME%.%EXT%. GOTO ERROR

IF EXIST %FILENAME% (
    MOVE  %FILENAME% %FILENAME%.old
)

%BINARY% -d %FILENAME%.%EXT%

GOTO END

:ERROR
    ECHO Put some file named '%FILENAME%.%EXT%' to decode
    PAUSE>nul

:END
EXIT