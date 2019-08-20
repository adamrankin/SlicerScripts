@echo off

setlocal enabledelayedexpansion

for /f "delims=" %%a in ('dir /s/b %appdata%\NA-MIC\*.ini') do (
  set iniFileName=%%a
  powershell -Command "(gc !iniFileName!) -creplace 'R/', 'D/' | Out-File !iniFileName!"
  powershell -Command "(gc !iniFileName!) -creplace '/Release', '/Debug' | Out-File !iniFileName!"
)