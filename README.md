# End-to-End SaaS Churn & Revenue Analytics

## 📌 Project Overview
This project is an end-to-end data engineering and business intelligence solution designed to analyze customer churn and Monthly Recurring Revenue (MRR) for a SaaS/Telecom company. 

The goal of this project was to identify which customer segments are churning the fastest and provide actionable insights to improve retention strategies.

**[🔗 View the Interactive Looker Studio Dashboard Here](https://datastudio.google.com/reporting/91118910-2403-44d5-a89a-a53946900b4e)**

## 🛠️ Tech Stack & Architecture
* **Python (Google Colab):** Used for Data Extraction, Transformation, and Loading (ETL). Cleaned raw data, handled missing values, and engineered new features like `tenure_cohort` and binary churn flags.
* **Google BigQuery (SQL):** Acted as the scalable cloud data warehouse. Wrote SQL views to pre-aggregate KPIs (Overall Churn Rate, Total MRR) and structure cohort data for optimal dashboard performance.
* **Looker Studio:** Designed a multi-page interactive business intelligence dashboard with custom parameters, calculated fields, and cross-filtering.

## 📊 Key Insights & Findings
1. **Contract Type Drives Retention:** Customers on "Month-to-month" contracts in their first year exhibit the highest churn velocity (over 50%), whereas those on 1-year and 2-year contracts show significantly higher loyalty.
2. **Demographic Risk Factors:** Senior citizens have a disproportionately high average churn rate (41.7%) compared to the baseline (~26.5%).
3. **Payment Frictions:** Customers utilizing electronic checks churn at a visibly higher rate than those utilizing automated payment methods like credit cards or bank transfers.

## 📂 Repository Contents
* `Analysis project2.ipynb`: The Python script detailing the data cleaning, feature engineering, and BigQuery upload process.
* `SaaS_Churn_Dashboard.pdf`: A static export of the multi-page Looker Studio dashboard.

## 🚀 How to Replicate
1. Run the Python notebook to clean the Kaggle Telco Churn dataset and push it to Google Cloud.
2. Execute the SQL queries in BigQuery to generate summary views.
3. Connect the BigQuery tables directly to Looker Studio to visualize the data.
