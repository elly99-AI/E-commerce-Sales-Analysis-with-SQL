# E-commerce Sales Analysis with SQL

Project developed during the Master in AI Developer at Profession AI

## Description
This project uses a **relational SQL database** to analyze sales data from an e-commerce platform.  
The goal is to extract useful insights to support business decision-making, identifying top customers, best-selling products, temporal trends, and order characteristics.

---

## Objectives
- Identify **customers with the highest spending**.  
- Determine **products with the highest revenue**.  
- Analyze **the most profitable days of the week**.  
- Calculate the **average number of products per order**.

---
## Stack Tecnologico e Ambiente

Per eseguire l'analisi e generare gli insight sono stati utilizzati i seguenti strumenti:

* **Database Engine:** **MySQL**
* **Ambiente di Analisi:** **MySQL Workbench** 

## Dataset
The project uses three main tables from the `ecommerce` database:

| Table       | Description                                                                 |
|-------------|-----------------------------------------------------------------------------|
| **product** | Contains product information (ID, name, price).                             |
| **customer**| Contains customer details (ID, email).                                      |
| **orders**  | Records transactions (customer ID, product ID, order date).                 |

---
## Insight Clientela: Concentrazione del Valore

Il cliente Mario Rossi si distingue come il più prezioso con una spesa totale di $3899.95.
I primi due clienti (Mario Rossi e Anna Bianchi) rappresentano circa il 78% della spesa totale del campione analizzato.

## Insight Temporale: Ottimizzazione Promozioni

L'analisi del fatturato per giorno della settimana ha rivelato che i giorni più redditizi sono il Giovedì ($1989.97) e la Domenica ($1919.97). Al contrario, 
il Lunedì registra il fatturato più basso ($269.97).


