-- ==========================================
-- SQL DDL Statements
-- ==========================================
 
-- ==========================================
-- RESET (Drop tables in reverse order of dependency)
-- ==========================================
DROP TABLE IF EXISTS termin;
DROP TABLE IF EXISTS zahnarzt;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS praxis;
DROP TABLE IF EXISTS behandelt;
 
-- ==========================================
-- CREATE Tables (in order of dependency)
-- ==========================================
 
CREATE TABLE praxis (
(name, adresse) varchar(150) PRIMARY KEY,
) ;
 
CREATE TABLE person (
p_id integer PRIMARY KEY,
vorname varchar(50) NOT NULL,
name(50) NOT NULL
) ;
 
CREATE TABLE patient (
p_id integer PRIMARY KEY REFERENCES
person (p_id),
ahv varchar(13) UNIQUE
) ;
 
CREATE TABLE zahnarzt (
p_id integer PRIMARY KEY REFERENCES
person (p_id),
Ausbildung varchar(250) NOT NULL
) ;
CREATE TABLE termin (
p_id integer NOT NULL
REFERENCES patient (p_id),
name varchar(50)
REFERENCES praxis (name),
adresse varchar(100)
REFERENCES praxis (adresse),
) ;
 
CREATE TABLE behandelt (
    pat_p_id integer PRIMARY KEY
        REFERENCES patient (p_id),
 
    za_p_id integer NOT NULL
        REFERENCES zahnarzt (p_id)
);
 
 
