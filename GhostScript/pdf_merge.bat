@echo off
setlocal ENABLEDELAYEDEXPANSION

REM --- Beállítások ---
set "OUT=output.txt"
set "PDFTOTEXT=gswin64c.exe"

REM --- Kimeneti fájl üritése ---
type nul > "%OUT%"

REM --- ABC szerinti stabil sorrend ---
for /f "delims=" %%F in ('dir /b /on *.pdf') do (
    echo %%~nxF
    echo ===== [%%~nxF] =====>> "%OUT%"
    "%PDFTOTEXT%" -dBATCH -dNOPAUSE -sDEVICE=txtwrite -q -sOutputFile=- "%%~fF" >> "%OUT%" 2>nul
    echo.>> "%OUT%"
)

echo Kesz: %OUT%