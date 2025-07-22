# retail_sales_sql_p1

A SQL-based data analysis project performed on a retail dataset using MySQL via phpMyAdmin.  
Includes data cleaning, table creation, and exploratory queries.

---

## Dataset
- **File**: cleaned_retail_sales.csv
- **Attributes**: transaction ID, date, time, customer, gender, age, category, quantity, prices, total sale

---

## Data Cleaning
- Removed missing values
- Corrected typos (e.g. "quantiy" → "quantity")
- Ensured date format consistency

---

## SQL Steps
- Created table via `create_table.sql`
- Imported cleaned CSV into MySQL (phpMyAdmin)
- Performed analysis using `eda_queries.sql`

---

## Sample Insights
- Top categories by revenue
- Average sales per gender
- Daily revenue trends
- High-value customers

---

## Tech Stack
- MySQL (via phpMyAdmin)
- CSV data processing
- GitHub (for version control)
