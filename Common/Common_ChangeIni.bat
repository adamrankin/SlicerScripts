@echo off

setlocal enabledelayedexpansion

for /f "delims=" %%a in ('dir /s/b %appdata%\NA-MIC\*.ini') do (
  set iniFileName=%%a
  powershell -Command "(gc !iniFileName!) -creplace '%1/', '%2/' | Out-File !iniFileName!"
  powershell -Command "(gc !iniFileName!) -creplace '/%3', '/%4' | Out-File !iniFileName!"
)