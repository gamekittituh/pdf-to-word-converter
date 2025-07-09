@echo off
echo สร้าง Executable File สำหรับ PDF to Word Converter
echo ======================================================

echo ติดตั้ง PyInstaller...
pip install pyinstaller

echo สร้างไฟล์ .exe...
pyinstaller --onefile --windowed --name "PDF-to-Word-Converter" main.py

echo สำเร็จ! ไฟล์ .exe อยู่ในโฟลเดอร์ dist/
pause
