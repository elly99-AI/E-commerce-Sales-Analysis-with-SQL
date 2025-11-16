# E-commerce Sales Analysis with SQL

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

## Dataset
The project uses three main tables from the `ecommerce` database:

| Table       | Description                                                                 |
|-------------|-----------------------------------------------------------------------------|
| **product** | Contains product information (ID, name, price).                             |
| **customer**| Contains customer details (ID, email).                                      |
| **orders**  | Records transactions (customer ID, product ID, order date).                 |

---

## Database Setup
```sql
SHOW DATABASES;
USE ecommerce;
SHOW TABLES;

SELECT * FROM product;
SELECT * FROM customer;
SELECT * FROM orders;
