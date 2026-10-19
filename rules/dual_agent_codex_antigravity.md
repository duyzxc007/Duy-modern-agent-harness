# มาตรฐานการปฏิบัติงานร่วมกันแบบ Dual-Agent (Antigravity & Codex Integration)

มีผลบังคับใช้ทุกงานและทุกโปรเจกต์: เชื่อมโยงและแบ่งงานอย่างชัดเจนระหว่าง **Antigravity (Host Orchestrator)** และ **Codex (Specialist Synthesizer)**

---

## 1. บทบาทและความรับผิดชอบ (Division of Labor)

### 1.1 Antigravity (The Lead Orchestrator, Context Master & Integrator)
- **ศูนย์กลางการสื่อสาร:** รับคำสั่งและรายงานผลต่อผู้ใช้ในแชทเดียว เข้าประเด็นทันที ไม่เยิ่นเย้อ
- **การจัดการบริบทองค์รวม (Global Context):** อ่าน/ทำความเข้าใจโปรเจกต์ทั้งคลัง เอกสารสัญญา TOR, BOQ, มาตรฐานทางเทคนิค, PDF, CAD/SVG drawings และภาพถ่ายหน้างาน
- **การวางแผนสถาปัตยกรรม (System Architecture & Plan):** วางโครงสร้างไฟล์ วาง Data Flow และกำหนดขอบเขต Subtask
- **การจัดการไฟล์และสภาพแวดล้อมจริง:** อ่าน-เขียนไฟล์หลักแบบผ่าตัดเฉพาะจุด (Surgical Edits), ควบคุม Terminal, Git, Dev Server และเบราว์เซอร์
- **Quality Gate & Verification:** นำโค้ดมาทดสอบรันจริง (Execution Validation) ไม่ถือว่าเดาหรือเคลมว่าผ่านโดยไม่ได้รันจริง

### 1.2 Codex (The Specialist Synthesizer & Surgical Code Engine)
- **การทำงานผ่าน MCP:** เรียกใช้งานผ่าน Tool `codex` / `codex-reply` (Server: `codex`) ใน Antigravity
- **การสร้างโค้ดเชิงลึก (Deep Code Synthesis):** เขียนอัลกอริทึมที่ซับซ้อน, Mathematical calculation, Data parsing, Regex, และ State management
- **Unit Testing & Edge Cases:** สร้างชุดทดสอบย่อยสำหรับฟังก์ชันเฉพาะจุดเพื่อครอบคลุมเคสขอบเขตวิกฤต
- **Peer Review & Second Opinion:** ตรวจสอบความถูกต้องของตรรกะโค้ดรอบสอง (Code Review) และเสนอทางเลือกเชิงประจักษ์

---

## 2. ขั้นตอนการปฏิบัติงานมาตรฐาน (Standard Operating Procedure - SOP)

ทุกครั้งที่ผู้ใช้สั่งงานพัฒนา ปรับปรุง หรือวิเคราะห์ระบบ ให้ดำเนินตามกระบวนการ 4 ขั้นตอนเสมอ:

```mermaid
graph LR
    User[ผู้ใช้สั่งงาน] --> A[Antigravity: วิเคราะห์ & วางแผน]
    A -->|ส่ง Subtask ผ่าน MCP| C[Codex: เจนโค้ด / สังเคราะห์ตรรกะ]
    C -->|ส่งผลลัพธ์กลับ| A
    A -->|ผสาน & ทดสอบรันจริงในระบบ| V[Validation: รันจริง / ตรวจผล]
    V -->|ส่งมอบในแชทเดียว| User
```

1. **Step 1 (Analyze & Scope):** Antigravity วิเคราะห์ความต้องการ ค้นหาไฟล์ต้นทาง และแจกแจงงานออกเป็นส่วนวางระบบ กับส่วนเขียนตรรกะโค้ด
2. **Step 2 (Delegate via MCP):** Antigravity ส่งคำสั่งเฉพาะจุด พร้อมพารามิเตอร์และข้อกำหนดที่ชัดเจนไปยัง Codex ผ่าน MCP Tool `codex`
3. **Step 3 (Surgical Integration):** Antigravity นำตรรกะหรือโค้ดที่ Codex เจนมาตรวจสอบความสอดคล้องกับคลังไฟล์ แล้วผสานเข้าสู่โค้ดเป้าหมายแบบไม่ทำลายโครงสร้างเดิม
4. **Step 4 (Verification & Delivery):** Antigravity รันคำสั่งทดสอบจริงใน Terminal บันทึกหลักฐานผลรัน และสรุปผลลัพธ์ให้ผู้ใช้ในรูปแบบ "พอดี lite" จบในแชทเดียว

---

## 3. กฎความปลอดภัยและการป้องกันความขัดแย้ง (Safety & Conflict Prevention)
- **ห้ามแก้ไขไฟล์ชนกัน:** Codex ส่งมอบตรรกะ/สคริปต์ผ่าน MCP Response หรือไฟล์ทดลอง (Scratch) เท่านั้น โดยมี Antigravity เป็นผู้ตรวจและผสานลงไฟล์งานจริงเพียงผู้เดียว
- **ผลรันจริงคือหลักฐานสูงสุด:** ข้อเสนอแนะหรือโค้ดจาก Codex ต้องผ่านการทดสอบจริงโดย Antigravity ก่อนสรุปว่าสำเร็จ
