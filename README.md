# 🛒 Retail Business Performance & Profitability Analysis

## 📌 Objective
Analyze transactional retail data to:
- Uncover **profit-draining categories**
- Optimize **inventory turnover**
- Identify **seasonal product behavior**
- Deliver **data-driven recommendations** to improve profitability

---

## 📂 Dataset
Custom dataset `cleaned_retail_data_for_SQL_and_powerbi.csv` containing:
- Product, region, transaction details
- Profit, cost, quantity
- Inventory days, seasonal data
- Derived fields: Profit Margin, Inventory Turnover, YearMonth

---

## 🛠 Tools Used
- **Python (Pandas, Seaborn)**: Data cleaning, feature engineering
- **SQL (MySQL Workbench)**: Business logic, KPI queries
- **Power BI**: Dashboard building & visualization

---

## 🔄 Project Workflow
1. **Data Cleaning** (Python):
   - Handled missing values
   - Created new features like `Profit_Margin`, `Inventory_Turnover`

2. **SQL Analysis**:
   - Category-wise profit margin
   - Region-wise profitability
   - Inventory turnover per category
   - Seasonal sales trends

3. **Power BI Dashboard**:
   - KPI Cards: Total Profit, Avg Margin, Sales
   - Visuals: Monthly trends, profit vs cost, inventory flow
   - Filters: Region, Product Category, Season, Payment Method

---

## 📊 Key Insights
- Some product categories have **low margins but high sales**
- Inventory turnover highlights **slow-moving stock**
- Seasonality plays a key role in **sales spikes**
- Certain **regions underperform**, impacting total revenue

---

## 📎 Deliverables
- ✅ SQL Scripts: `retail_analysis_sql.sql`
- ✅ Dashboard: `Retail_Sales_Visuals.pbix`
- ✅ Final Cleaned Data: `cleaned_retail_data_for_SQL_and_powerbi.csv`
- ✅ Report PDF: [`Retail_Project_Report.pdf`](./Retail_Project_Report.pdf)

---

## 📌 Conclusion
This project showcases a full-stack retail analysis pipeline using **SQL, Python, and Power BI**. It empowers businesses to take smarter inventory, pricing, and regional decisions to improve profit margins and operational efficiency.

