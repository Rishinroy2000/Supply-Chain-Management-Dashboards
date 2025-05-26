
-- 1. Which Product Type generates the highest revenue?
SELECT "Product type", SUM("Revenue generated") AS total_revenue
FROM supply_chain_data
GROUP BY "Product type"
ORDER BY total_revenue DESC
LIMIT 1;
-- Result:
-- Product type | total_revenue
-- -------------|-------------------
-- skincare | 241,628.16


-- 2. Are there any significant correlations between Lead times and Order quantities?
SELECT CORR("Lead times", "Order quantities") AS correlation
FROM supply_chain_data;
-- Result:
-- correlation
-- -----------
-- 0.1055


-- 3. How do Shipping costs vary by Shipping carrier and Location?
SELECT 
    "Shipping carriers",
    "Location",
    AVG("Shipping costs") AS avg_shipping_cost,
    MIN("Shipping costs") AS min_shipping_cost,
    MAX("Shipping costs") AS max_shipping_cost,
    COUNT(*) AS total_shipments
FROM supply_chain_data
GROUP BY "Shipping carriers", "Location"
ORDER BY "Shipping carriers", "Location";
-- Result:
-- Shipping carriers | Location | avg_shipping_cost | min_shipping_cost | max_shipping_cost | total_shipments
-- Carrier A | Bangalore | 6.6101 | 2.4579 | 9.5373 | 6
-- Carrier A | Chennai | 6.1274 | 1.0195 | 8.8783 | 6
-- Carrier A | Delhi | 5.0658 | 3.8905 | 6.2479 | 5
-- Carrier A | Kolkata | 3.9504 | 1.3253 | 9.5676 | 7
-- Carrier A | Mumbai | 6.5327 | 3.8013 | 9.7166 | 4
-- Carrier B | Bangalore | 4.6544 | 1.1943 | 7.6744 | 10
-- Carrier B | Chennai | 3.5013 | 1.3110 | 6.0379 | 8
-- Carrier B | Delhi | 5.1271 | 1.0135 | 9.1606 | 6
-- Carrier B | Kolkata | 7.3432 | 2.0398 | 9.9298 | 9
-- Carrier B | Mumbai | 6.5491 | 1.4543 | 9.8981 | 10
-- Carrier C | Bangalore | 8.6338 | 7.5262 | 9.7413 | 2
-- Carrier C | Chennai | 4.8344 | 2.4739 | 8.2492 | 6
-- Carrier C | Delhi | 4.9892 | 2.5056 | 7.5774 | 4
-- Carrier C | Kolkata | 5.5882 | 1.7296 | 9.0303 | 9
-- Carrier C | Mumbai | 5.7319 | 1.7744 | 9.1478 | 8


-- 4. Which suppliers have the most efficient manufacturing processes 
--    based on Manufacturing lead time and Production volumes?
SELECT 
    "Supplier name", 
    AVG("Manufacturing lead time") AS avg_lead_time, 
    AVG("Production volumes") AS avg_production_volume
FROM supply_chain_data
GROUP BY "Supplier name"
ORDER BY avg_lead_time ASC, avg_production_volume DESC
LIMIT 10;
-- Result:
-- Supplier name | avg_lead_time | avg_production_volume
-- Supplier 1 | 12.59 | 501.67
-- Supplier 3 | 14.93 | 533.13
-- Supplier 4 | 15.33 | 653.11
-- Supplier 2 | 15.59 | 641.14
-- Supplier 5 | 16.33 | 521.17


-- 5. What demographic group contributes the most to sales?
SELECT "Customer demographics", SUM("Revenue generated") AS total_revenue
FROM supply_chain_data
GROUP BY "Customer demographics"
ORDER BY total_revenue DESC
LIMIT 1;
-- Result:
-- Customer demographics | total_revenue
-- ----------------------|---------------
-- Unknown | 173,090.13
