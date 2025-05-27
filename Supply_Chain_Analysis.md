
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
| Carrier A         | Kolkata  | 3.9504322053945653| 1.3252704100184522| 9.56764892092304  | 7                |
| Carrier A         | Mumbai   | 6.5327138427284982| 3.801253213901277 | 9.71657477143131  | 4                |
| Carrier B         | Bangalore| 4.6543915848749741| 1.1942158648849991| 7.674430078112694 | 10               |
| Carrier B         | Chennai  | 3.5013351264921405| 1.3110237561206226| 6.037883769218298 | 8                |
| Carrier B         | Delhi    | 5.1271223160971031| 1.013486566058963 | 9.16055853538187  | 6                |
| Carrier B         | Kolkata  | 7.3432109093205793| 2.0397701894493316| 9.929816245277259 | 9                |
| Carrier B         | Mumbai   | 6.5491390771380710| 1.454053101535515 | 9.89841058069222  | 10               |
| Carrier C         | Bangalore| 8.6337700080679385| 7.526248326815108 | 9.747219168928469 | 2                |
| Carrier C         | Chennai  | 4.8343954443349234| 2.473897761045461 | 8.249168704871728 | 6                |
| Carrier C         | Delhi    | 4.9891535371999174| 2.5056210320900154| 7.577449657376693 | 4                |
| Carrier C         | Kolkata  | 5.5881581427275649| 1.7295685635434288| 9.030340422524191 | 9                |
| Carrier C         | Mumbai   | 5.7319383520368139| 1.7744297140717396| 9.147811544710633 | 8                |

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
