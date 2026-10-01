import os
from dotenv import load_dotenv
from fastapi import FastAPI
import psycopg2
from pydantic import BaseModel
load_dotenv()
conn=psycopg2.connect(
    host=os.getenv("DB_HOST"),
    port=os.getenv("DB_PORT"),
    database=os.getenv("DB_NAME"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD")
)
print("Database connected successfully")
print(os.getenv("DB_NAME"))
app= FastAPI()
class PatientCreate(BaseModel):
    name:str
    phone:str
@app.get("/")
def root():
    return{"message":"Clinic Management System API is running"}
@app.get("/patients")
def get_patients():
    cursor=conn.cursor()
    cursor.execute("SELECT id,name , phone FROM patients")
    patients=cursor.fetchall()
    return patients    
@app.post("/patients")
def create_patient(patient: PatientCreate) :
    cursor=conn.cursor()
    cursor.execute(
        "INSERT INTO patients(name,phone)VALUES(%s,%s)RETURNING id",
        (patient.name,patient.phone)
    )  
    patient_id=cursor.fetchone()[0]
    conn.commit()
    return{"id":patient_id,"message":"patient create successfully"}
