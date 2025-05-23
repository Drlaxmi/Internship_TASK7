# 📊 Task 7: Basic Sales Summary Using SQLite and Python

## 🎯 Objective
This task involves using SQL queries within Python to extract key sales metrics (total quantity sold and total revenue) from a SQLite database and visualize the output using a bar chart.

---

## 🧰 Tools Used
- **Python** (with `sqlite3`, `pandas`, `matplotlib`)
- **SQLite** (no separate installation required)
- **Jupyter Notebook / .py script**
- **GitHub** for version control and submission

---

## 🗃️ Dataset
A custom SQLite database named `sales_data.db` was created with a single table:

**Table: `sales`**
| Column    | Type     | Description                  |
|-----------|----------|------------------------------|
| id        | INTEGER  | Primary key (auto increment) |
| product   | TEXT     | Name of the product           |
| quantity  | INTEGER  | Number of units sold         |
| price     | REAL     | Price per unit               |

---

## 🔎 SQL Query Used
```sql
SELECT product, 
       SUM(quantity) AS total_qty, 
       SUM(quantity * price) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC;# Internship_TASK7
