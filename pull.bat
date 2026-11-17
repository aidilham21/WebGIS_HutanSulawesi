@echo off
setlocal enabledelayedexpansion

title WebGIS Hutan Sulawesi - Git Pull
echo ==========================================================
echo        WebGIS Hutan Pasangkayu, Sulawesi Barat
echo                      GIT PULL SCRIPT
echo ==========================================================
echo.

:: Periksa apakah Git terinstal
where git >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Git tidak ditemukan pada sistem ini!
    echo Silakan install Git terlebih dahulu: https://git-scm.com/
    echo.
    pause
    exit /b 1
)

:: Periksa apakah berada dalam repositori Git
if not exist ".git" (
    echo [ERROR] Folder ini bukan repositori Git!
    echo.
    pause
    exit /b 1
)

echo [INFO] Menghubungi repositori remote (origin)...
git fetch origin

echo [INFO] Menarik pembaruan terbaru dari branch main...
git pull origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo [SUKSES] Repositori berhasil diperbarui dengan versi terbaru!
) else (
    echo.
    echo [PERINGATAN] Terjadi kendala saat melakukan git pull.
    echo Silakan periksa status koneksi internet atau konflik pada file lokal.
)

echo.
echo ==========================================================
pause
