@echo off
setlocal
title Build APK - DocScannerApp

echo ======================================================
echo    DocScannerApp - Tu dong hoa Build APK (Expo EAS)
echo ======================================================
echo.
echo [*] Dang kiem tra moi truong...

REM Chuyen den thu muc chua file bat
cd /d "%~dp0"

echo [*] Dang thuc hien lenh build APK (Profile: preview)...
echo [!] Luu y: Ban can dang nhap tai khoan Expo de tiep tuc.
echo.

call npx eas-cli build -p android --profile preview

if %errorlevel% neq 0 (
    echo.
    echo [!] Co loi xay ra trong qua trinh build.
    echo [!] Hay dam bao ban da cai dat Node.js va co tai khoan Expo.
    pause
    exit /b %errorlevel%
)

echo.
echo ======================================================
echo [OK] Lenh build da duoc gui len server Expo!
echo [*] Vui long cho server xu ly (5-10 phut).
echo [*] Theo doi link hien thi o tren de tai file APK.
echo ======================================================
pause
endlocal
