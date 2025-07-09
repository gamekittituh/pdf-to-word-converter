# 📄 PDF to Word Converter v1.0.0

## 🚀 Release Notes

### ✨ ฟีเจอร์ใหม่

- 🔄 **แปลงไฟล์ PDF เป็น Word** - รองรับทั้งข้อความและรูปภาพ
- 🔍 **OCR Support** - แปลงไฟล์ PDF ที่เป็นภาพด้วย Tesseract OCR
- 🌐 **รองรับหลายภาษา** - ภาษาไทย, อังกฤษ และภาษาอื่นๆ
- 🎨 **UI ทันสมัย** - Dark Theme ที่สวยงามและใช้งานง่าย
- ⚡ **ประสิทธิภาพสูง** - ประมวลผลได้เร็วและแม่นยำ

### 🎨 UI Features

- **Dark Theme** - ธีมสีเข้มที่สบายตา
- **Responsive Design** - ปรับขนาดได้ตามหน้าต่าง
- **Modern Icons** - ใช้ Emoji และไอคอนสวยงาม
- **Hover Effects** - ปุ่มมีเอฟเฟกต์เมื่อเอาเมาส์ไปชี้
- **Progress Animation** - แสดงสถานะการแปลงแบบเรียลไทม์

## 📦 การติดตั้ง

### สำหรับผู้ใช้ทั่วไป (Executable)

1. ดาวน์โหลด `PDF-to-Word-Converter.exe`
2. รันไฟล์โดยตรง (ไม่ต้องติดตั้ง Python)
3. **สำคัญ**: ต้องติดตั้ง Dependencies ด้านล่างก่อน

### สำหรับนักพัฒนา (Source Code)

1. ดาวน์โหลด Source Code
2. ติดตั้ง Python 3.8+
3. รัน `pip install -r requirements.txt`
4. รัน `python main.py`

## ⚠️ ความต้องการของระบบ

### สำหรับ Executable

- **Windows 10/11** (64-bit)
- **Tesseract OCR** - [ดาวน์โหลด](https://github.com/UB-Mannheim/tesseract/wiki)
- **Poppler** - รัน `winget install poppler`

### สำหรับ Source Code

- **Python 3.8+**
- **Dependencies** ตาม requirements.txt

## 🔧 การติดตั้ง Dependencies

### 1. Tesseract OCR

```bash
# ดาวน์โหลดและติดตั้งจาก
# https://github.com/UB-Mannheim/tesseract/wiki

# เพิ่มไปยัง PATH และดาวน์โหลดภาษาไทย
```

### 2. Poppler

```bash
# Windows
winget install poppler

# หรือดาวน์โหลดจาก
# https://github.com/oschwartz10612/poppler-windows
```

## 📁 ไฟล์ที่รวมอยู่ใน Release

```
📦 Release Package
├── 💾 PDF-to-Word-Converter.exe     # Executable file (48MB)
├── 📄 README.md                     # คู่มือการใช้งาน
├── 📜 LICENSE                       # MIT License
├── 🔧 requirements.txt              # Python dependencies
└── 💻 Source Code.zip               # Source code สำหรับนักพัฒนา
```

## 🐛 ปัญหาที่พบบ่อย

1. **"Unable to get page count"**

   - **แก้ไข**: ติดตั้ง Poppler และรีสตาร์ท

2. **"Tesseract not found"**

   - **แก้ไข**: ติดตั้ง Tesseract และเพิ่มไปยัง PATH

3. **ไฟล์ .exe ไม่เปิด**
   - **แก้ไข**: รันด้วยสิทธิ์ Administrator หรือเพิ่ม Windows Defender exception

## 📊 ข้อมูลเทคนิค

- **ขนาดไฟล์**: ~48MB
- **Python Version**: 3.13.5
- **PyInstaller Version**: 6.14.2
- **รองรับ OS**: Windows 10/11 (64-bit)

## 🙏 ขอบคุณ

- [pdf2docx](https://github.com/dothinking/pdf2docx) - สำหรับการแปลง PDF เป็น Word
- [Tesseract OCR](https://github.com/tesseract-ocr/tesseract) - สำหรับการอ่านข้อความจากภาพ
- [pdf2image](https://github.com/Belval/pdf2image) - สำหรับการแปลง PDF เป็นภาพ

---

**📧 ติดต่อ**: [GitHub Issues](https://github.com/gamekittituh/pdf-to-word-converter/issues)
**⭐ Star**: หากโปรเจคนี้มีประโยชน์ อย่าลืมให้ Star ด้วยนะครับ!
