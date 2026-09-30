یک پروژه‌ی مدیریت کلینیک که به‌صورت مرحله‌ای با تمرکز بر **Software Engineering، Database، Backend و AI Automation** توسعه داده می‌شود.

> A clinic management system built step by step with a focus on Software Engineering, databases, backend development, and future AI automation.

---

##  درباره پروژه

این پروژه از یک دیتابیس ساده‌ی کلینیک شروع شده و به‌مرور به یک سیستم واقعی و قابل توسعه تبدیل خواهد شد.

در نسخه فعلی، تمرکز روی طراحی دیتابیس و ارتباط بین اطلاعات بیماران، نوبت‌ها و پیگیری‌های بعد از درمان است.

### ساختار فعلی

Patient
   ↓
Appointment
   ↓
Follow-up

---

## 🗄️ Database

Database این پروژه با **PostgreSQL** ساخته شده است.

### Tables

- `patients`
  - اطلاعات پایه بیمار
  - نام
  - شماره تلفن
  - زمان ایجاد رکورد

- `appointments`
  - نوبت بیمار
  - تاریخ و ساعت
  - نوع درمان
  - ارتباط با بیمار از طریق `patient_id`

- `follow_ups`
  - پیگیری بعد از درمان
  - تاریخ پیگیری
  - وضعیت
  - یادداشت
  - ارتباط با appointment

### مفاهیمSQL تمرین‌شده

- `CREATE TABLE`
- `INSERT`
- `SELECT`
- `UPDATE`
- `DELETE`
- `WHERE`
- `JOIN`
- `ORDER BY`
- `COUNT`
- `GROUP BY`
- `HAVING`
- Primary Key
- Foreign Key
- Table Relationships

---

## 📁 ساختار فعلی پروژه

01-sql-postgresql/
├── practice.sql
└── seed.sql

- `practice.sql` → ساختار دیتابیس و جدول‌ها
- `seed.sql` → داده‌های نمونه پروژه

---

## 🚀 Development Roadmap

### Phase 1 — Database ✅

- PostgreSQL
- Database Schema
- Patients
- Appointments
- Follow-ups
- SQL Queries
- Table Relationships

### Phase 2 — Backend 🔜

- Python
- FastAPI
- REST API
- PostgreSQL Integration
- CRUD Endpoints

### Phase 3 — Frontend 🔜

- Web Interface
- Patient Management
- Appointment Management
- Follow-up Management
- Dashboard

### Phase 4 — Automation & AI 🔜

- Automated Patient Follow-ups
- Appointment Reminders
- AI-assisted Communication
- AI Agent Integration
- Business Automation

---

## 🎯 هدف پروژه

هدف این پروژه فقط ساخت یک دیتابیس نیست.

هدف این است که یک سیستم واقعی را به‌صورت مرحله‌ای از:

Database
   ↓
Backend
   ↓
REST API
   ↓
Frontend
   ↓
Automation
   ↓
AI

طراحی و توسعه بدهم.

---

## 📌 Project Status

🚧 **Work in Progress**

### Current Version

`v0.1 — Database Layer`

Database layer completed.

Backend/API development will be added in the next phase.

---

## 🛠️ Technologies

- PostgreSQL
- SQL
- Python
- FastAPI (Planned)
- Git
- GitHub
- AI / Automation (Planned)
