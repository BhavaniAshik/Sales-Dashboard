# 📊 Sales Performance Dashboard – Power BI

## 📌 Project Overview
This project is an end-to-end **Sales Performance Dashboard** built using **Power BI**, **SQL**, and **DAX**.  
The dashboard provides insights into sales trends, profitability, customer performance, and year-over-year growth to support business decision-making.

The project follows **real-world BI development practices** including star schema modeling, time intelligence, and performance-optimized DAX.

---

## 🎯 Business Objectives
- Track overall sales and profitability
- Analyze Year-over-Year (YoY) and YTD performance
- Identify top-performing customers and categories
- Monitor monthly and yearly sales trends
- Enable interactive analysis using slicers

---

## 📊 Key KPIs
- **Total Sales**
- **Sales Previous Year (PY)**
- **YoY Growth %**
- **Sales YTD**
- **Total Profit**
- **Profit YTD**
- **Average Order Value (AOV)**

---

## 📈 Visuals Included
- KPI Cards (Sales, Profit, YoY, YTD)
- Monthly Sales vs Previous Year comparison
- Sales Trend by Year–Month
- Sales by Category
- Profit by Category (Donut Chart)
- Top N Customers by Sales & Profit
- Interactive slicers (Date, Category, Top N)

---

## 🧠 DAX Concepts Used
- Base measures
- Filter context & row context
- Time intelligence:
  - SAMEPERIODLASTYEAR
  - TOTALYTD
  - DATEADD
- Dynamic Top N using disconnected slicer
- RANKX and ALL
- DIVIDE for safe calculations

---

## 🗂 Data Model
- **FactSales**
- **DimDate**
- **DimCustomer**
- **DimProduct**

Star schema design with single-direction relationships for optimal performance.

---

## 🛠 Tools & Technologies
- **Power BI Desktop**
- **DAX**
- **Power Query**
- **SQL**
- **Microsoft Excel**

---

## 📁 Repository Structure
