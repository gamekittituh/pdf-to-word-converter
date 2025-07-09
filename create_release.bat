@echo off
echo ========================================
echo    PDF to Word Converter Release
echo ========================================
echo.

:: สร้างโฟลเดอร์ release
if not exist "release" mkdir release
cd release

:: สร้างโฟลเดอร์ version
set VERSION=v1.0.0
if not exist "%VERSION%" mkdir %VERSION%
cd %VERSION%

echo สร้าง Release Package สำหรับ %VERSION%...
echo.

:: คัดลอกไฟล์ executable
echo [1/5] คัดลอกไฟล์ .exe...
copy "..\..\dist\PDF-to-Word-Converter.exe" .

:: คัดลอกไฟล์เอกสาร
echo [2/5] คัดลอกไฟล์เอกสาร...
copy "..\..\README.md" .
copy "..\..\LICENSE" .
copy "..\..\RELEASE.md" .
copy "..\..\requirements.txt" .

:: สร้าง source code zip
echo [3/5] สร้าง Source Code zip...
powershell Compress-Archive -Path "..\..\main.py","..\..\requirements.txt","..\..\README.md","..\..\LICENSE" -DestinationPath "Source-Code.zip" -Force

:: สร้างไฟล์ข้อมูลเพิ่มเติม
echo [4/5] สร้างไฟล์ข้อมูล...
echo PDF to Word Converter v1.0.0 > VERSION.txt
echo Build Date: %date% %time% >> VERSION.txt
echo Platform: Windows 64-bit >> VERSION.txt

:: แสดงสรุป
echo [5/5] สรุปไฟล์ที่สร้าง...
echo.
echo =================== สำเร็จ! ===================
echo ไฟล์ Release อยู่ในโฟลเดอร์: release\%VERSION%\
echo.
dir /b
echo.
echo ========= ขั้นตอนต่อไป =========
echo 1. อัพโหลดไฟล์ไปยัง GitHub Releases
echo 2. สร้าง Tag %VERSION% ใน Git
echo 3. เขียน Release Notes
echo ================================
echo.
pause
