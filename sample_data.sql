-- ==========================================
-- SQL DML Statements
-- ==========================================
 
-- 10 Datensätze für Praxis:
-- 10 Datensätze für Praxis
INSERT INTO praxis (name, adresse)
VALUES
('Bestpraxis', 'Zürich'),
('Bestpraxis', 'Winterthur'),
('Bestpraxis', 'Uzwil'),
('Bestpraxis', 'Basel'),
('Bestpraxis', 'Bern'),
('Bestpraxis', 'Genf'),
('Bestpraxis', 'Chur'),
('Bestpraxis', 'Gossau'),
('Bestpraxis', 'Flawil'),
('Bestpraxis', 'Wil');
 
-- 20 Datensätze für Person
INSERT INTO person (p_id, vorname, name)
VALUES
(1111, 'Maria', 'Müller'),
(1010, 'Anna', 'Weber'),
(2222, 'Jonas', 'Meier'),
(2345, 'Lisa', 'Keller'),
(3333, 'Daniel', 'Zahner'),
(6666, 'Martin', 'Roth'),
(4444, 'Max', 'Bucher'),
(7878, 'Kevin', 'Suter'),
(5555, 'Kim', 'Fischer'),
(3455, 'Laura', 'Widmer'),
(7777, 'Iven', 'Frei'),
(8888, 'Lars', 'Moser'),
(9999, 'David', 'Wenger'),
(1, 'Lukas', 'Maurer'),
(2, 'Monika', 'Hunziker'),
(3, 'Julian', 'Sutter'),
(4, 'Laurin', 'Tanner'),
(5, 'Beat', 'Egger'),
(6, 'Tim', 'Ammann'),
(7, 'Ralph', 'Küng');
 
 
-- 10 Datensätze für Patient
INSERT INTO patient (p_id, ahv)
VALUES
(1111, '756.1111.1111.11'),
(1010, '756.1010.1010.10'),
(2222, '756.2222.2222.22'),
(2345, '756.2345.2345.23'),
(3333, '756.3333.3333.33'),
(6666, '756.6666.6666.66'),
(4444, '756.4444.4444.44'),
(7878, '756.7878.7878.78'),
(5555, '756.5555.5555.55'),
(3455, '756.3455.3455.34');
 
-- 10 Datensätze für Zahnarzt
INSERT INTO zahnarzt (p_id, ausbildung)
VALUES
(7, 'Kieferorthopädie'),
(6, 'Dentalhygienik'),
(5, 'Dentalassistenz'),
(4, 'Zahnmedizin'),
(3, 'Kieferorthopädie'),
(2, 'Dentalhygienik'),
(1, 'Zahnmedizin'),
(9999, 'Dentalassistenz'),
(8888, 'Zahnmedizin'),
(7777, 'Kieferorthopädie');
 
-- 5 Datensätze für behandelt
INSERT INTO behandelt (pat_p_id, za_p_id)
VALUES
(1111, 0007),
(1010, 0006),
(2222, 0005),
(2345, 0004),
(3333, 0003);
 
 
-- 5 Datensätze für Termin vereinbaren:
INSERT INTO termin (p_id, praxis_name, praxis_adresse)
VALUES
(1010, 'Bestpraxis', 'Zürich'),
(2345, 'Bestpraxis', 'Bern'),
(6666, 'Bestpraxis', 'Basel'),
(7878, 'Bestpraxis', 'Chur'),
(3455, 'Bestpraxis', 'Wil');
 
