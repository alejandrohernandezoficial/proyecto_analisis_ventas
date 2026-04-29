# proyecto_analisis_ventas
Pipline analítico con modelo de datos y aplicaciones avanzadas SQL (window functions, RFM) + Generación de métricas con DAX


# 📊 proyecto_analisis_ventas (SQL + DAX)

## 🚀 Overview
Este proyecto demuestra habilidades en:
- SQL avanzado (CTEs, Window Functions, RFM)
- ETL con Python
- Modelado analítico
- Métricas en DAX (Power BI)

---

## 🧱 Tech Stack
- SQL (SQLite / PostgreSQL)
- Python (Pandas)
- Power BI (DAX)

---

## 🔥 Features
- Segmentación de clientes (RFM)
- Ventas acumuladas por cliente
- Ranking de productos
- Dashboard en Power BI

---

## 📊 KPIs
- Total Revenue
- Customer Ranking
- Average Ticket
- YTD Sales

---

## ▶️ Cómo correr el proyecto

1. Crear DB:
```bash
sqlite3 ventas.db < sql/schema.sql
sqlite3 ventas.db < sql/data.sql

bash

python etl/etl.py

Coenctar Power BI a ventas.db
