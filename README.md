Clinic Management System

A practical clinic management project built step by step with **PostgreSQL, SQL, Python, FastAPI, and REST APIs**.

This project is part of my journey toward becoming a **Software Engineer focused on Backend Development and AI Systems**.

The goal is not only to build a clinic database, but to understand how a real software system is designed and developed from the database layer to the backend API and, later, automation and AI-powered systems.

---

##  درباره پروژه

این پروژه را از صفر و به صورت مرحله‌به‌مرحله برای مدیریت اطلاعات یک کلینیک طراحی کردم.

هدف اصلی این پروژه یادگیری عملی مفاهیم **Software Engineering، Backend Development، Database Design و API Development** است.

در این پروژه ابتدا دیتابیس را طراحی کردم، سپس اطلاعات واقعی آزمایشی وارد کردم و بعد یک Backend با Python و FastAPI ساختم تا بتواند از طریق API با PostgreSQL ارتباط برقرار کند.

در مراحل بعدی قرار است قابلیت‌های بیشتری مثل مدیریت نوبت‌ها، پیگیری بیماران، Authentication، تست، Docker و در نهایت Automation و AI به سیستم اضافه شوند.

---

# 🧠 What Does This Project Do?

In simple terms:

The system stores and manages clinic information such as:

- Patients
- Patient contact information
- Appointments
- Treatments
- Future follow-up information

The long-term goal is to turn this database into a complete clinic management system with:

- Backend API
- Frontend
- Patient management
- Appointment management
- Follow-up management
- Authentication
- Automation
- AI-assisted workflows

---

# 🏗️ Current Architecture

The current system works approximately like this:

```text
User / Browser / Swagger
          ↓
        HTTP
          ↓
       FastAPI
          ↓
        Python
          ↓
         SQL
          ↓
     PostgreSQL
