-- Dental Clinic SQL Analysis
-- Database: PostgreSQL 

--1.CREATE TABLE
CREATE TABLE dental_visits_2(
  visit_id integer,
  patient_id integer,
  treatment varchar(50),
  cost numeric);

--2.INSERT DATA
INSERT INTO dental_visits_2(visit_id,patient_id,treatment,cost)
VALUES
('1','101','cleaning',80),
('2','102','filling',150),
('3','103','cleaning',80),
('4','104','filling',200),
('5','105','cleaning',80),
('6','106','extraction',300),
('7','107','cleaning',80),
('8','108','filling',250),
('9','109','extraction',350),
('10','110','filling',300);

--3.ANALYSIS
--Total revenue
SELECT SUM(cost)
FROM dental_visit_2;

--Average visit cost
SELECT AVG(cost)
FROM dental_visit_2;

--Number of visits by treatment
SELECT  treatment, COUNT(*)
FROM dental_visit_2
GROUP BY treatment;
