-- DROP Tables in reverse order of dependency
DROP TABLE IF EXISTS termin CASCADE;
DROP TABLE IF EXISTS behandelt CASCADE;
DROP TABLE IF EXISTS zahnarzt CASCADE;
DROP TABLE IF EXISTS patient CASCADE;
DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS praxis CASCADE;
 
-- CREATE Tables in correct order
CREATE TABLE praxis (
    name varchar(50) NOT NULL,
    adresse varchar(100) NOT NULL,
    PRIMARY KEY (name, adresse)
);
 
CREATE TABLE person (
    p_id integer PRIMARY KEY,
    vorname varchar(50) NOT NULL,
    name varchar(50) NOT NULL
);
 
CREATE TABLE patient (
    p_id integer PRIMARY KEY REFERENCES person(p_id),
    ahv varchar(20) UNIQUE
);
 
CREATE TABLE zahnarzt (
    p_id integer PRIMARY KEY REFERENCES person(p_id),
    ausbildung varchar(250) NOT NULL
);
 
CREATE TABLE behandelt (
    pat_p_id integer NOT NULL REFERENCES patient(p_id),
    za_p_id integer NOT NULL REFERENCES zahnarzt(p_id),
    PRIMARY KEY (pat_p_id, za_p_id)
);
 
CREATE TABLE termin (
    p_id integer NOT NULL REFERENCES patient(p_id),
    praxis_name varchar(50) NOT NULL,
    praxis_adresse varchar(100) NOT NULL,
    PRIMARY KEY (p_id, praxis_name, praxis_adresse),
    FOREIGN KEY (praxis_name, praxis_adresse) REFERENCES praxis(name, adresse)
);
 
 
