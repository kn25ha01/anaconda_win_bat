@ECHO OFF

IF ""%1"" EQU """" (
   SET OPENDIR="C:\Users\%USERNAME% "
) ELSE (
   SET OPENDIR=%1
)

SET TITLE="Anaconda Powershell Prompt (Anaconda3) "

SET SHELLEXE="%windir%\System32\WindowsPowerShell\v1.0\powershell.exe "

SET HOOK="& 'C:\Users\%USERNAME%\Anaconda3\shell\condabin\conda-hook.ps1' ; "
SET ENV="& conda activate 'C:\Users\%USERNAME%\Anaconda3\envs\fastai-v1' ; "
SET CDDIR="& cd %OPENDIR% ; "

REM START terminal
START %TITLE% %SHELLEXE% -ExecutionPolicy ByPass -NoExit -Command %HOOK% %ENV% %CDDIR%

