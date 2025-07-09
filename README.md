# 📄 PDF to Word Converter

![Python](https://img.shields.io/badge/python-3.8+-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows-lightgrey.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

**โปรแกรมแปลงไฟล์ PDF เป็น Word Document** พร้อม GUI ที่ใช้งานง่าย รองรับทั้งไฟล์ PDF ปกติและไฟล์ PDF ที่เป็นภาพ (OCR)

## ✨ คุณสมบัติ

- 🔄 **แปลงไฟล์ PDF เป็น Word** - รองรับทั้งข้อความและรูปภาพ
- 🔍 **OCR Support** - แปลงไฟล์ PDF ที่เป็นภาพด้วย Tesseract OCR
- 🌐 **รองรับหลายภาษา** - ภาษาไทย, อังกฤษ และภาษาอื่นๆ
- 🎨 **UI ทันสมัย** - Dark Theme ที่สวยงามและใช้งานง่าย
- ⚡ **ประสิทธิภาพสูง** - ประมวลผลได้เร็วและแม่นยำ
- 🔧 **ใช้งานง่าย** - เพียงคลิกเลือกไฟล์และแปลง

## 🖥️ ภาพตัวอย่าง

![PDF to Word Converter](https://github.com/gamekittituh/pdf-to-word-converter/blob/main/screenshort.png?raw=true)

_หน้าจอหลักของโปรแกรม PDF to Word Converter_

## 🛠️ การติดตั้ง

### ความต้องการของระบบ

- **Python 3.8+**
- **Windows 10/11**
- **Tesseract OCR** (สำหรับการแปลงไฟล์ภาพ)
- **Poppler** (สำหรับการแปลง PDF เป็นภาพ)

### ขั้นตอนการติดตั้ง

1. **Clone Repository**

   ```bash
   git clone https://github.com/gamekittituh/pdf-to-word-converter.git
   cd pdf-to-word-converter
   ```

2. **ติดตั้ง Python Dependencies**

   ```bash
   pip install -r requirements.txt
   ```

3. **ติดตั้ง Tesseract OCR**

   - ดาวน์โหลดจาก: https://github.com/UB-Mannheim/tesseract/wiki
   - ติดตั้งและเพิ่มไปยัง PATH
   - เพิ่มภาษาไทย: `tessdata/tha.traineddata`

4. **ติดตั้ง Poppler**

   ```bash
   # สำหรับ Windows
   winget install poppler

   # หรือดาวน์โหลดจาก
   # https://github.com/oschwartz10612/poppler-windows
   ```

## 🚀 วิธีใช้งาน

### การรันโปรแกรม

```bash
python main.py
```

### การใช้งาน GUI

1. **เลือกไฟล์ PDF** - คลิกปุ่ม "📄 เลือกไฟล์ PDF"
2. **เลือกตำแหน่งบันทึก** - คลิกปุ่ม "🔄 แปลงเป็น Word"
3. **รอการแปลง** - โปรแกรมจะแปลงไฟล์อัตโนมัติ
4. **เสร็จสิ้น** - ไฟล์ Word จะถูกบันทึกในตำแหน่งที่เลือก

## 📁 โครงสร้างไฟล์

```
pdf-to-word-converter/
├── main.py                 # ไฟล์หลักของโปรแกรม
├── requirements.txt        # รายการ Python packages
├── README.md              # เอกสารคู่มือ
├── LICENSE                # ไฟล์ MIT License
├── screenshot.png         # ภาพตัวอย่างของโปรแกรม
├── .gitignore             # ไฟล์ที่ไม่ต้องติดตาม
└── .vscode/
    └── tasks.json         # VS Code tasks
```

## 🔧 Dependencies

```python
pdf2docx==0.5.8           # แปลง PDF เป็น Word
pdf2image==1.17.0         # แปลง PDF เป็นภาพ
pytesseract==0.3.13       # OCR Engine
python-docx==1.2.0        # จัดการไฟล์ Word
Pillow==11.3.0            # ประมวลผลภาพ
```

## 🎨 UI Features

- **Dark Theme** - ธีมสีเข้มที่สบายตา
- **Responsive Design** - ปรับขนาดได้ตามหน้าต่าง
- **Modern Icons** - ใช้ Emoji และไอคอนสวยงาม
- **Hover Effects** - ปุ่มมีเอฟเฟกต์เมื่อเอาเมาส์ไปชี้
- **Progress Animation** - แสดงสถานะการแปลงแบบเรียลไทม์

## 📋 TODO

- [ ] เพิ่มการรองรับไฟล์หลายไฟล์พร้อมกัน
- [ ] เพิ่มการเลือกภาษาสำหรับ OCR
- [ ] เพิ่มการแปลงแบบ Batch Processing
- [ ] เพิ่มการตั้งค่าคุณภาพการแปลง
- [ ] เพิ่มการส่งออกเป็นรูปแบบอื่น (TXT, HTML)

## 🐛 การแก้ปัญหา

### ปัญหาที่พบบ่อย

1. **"Unable to get page count"**

   - **สาเหตุ**: Poppler ไม่ได้ติดตั้งหรือไม่อยู่ใน PATH
   - **แก้ไข**: ติดตั้ง Poppler และรีสตาร์ท terminal

2. **"Tesseract not found"**

   - **สาเหตุ**: Tesseract ไม่ได้ติดตั้งหรือไม่อยู่ใน PATH
   - **แก้ไข**: ติดตั้ง Tesseract และเพิ่มไปยัง PATH

3. **การแปลงภาษาไทยไม่ถูกต้อง**
   - **สาเหตุ**: ไม่มีไฟล์ภาษาไทยสำหรับ Tesseract
   - **แก้ไข**: ดาวน์โหลด `tha.traineddata` ใส่ใน tessdata

## 🤝 การมีส่วนร่วม

เรายินดีรับการมีส่วนร่วมจากนักพัฒนาทุกคน!

1. Fork repository นี้
2. สร้าง feature branch (`git checkout -b feature/amazing-feature`)
3. Commit การเปลี่ยนแปลง (`git commit -m 'Add amazing feature'`)
4. Push ไปยัง branch (`git push origin feature/amazing-feature`)
5. สร้าง Pull Request

## 📜 License

โปรเจคนี้ใช้ license [MIT](LICENSE) - ดูรายละเอียดในไฟล์ LICENSE

## 👨‍💻 ผู้พัฒนา

- **[GameKittituh]** - _Initial work_ - [GitHub Profile](https://github.com/gamekittituh)

## 🙏 ขอบคุณ

- [pdf2docx](https://github.com/dothinking/pdf2docx) - สำหรับการแปลง PDF เป็น Word
- [Tesseract OCR](https://github.com/tesseract-ocr/tesseract) - สำหรับการอ่านข้อความจากภาพ
- [pdf2image](https://github.com/Belval/pdf2image) - สำหรับการแปลง PDF เป็นภาพ

---

⭐ **ถ้าโปรเจคนี้มีประโยชน์ อย่าลืมให้ Star ด้วยนะครับ!**
