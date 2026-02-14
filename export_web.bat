@echo off
setlocal
title Export Web for Website 2 APK - DocScannerApp

echo ======================================================
echo    DocScannerApp - Xuat Wed de dung voi APK Builder
echo ======================================================
echo.

REM Chuyen den thu muc chua file bat
cd /d "%~dp0"

echo [*] Dang lam sach thu muc cu...
if exist dist rd /s /q dist

echo [*] Dang xuat dự án sang dang web tinh (Static Web)...
echo [!] Luu y: Qua trinh nay co the tieu ton vai phut...
echo.

call npx expo export --platform web

if %errorlevel% neq 0 (
    echo.
    echo [!] Co loi xay ra trong qua trinh export.
    pause
    exit /b %errorlevel%
)

echo.
echo ======================================================
echo [OK] Export hoan tat!
echo [*] Thu muc chua code web tinh la: "%cd%\dist"
echo [*] Bay gio ban hay dung Website 2 APK Builder 
echo     va tro den thu muc "dist" o tren de tao APK.
echo ======================================================
pause
endlocal
