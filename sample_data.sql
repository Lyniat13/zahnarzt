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
INSERT INTO person (name, vorname, p_id)
VALUES
('Müller', 'Maria', 1111),
('Weber', 'Anna', 1010),
('Meier', 'Jonas', 2222),
('Keller', 'Lisa', 2345),
('Zahner', 'Daniel', 3333),
('Roth', 'Martin', 6666),
('Bucher', 'Max', 4444),
('Suter', 'Kevin', 7878),
('Fischer', 'Kim', 5555),
('Widmer', 'Laura', 3455),
('Frei', 'Iven', 7777),
('Moser', 'Lars', 8888),
('Wenger', 'David', 9999),
('Maurer', 'Lukas', 0001),
('Hunziker', 'Monika', 0002),
('Sutter', 'Julian', 0003),
('Tanner', 'Laurin', 0004),
('Egger', 'Beat', 0005),
('Ammann', 'Tim', 0006),
('Küng', 'Ralph', 0007);
 
 
-- 10 Datensätze für Patient
INSERT INTO patient (ahv, p_id)
VALUES
('756.1111.1111.11', 1111),
('756.1010.1010.10', 1010),
('756.2222.2222.22', 2222),
('756.2345.2345.23', 2345),
('756.3333.3333.33', 3333),
('756.6666.6666.66', 6666),
('756.4444.4444.44', 4444),
('756.7878.7878.78', 7878),
('756.5555.5555.55', 5555),
('756.3455.3455.34', 3455);
 
 
-- 10 Datensätze für Zahnarzt
INSERT INTO zahnarzt (ausbildung, p_id)
VALUES
('Kieferorthopädie', 0007),
('Dentalhygienik', 0006),
('Dentalassistenz', 0005),
('Zahnmedizin', 0004),
('Kieferorthopädie', 0003),
('Dentalhygienik', 0002),
('Zahnmedizin', 0001),
('Dentalassistenz', 9999),
('Zahnmedizin', 8888),
('Kieferorthopädie', 7777);
 
 
-- 5 Datensätze für Termin vereinbaren:
INSERT INTO termin (name, adresse, p_id)
VALUES
('Bestpraxis', 'Zürich', 1010),
('Bestpraxis', 'Bern', 2345),
('Bestpraxis', 'Basel', 6666),
('Bestpraxis', 'Chur', 7878),
('Bestpraxis', 'Wil', 3455);
 
-- 5 Datensätze für behandelt
INSERT INTO behandelt (pat_p_id, za_p_id)
VALUES
(1111, 0007),
(1010, 0006),
(2222, 0005),
(2345, 0004),
(3333, 0003);
 
 
