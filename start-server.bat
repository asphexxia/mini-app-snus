@echo off
cd /d "%~dp0"

set "NODE_EXE=C:\Program Files\nodejs\node.exe"
if not exist "%NODE_EXE%" (
  echo [ERROR] Node.js not found at: %NODE_EXE%
  pause
  exit /b 1
)

echo Starting mini app server...
echo If port 3000 is busy, server will switch to next free port automatically.
echo.

"%NODE_EXE%" .\server.js

echo.
echo Server stopped.
pause
