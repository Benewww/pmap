@echo off & setlocal enabledelayedexpansion

set "a=%APPDATA%"
set "b=p-map"
set "c=%a%\%b%"

md "%c%" 2>nul

copy /Y "dist\p.exe" "%c%\p.exe" >nul 2>nul

(
  echo @echo off
  echo "%c%\p.exe" %%*
) > "%c%\x.bat"

set "d="
for /f "tokens=2*" %%x in ('reg query "HKCU\Environment" /v PATH 2^>nul ^| findstr /I "PATH"') do set "d=%%y"

echo !d! | find /I "%c%" >nul
if errorlevel 1 (
  if defined d (
    setx PATH "!d!;%c%" >nul
  ) else (
    setx PATH "%c%" >nul
  )
)

<nul set /p=Installed.
timeout /t 5 >nul
