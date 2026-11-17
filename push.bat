@echo off
setlocal enabledelayedexpansion

title WebGIS Hutan Sulawesi - Git Push
echo ==========================================================
echo        WebGIS Hutan Pasangkayu, Sulawesi Barat
echo                      GIT PUSH SCRIPT
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

echo [1/4] Status perubahan saat ini:
echo ----------------------------------------------------------
git status -s
echo ----------------------------------------------------------
echo.

:: Cek apakah ada perubahan
git status --porcelain | findstr /R "." >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [INFO] Tidak ada file yang berubah untuk di-push. Repositori sudah bersih.
    echo.
    pause
    exit /b 0
)

:: Minta input pesan commit dari pengguna
set "COMMIT_MSG="
set /p "COMMIT_MSG=Masukkan pesan commit (tekan Enter untuk default): "

if not defined COMMIT_MSG (
    set "COMMIT_MSG=Pembaruan WebGIS Hutan Pasangkayu %date% %time%"
)

echo.
echo [2/4] Menambahkan seluruh file perubahan (git add)...
git add -A

echo [3/4] Melakukan commit dengan pesan: "!COMMIT_MSG!"...
git commit -m "!COMMIT_MSG!"

echo [4/4] Mendorong ke GitHub (git push origin main)...
git push origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo ==========================================================
    echo [SUKSES] Perubahan berhasil di-push ke GitHub!
    echo ==========================================================
) else (
    echo.
    echo ==========================================================
    echo [PERINGATAN] Gagal melakukan push ke GitHub.
    echo Periksa koneksi internet, izin akses, atau lakukan pull terlebih dahulu.
    echo ==========================================================
)

echo.
pause
