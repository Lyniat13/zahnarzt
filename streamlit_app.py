import streamlit as st
from sqlalchemy import text
 
def main():
    st.title('Bestpraxis')
 
    conn = st.connection("postgresql", type="sql")
 
    # Form to add new student
    st.header('Termin vereinbaren')
    with st.form("Termin hinzufügen"): 
        p_id = st.number_input("Patienten-ID", min_value=1, step=1)
        vorname = st.text_input("Vorname")
        nachname = st.text_input("Name")
        ahv = st.text_input("AHV-Nummer")
        praxis_name = st.text_input("Praxisname (z.B Bestpraxis)")
        adresse = st.text_input("Adresse (z.B Winterthur")
        zahnarzt_id = st.number_input("Zahnarzt-ID (p_id)", min_value=1, step=1)
 
        submitted = st.form_submit_button("Termin hinzufügen")
 
        if submitted:
            if vorname and nachname and ahv and praxis_name and adresse and zahnarzt_id:
                with conn.session as s:
                    # Person eintragen
                    s.execute(
                        text("""
                            INSERT INTO person (p_id, vorname, name)
                            VALUES (:p1, :p2, :p3)
                        """),
                        {"p1": p_id, "p2": vorname, "p3": nachname}
                    )
                    # Patient eintragen
                    s.execute(
                        text("""
                            INSERT INTO patient (p_id, ahv)
                            VALUES (:p1, :p2)
                        """),
                        {"p1": p_id, "p2": ahv}
                    )
                    # Termin eintragen
                    s.execute(
                        text("""
                            INSERT INTO termin (p_id, name, adresse)
                            VALUES (:p1, :p2, :p3)
                        """),
                        {"p1": p_id, "p2": praxis_name, "p3": adresse}
                    )
                    # Behnadlung eintragen
                    s.execute(
                        text("""
                            INSERT INTO behandelt (pat_p_id, za_p_id)
                            VALUES (:p1, :p2)
                        """),
                        {"p1": p_id, "p2": int(zahnarzt_id)}
                    )
                    s.execute(
                        text("""
                            INSERT INTO praxis (name, adresse)
                            VALUES (:n, :a)
                            ON CONFLICT (name, adresse) DO NOTHING
                        """),
                        {"n": praxis_name, "a": adresse}
                    )
                    s.commit()
                st.success(f"Patient erfolgreich hinzugefügt: {vorname} {nachname}")
                st.rerun()
            else:
                st.error("Bitte alle Felder ausfüllen")

    # Alle Termine anzeigen
    st.header("Alle Termine")
    try:
        df = conn.query('SELECT * FROM termin;', ttl=0)
        st.write(df)
    except Exception as e:
        st.exception(e)
 
if __name__ == "__main__":
    main()
