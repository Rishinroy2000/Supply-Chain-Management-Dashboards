-- 1. Which Product Type generates the highest revenue?
SELECT "Product type", SUM("Revenue generated") AS total_revenue
FROM "Supply_Chain"
GROUP BY "Product type"
ORDER BY total_revenue DESC
LIMIT 1;

-- 2. Are there any significant correlations between Lead times and Order quantities?
SELECT CORR("Lead times", "Order quantities") AS correlation
FROM "Supply_Chain";

-- 3. How do Shipping costs vary by Shipping carrier and Location?
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

-- 4. Which suppliers have the most efficient manufacturing processes based on Manufacturing lead time and Production volumes?
SELECT 
    "Supplier name", 
    AVG("Manufacturing lead time") AS avg_lead_time, 
    AVG("Production volumes") AS avg_production_volume
FROM "Supply_Chain"
GROUP BY "Supplier name"
ORDER BY avg_lead_time ASC, avg_production_volume DESC
LIMIT 10;

-- 5. What demographic group contributes the most to sales?
SELECT "Customer demographics", SUM("Revenue generated") AS total_revenue
FROM "Supply_Chain"
GROUP BY "Customer demographics"
ORDER BY total_revenue DESC
LIMIT 1;
