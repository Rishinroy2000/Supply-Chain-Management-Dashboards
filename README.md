# Supply-Chain-Management-Dashboards
I developed a comprehensive project in Power BI, creating multiple dashboards to analyze the data. This process included several steps like data preprocessing, data cleaning and data visualization. Also I ran a few SQL queries in My PostgreSQL to answer some questions related to this data.

# 📊 Supply Chain & Product Performance Analysis Dashboard

## 📝 Project Overview

This project focuses on analyzing **supply chain efficiency**, **product performance**, and **customer demographics** using visual dashboards and SQL queries. The analysis enables businesses to optimize inventory, improve supplier efficiency, understand customer behavior, and maximize sales revenue.

The dashboards and insights were developed using Power BI for visualization and SQL for data extraction and transformation.

---

## 🎯 Objectives

1. Analyze which product types generate the most revenue.
2. Explore stock levels, product pricing, and performance.
3. Evaluate shipping cost variations by carrier and region.
4. Identify supplier efficiency in terms of lead time and production volumes.
5. Determine the customer demographics that contribute most to sales.
6. Visualize defect rates and operational KPIs across the supply chain.

---

## 🛠️ Tools & Technologies Used

- **Excel/CSV**: Dataset storage and cleanup
- **Power BI**: Data visualization
- **PostgreSQL**: SQL querying and data analysis

---

## 📌 Key Insights

- **Skincare** is the top-performing product type in terms of revenue.
- There is **low correlation** between lead times and order quantities (r ≈ 0.10), indicating independent variables.
- **Carrier B** generally has higher shipping costs than other carriers.
- **Supplier 1** and **Supplier 3** are the most efficient manufacturers with the best balance of low lead time and high production volumes.
- The **‘Unknown’** demographic group contributes the highest revenue among all customer groups.

---

## 📷 Dashboards Overview

### 🔶 Product Performance Dashboard
- Visualizes stock levels by SKU and product type.
- Compares product counts across price ranges.
- Highlights revenue and total sales volume by product type.

### 🔴 Supply Chain Efficiency Dashboard
- Shows order quantity vs. lead times for each supplier.
- Defect rates by suppliers and location.
- Shipping costs across different carriers and regions.
- Manufacturing lead time vs. production volume analysis.

### 🔵 Customer Demographics Dashboard
- Correlates customer demographics with sales volume and revenue.
- Highlights customer segment shipping costs and defect rates.

---

## 🧮 SQL Insights

All insights were derived using SQL queries on the `Supply_Chain` table:

- **Q1**: Product type with the highest revenue
- **Q2**: Correlation between lead time and order quantity
- **Q3**: Shipping cost analysis by carrier and location
- **Q4**: Supplier efficiency based on lead time and volume
- **Q5**: Top-performing customer demographic

---

## 📎 Files Included

- 📄 [Dataset (CSV)](https://drive.google.com/file/d/1LzRgcmiPu-D1e1sPNIDvkr57C4mGzdLH/view)  
- 🖼️ [Product Performance Dashboard Screenshot](https://github.com/Rishinroy2000/Supply-Chain-Management-Dashboards/blob/main/product%20performance%20ss.png)  
- 🖼️ [Supply Chain Efficiency Dashboard Screenshot](https://github.com/Rishinroy2000/Supply-Chain-Management-Dashboards/blob/main/Supply%20chain%20efficiency%20ss.png)  
- 🖼️ [Customer Demographics Dashboard Screenshot](https://github.com/Rishinroy2000/Supply-Chain-Management-Dashboards/blob/main/Customer%20demographics%20ss.png)  
- 📸 [SQL Query Results (Screenshots PDF)](https://github.com/Rishinroy2000/Supply-Chain-Management-Dashboards/blob/main/SQL%20Query%20Analysis.pdf)

---

## ⭐ How to Use

1. Clone or download the repository  
2. Open the `.pbix` file in Power BI Desktop  
3. Explore dashboards and SQL queries  
4. Use slicers and filters to analyze specific trends
