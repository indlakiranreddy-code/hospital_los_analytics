SELECT* FROM hospital


1. What is the average LOS (stay_days) for each severity level?

SELECT severity,
       COUNT(*) AS patient_count,
      round(AVG(stay_days),2) AS avg_los
FROM hospital
GROUP BY severity
ORDER BY avg_los DESC;

2. Which patient type has the highest average LOS?

SELECT patient_type,
       round(AVG(stay_days),1)AS avg_los
FROM hospital
GROUP BY patient_type
ORDER BY avg_los DESC;

3. What is the total revenue and average revenue per severity?

SELECT severity,
       SUM(admission_deposit) AS total_revenue,
       round(AVG(admission_deposit),2) AS avg_revenue
FROM hospital
GROUP BY severity
ORDER BY total_revenue DESC;

4. What is the revenue per day for each severity group?

SELECT severity,
      round(AVG(admission_deposit / NULLIF(stay_days,0)),2) AS revenue_per_day
FROM hospital
GROUP BY severity
ORDER BY revenue_per_day DESC;

5. Which departments have the longest LOS?

SELECT department,
      round(AVG(stay_days),1)AS avg_los,
       COUNT(*) AS patient_count
FROM hospital
GROUP BY department
ORDER BY avg_los DESC;

6. Identify long-stay patients (stay_days > 10).

SELECT *
FROM hospital
WHERE stay_days > 10
ORDER BY stay_days DESC;

7. los by severity

select severity,
round(avg(stay_days),1) as los
from hospital
where stay_days>10
group by severity;


8. Count how many patients fall into LOS buckets (0–3, 4–7, 8–14, 15+).

SELECT 
  CASE
    WHEN stay_days BETWEEN 0 AND 3 THEN '0-3 days'
    WHEN stay_days BETWEEN 4 AND 7 THEN '4-7 days'
    WHEN stay_days BETWEEN 8 AND 14 THEN '8-14 days'
    ELSE '15+ days'
  END AS los_category,
  COUNT(*) AS total_patients
FROM hospital
GROUP BY los_category
ORDER BY MIN(stay_days);

9. What is the average LOS for each ward type?

SELECT ward_type,
      round(AVG(stay_days),2) AS avg_los
FROM hospital
GROUP BY ward_type
ORDER BY avg_los DESC;

10. Which combination of severity + department produces the highest revenue?

SELECT severity,
       department,
       SUM(admission_deposit) AS total_revenue
FROM hospital
GROUP BY severity, department
ORDER BY total_revenue DESC;


11. Find the top 10 revenue-generating cases (patients).

SELECT case_id,
       severity,
       patient_type,
       stay_days,
       admission_deposit
FROM hospital
ORDER BY admission_deposit DESC
LIMIT 10;


