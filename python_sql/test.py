import sqlite3 as dbapi

# 1. povezav na bazo
povezva = dbapi.connect("narocila.sqlite")
kazalec = povezva.cursor() 

# 2. izvedba SELECT poizvedebe
kazalec.execute("SELECT * FROM stranka") #izvede SQL poizvedbo

# 3. prikaz rezultatov 
rezultati = kazalec.fetchall()  # vrne vrstice
                                # .fetchone()
                                # .fetchmany()

for vrstica in rezultati:
    print(vrstica)
kazalec.close()
povezva.close()