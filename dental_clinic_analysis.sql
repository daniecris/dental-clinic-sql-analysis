-- Dental Clinic SQL Analysis
-- Database: PostgreSQL 

--1.Create table
CREATE TABLE dental_visits(
  visit_id integer,
  patient_id integer,
  treatment varchar(50),
  cost numeric);
