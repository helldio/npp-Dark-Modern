@echo off
:: ==========================================================
:: Install Dark+ Modern notepad++ theme
:: ==========================================================
:: Data: 20/05/2026
:: Autor: helldio

setlocal

set "THEME_NAME=Dark+ Modern.xml"
set "TARGET_DIR=%AppData%\Notepad++\themes"

echo Installing %THEME_NAME% to %TARGET_DIR%...

if not exist "%TARGET_DIR%" (
    echo Creating themes directory...
    mkdir "%TARGET_DIR%"
)

copy /y "%~dp0%THEME_NAME%" "%TARGET_DIR%\"

if %errorlevel% equ 0 (
    echo.
    echo Theme installed successfully!
    echo Please restart Notepad++ and select "Dark+ Modern" in Settings ^> Style Configurator.
) else (
    echo.
    echo Error: Failed to copy theme file.
)

pause
exit /b
