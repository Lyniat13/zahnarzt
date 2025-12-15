# Buchung Zahnarzttermin

- Sara Fotakis
- Natalie Brög

## Projektidee

- In unserer Applikation soll es möglich sein, bei einer Zahnarztpraxis einen Termin zu buchen. Dabei trägt man seine Personalien ein und dann erhält man einen Überblick von dem Termin.

## ER Modell

- Beschreibung (welche Entitätstypen, welche Beziehungstypen, wie sind die Kardinalitäten etc)
- ER-Design Modell in unserem Dialekt. Das ER Bild könnt ihr wie folgt in das Dokument einbinden:

![ER-Design Mini Projekt](er-design.pdf "ER-Design Mini Projekt")

## Beschreibung der Streamlit-App

Wichtig sind folgende zwei Punkte:

### 1. Eingabeformular (was wird erfasst?)

Einschreiben des Patienten für einen Termin, welche Praxis, AHV-Nummer, Name, Vorname

### 2. Datenanzeige (welche Abfrage wird angezeigt?)

Anzeige von Termin, welcher Zahnarzt

Gefiltert Patient & Zahnarzt mit Attributen & Adresse Praxis

## Auführen der App

Die SQL-Statements in DBeaver in "miniproject"-Datenbank ablegen.
In Streamlit GitHub-repository verlinken, um damit die App zu benutzen.


**Wichtig:** Testet dass folgende Schritte funktionieren:

1. `pip install -r requirements.txt`
2. `python setup_db.py`
3. `streamlit run streamlit_app.py`
