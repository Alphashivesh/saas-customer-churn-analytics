-- 1. Executive KPIs View
-- Purpose: Pre-calculates top-level metrics for the dashboard banner.
SELECT
  COUNT(customerid) AS total_customers,
  SUM(churn_binary) AS total_churned_customers,
  ROUND(SUM(churn_binary) / COUNT(customerid), 4) AS overall_churn_rate,
  ROUND(SUM(monthlycharges), 2) AS total_mrr,
  ROUND(SUM(CASE WHEN churn_binary = 1 THEN monthlycharges ELSE 0 END), 2) AS churned_mrr,
  ROUND(AVG(tenure), 1) AS average_tenure_months
FROM `your_project_id.saas_analytics.customer_churn_clean`;

-- 2. Cohort & Retention View
-- Purpose: Aggregates churn and revenue by contract type and tenure length for the heatmap.
SELECT
  contract,
  tenure_cohort,
  COUNT(customerid) AS total_customers,
  SUM(churn_binary) AS churned_customers,
  ROUND(SUM(churn_binary) / COUNT(customerid), 4) AS cohort_churn_rate,
  ROUND(SUM(monthlycharges), 2) AS cohort_mrr
FROM `your_project_id.saas_analytics.customer_churn_clean`
GROUP BY 
  contract, 
  tenure_cohort
ORDER BY 
  contract, 
  tenure_cohort;
