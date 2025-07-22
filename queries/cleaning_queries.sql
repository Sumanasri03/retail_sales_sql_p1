--check or remove nulls

DELETE FROM retail_sales
WHERE 
  transactions_id IS NULL OR
  sale_date IS NULL OR
  customer_id IS NULL OR
  gender IS NULL OR
  age IS NULL OR
  category IS NULL OR
  quantity IS NULL OR
  price_per_unit IS NULL OR
  cogs IS NULL OR
  total_sale IS NULL;

--fix gender casing
UPDATE retail_sales_cleaned
SET gender = CONCAT(UCASE(LEFT(gender, 1)), LCASE(SUBSTRING(gender, 2)));


--Recalculate COGS and Total Sale if Mismatched
UPDATE retail_sales_cleaned
SET 
  cogs = quantity * price_per_unit,
  total_sale = quantity * price_per_unit * 1.10;
