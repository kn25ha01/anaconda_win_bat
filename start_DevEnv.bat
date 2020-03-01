@ECHO OFF

SET OPENDIR="C:\Users\%USERNAME%\kaggle\ "

REM START Jupyter Notebook
call start_Jupyter.bat %OPENDIR%

REM START terminal
call start_CondaTerminal.bat %OPENDIR%

REM EXPLORER
EXPLORER %OPENDIR%

