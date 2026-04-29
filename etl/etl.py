import sqlite3
import pandas as pd

# Conexión
conn = sqlite3.connect("ventas.db")

# Extraer
ordenes = pd.read_sql("SELECT * FROM ordenes", conn)

# Transformar
ordenes['fecha'] = pd.to_datetime(ordenes['fecha'])
ordenes['year'] = ordenes['fecha'].dt.year
ordenes['month'] = ordenes['fecha'].dt.month

# Cargar
ordenes.to_sql("ordenes_clean", conn, if_exists="replace", index=False)

print("ETL completado")