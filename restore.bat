@echo off
setlocal
reg query "HKCU\Environment" /v WORKBUDDY_PROMPT_TEMPLATES_DIR >nul 2>&1
if errorlevel 1 (
    echo [i] WORKBUDDY_PROMPT_TEMPLATES_DIR not set; nothing to restore.
    pause
    exit /b 0
)
reg delete "HKCU\Environment" /v WORKBUDDY_PROMPT_TEMPLATES_DIR /f >nul 2>&1
if errorlevel 1 (
    echo [X] Failed to delete env var. Run as Administrator.
    pause
    exit /b 1
)
echo [OK] Deleted WORKBUDDY_PROMPT_TEMPLATES_DIR. Restored to built-in templates.
echo Restart WorkBuddy to take effect.
echo.
pause
