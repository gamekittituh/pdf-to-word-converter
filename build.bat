@echo off
REM Build Script สำหรับสร้าง Executable File

echo 🚀 PDF to Word Converter - Build Script
echo ========================================

REM ตรวจสอบ Python
echo 🔍 Checking Python installation...
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python not found in PATH!
    echo Please install Python or add it to PATH
    echo Download from: https://www.python.org/downloads/
    pause
    exit /b 1
) else (
    echo ✅ Python found
    python --version
)

REM ตรวจสอบ pip
echo.
echo 🔍 Checking pip...
python -m pip --version >nul 2>&1
if errorlevel 1 (
    echo ❌ pip not found!
    echo Installing pip...
    python -m ensurepip --upgrade
) else (
    echo ✅ pip found
)

REM ตรวจสอบและติดตั้ง dependencies
echo.
echo 📦 Installing/Checking dependencies...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip install pyinstaller

REM ตรวจสอบว่า PyInstaller ติดตั้งสำเร็จ
echo.
echo 🔍 Verifying PyInstaller installation...
python -m PyInstaller --version >nul 2>&1
if errorlevel 1 (
    echo ❌ PyInstaller installation failed!
    pause
    exit /b 1
) else (
    echo ✅ PyInstaller ready
    python -m PyInstaller --version
)

REM สร้างโฟลเดอร์ output
if not exist "dist" mkdir dist
if not exist "build" mkdir build

echo.
echo 🔨 Building executable...
echo ----------------------------------------

REM สร้างไฟล์ .exe โดยใช้ python -m PyInstaller
python -m PyInstaller ^
    --onefile ^
    --windowed ^
    --name "PDF-to-Word-Converter-v1.0.1" ^
    --distpath "dist" ^
    --workpath "build" ^
    --specpath "." ^
    --add-data "README.md;." ^
    --add-data "requirements.txt;." ^
    main.py

if errorlevel 1 (
    echo ❌ Build failed!
    echo.
    echo Possible solutions:
    echo 1. Make sure all dependencies are installed
    echo 2. Check if main.py exists and is valid
    echo 3. Try running: python -m pip install --upgrade pyinstaller
    pause
    exit /b 1
) else (
    echo ✅ Build completed successfully!
    echo 📁 Output directory: %cd%\dist
    echo.
    
    REM แสดงไฟล์ที่สร้างขึ้น
    echo 📦 Generated files:
    if exist "dist" (
        dir /b dist\
        echo.
        REM แสดงขนาดไฟล์
        for %%f in (dist\*) do (
            echo File: %%f - Size: %%~zf bytes
        )
    ) else (
        echo No files found in dist directory
    )
    echo.
    echo 🎉 Build process completed!
    echo You can run: dist\PDF-to-Word-Converter-v1.0.1.exe
)

echo.
pause