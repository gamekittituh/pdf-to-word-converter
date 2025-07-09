# Build Script สำหรับสร้าง Executable File
# รันคำสั่งนี้เพื่อสร้างไฟล์ .exe

# สร้างไฟล์ .exe เดี่ยว (รวมทุกอย่างไว้ในไฟล์เดียว)
pyinstaller --onefile --windowed --name "PDF-to-Word-Converter" --icon=icon.ico main.py

# หรือสร้างเป็นโฟลเดอร์ (เร็วกว่า)
# pyinstaller --onedir --windowed --name "PDF-to-Word-Converter" main.py

# พารามิเตอร์:
# --onefile      : รวมทุกอย่างเป็นไฟล์ .exe เดียว
# --windowed     : ไม่แสดง console window (สำหรับ GUI)
# --name         : ชื่อของไฟล์ที่จะสร้าง
# --icon         : ไอคอนของโปรแกรม (ถ้ามี)
# --add-data     : เพิ่มไฟล์พิเศษ (ถ้าต้องการ)
