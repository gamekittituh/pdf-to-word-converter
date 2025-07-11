@echo off
echo 🔧 Setting up Python environment...
echo =====================================

REM หา Python installation
for /f "tokens=*" %%i in ('where python 2^>nul') do set PYTHON_PATH=%%i

if "%PYTHON_PATH%"=="" (
    echo ❌ Python not found in system PATH
    echo.
    echo Please install Python from: https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation
    echo.
    pause
    exit /b 1
)

echo ✅ Python found at: %PYTHON_PATH%

REM แสดง Python version
echo.
echo Python version:
python --version

REM อัปเดต pip
echo.
echo 📦 Updating pip...
python -m pip install --upgrade pip

REM ติดตั้ง dependencies
echo.
echo 📦 Installing project dependencies...
python -m pip install -r requirements.txt

REM ติดตั้ง PyInstaller
echo.
echo 📦 Installing PyInstaller...
python -m pip install pyinstaller

echo.
echo ✅ Environment setup completed!
echo You can now run build.bat
pause