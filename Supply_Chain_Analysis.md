
## 1. Which Product Type generates the highest revenue?

```sql
SELECT "Product type", SUM("Revenue generated") AS total_revenue
FROM "Supply_Chain"
GROUP BY "Product type"
ORDER BY total_revenue DESC
LIMIT 1;
```

**Result:**  
| Product type | total_revenue           |
|--------------|--------------------------|
| skincare     | 241628.1621330632273     |

---

## 2. Are there any significant correlations between Lead times and Order quantities?

```sql
SELECT CORR("Lead times", "Order quantities") AS correlation
FROM "Supply_Chain";
```

**Result:**  
| correlation             |
|-------------------------|
| 0.10545932302505705     |

---

## 3. How do Shipping costs vary by Shipping carrier and Location?

```sql
SELECT
    "Shipping carriers",
    "Location",
    AVG("Shipping costs") AS avg_shipping_cost,
    MIN("Shipping costs") AS min_shipping_cost,
    MAX("Shipping costs") AS max_shipping_cost,
    COUNT(*) AS total_shipments
FROM "Supply_Chain"
GROUP BY "Shipping carriers", "Location"
ORDER BY "Shipping carriers", "Location";
```

**Result (Sample):**  
| Shipping carriers | Location | avg_shipping_cost | min_shipping_cost | max_shipping_cost | total_shipments |
|-------------------|----------|-------------------|-------------------|-------------------|------------------|
| Carrier A         | Bangalore| 6.6100933267703867| 2.45793352798733  | 9.537283061108338 | 6                |
| Carrier A         | Chennai  | 6.1274204696805363| 1.019487570822119 | 8.87833465092684  | 6                |
| Carrier A         | Delhi    | 5.0657734001254215| 3.890547915807615 | 6.247860914975991 | 5                |
| ...               | ...      | ...               | ...               | ...               | ...              |

---

## 4. Which suppliers have the most efficient manufacturing processes based on Manufacturing lead time and Production volumes?

```sql
SELECT "Supplier name", AVG("Manufacturing lead time") AS avg_lead_time, AVG("Production volumes") AS avg_production_volume
FROM "Supply_Chain"
GROUP BY "Supplier name"
ORDER BY avg_lead_time ASC, avg_production_volume DESC
LIMIT 10;
```

**Result:**  
| Supplier name | avg_lead_time         | avg_production_volume  |
|---------------|------------------------|--------------------------|
| Supplier 1    | 12.592592592592592     | 501.6666666666667        |
| Supplier 3    | 14.933333333333334     | 533.1333333333333        |
| Supplier 4    | 15.333333333333334     | 455.1111111111111        |
| Supplier 2    | 15.59090909090909      | 641.1363636363636        |
| Supplier 5    | 16.333333333333332     | 521.1666666666666        |

---

## 5. What demographic group contributes the most to sales?

```sql
SELECT "Customer demographics", SUM("Revenue generated") AS total_revenue
FROM "Supply_Chain"
GROUP BY "Customer demographics"
ORDER BY total_revenue DESC
LIMIT 1;
```

**Result:**  
| Customer demographics | total_revenue          |
|------------------------|------------------------|
| Unknown                | 173090.1338369746713   |
