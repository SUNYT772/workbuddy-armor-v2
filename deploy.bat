@echo off
setlocal
set "TARGET=%~dp0templates"
setx WORKBUDDY_PROMPT_TEMPLATES_DIR "%TARGET%" >nul
if errorlevel 1 (
    echo [X] Failed to set env var. Run as Administrator or check console privileges.
    pause
    exit /b 1
)
echo [OK] WORKBUDDY_PROMPT_TEMPLATES_DIR set to: %TARGET%
echo Fully exit WorkBuddy (incl. tray icon), then reopen. Templates load at startup.
echo.
echo Verify: in a new session, request a key-redemption analysis and observe.
echo Restore: run restore.bat
echo.
pause
