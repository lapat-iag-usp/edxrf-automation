:: JUNTAR OS .TXT COM OS COMANDOS, VER FOTO FATIMA
::Script output with , as decimal sep. To use . alter last echo to 2
@echo off
setlocal EnableExtensions EnableDelayedExpansion
set /p FILTER_AREA=Filter area in cm2: 
set /p OUTPUT_NAME=Output prefix:
set mypath=%~dp0
cd %mypath:~0,-1%
dir *.spe/b > list.txt
echo. 2> blanklist.txt
::print numbered visualization
set "FileName=list.txt"

set "LineNumber=1"
set "TempFile=%TEMP%\%~n0.tmp"
del "%TempFile%" 2> nul

for /F "usebackq eol=| delims=" %%I in ("%FileName%") do (
    echo !LineNumber! %%I>>"%TempFile%"
    set /A LineNumber+=1
)
type "%TempFile%"
del "%TempFile%"

::Separate blanks from samples
echo Enter blanks' numbers or 0 in case there is no more blanks.

:a

set /p LINE_NUMBER=
if %LINE_NUMBER% EQU 0 (goto :b)

::Get the filename to be removed
set /a num=%LINE_NUMBER%-1
more +%num% < "list.txt" > file.tmp
set /p "BLANK_LINE=" < file.tmp > nul
del file.tmp

::Insert filename in blanklist.txt
echo %BLANK_LINE% selected
echo %BLANK_LINE%>> blanklist.txt
goto :a

:b

::Clean blank samples from list.txt
for /f "delims=" %%i in (blanklist.txt) do (
	findstr /v /c:"%%i" list.txt > samplelist.txt
	copy samplelist.txt list.txt
)
del samplelist.txt

::Input in Densidade2.8.4

CSCRIPT //NoLogo input.vbs %FILTER_AREA% %OUTPUT_NAME%
@echo on
pause
exit

::(
::echo 1
::echo S
::echo %FILTER_AREA%
::echo N
::echo N
::echo blanklist
::echo linhak2021
::echo linhal2021
::echo 2
::echo 11
::echo 20
::echo 21
::echo 82
::echo 1
::echo 0
::echo 1
::echo list
::echo linhak2021
::echo linhal2021
::echo 2
::echo 11
::echo 20
::echo 21
::echo 82
::echo %OUTPUT_NAME%
::echo 1
::) | Densidade2.8.4.exe
::DEL list.txt
::endlocal
