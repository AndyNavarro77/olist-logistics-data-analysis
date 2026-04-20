# E-Commerce Logistics & Customer Satisfaction Analysis 📊

## 🎯 Business Context (The Challenge)
In the competitive landscape of e-commerce, **delivery speed is not just a logistic KPI; it's a driver of customer loyalty.** This project analyzes a dataset of **100,000+ orders** from Olist (Brazil) to uncover how logistics performance directly impacts customer satisfaction scores.

**The Problem:** The company needed to identify which factors in the supply chain were causing low review scores and which regions were underperforming relative to their delivery estimates (SLA).

## 🛠️ Tech Stack
- **ETL & Data Cleaning:** SQL Server (T-SQL) - Handling complex joins and data normalization.
- **Statistical Analysis:** Python (Pandas, Seaborn, Matplotlib) - Identifying correlations and outliers.
- **Business Intelligence:** Power BI - Building an executive-level interactive dashboard.

## 🚀 The STAR Approach

### **Situation**
The dataset contained fragmented information across 8+ tables, including geolocation, order status, and customer reviews. The business lacked a unified view of how "Early vs. Late" deliveries influenced the final `review_score`.

### **Task**
1. Clean and integrate a complex SQL database.
2. Quantify the exact correlation between delivery delays and customer ratings.
3. Identify the most efficient and inefficient categories and states.

### **Action**
- **Data Engineering:** Developed optimized SQL queries to merge logistics and sentiment data, resolving schema inconsistencies.
- **Python Deep-Dive:** Performed a Boxplot analysis to prove that 5-star ratings are tied to deliveries arriving **11 days ahead** of the SLA.
- **Dashboard Development:** Created an interactive Power BI report with high-level KPIs (`Total Orders`, `Avg Review Score`) and geographical heatmaps.

### **Results**
- **Quantifiable Insight:** Discovered that deliveries exceeding the estimated date by even 1 day result in a **45% drop** in average review scores.
- **Operational Strategy:** Identified "Home Comfort" as a category with critical latency, providing a direct target for logistics optimization.
- **Professional Deliverable:** A production-ready dashboard that allows executives to filter performance by category and time.

## 📂 Project Structure
- `/sql_queries`: T-SQL scripts for database setup and KPI extraction.
- `/notebooks`: Python scripts for statistical visualization.
- `/dashboard`: `.pbix` file and screenshots of the Power BI report.
