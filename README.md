# Hospital LOS Analytics

An end-to-end analytics project focused on understanding **Hospital Length of Stay (LOS)** and **Revenue patterns** using SQL, Python, and Power BI.


## Business Problem
Hospitals need to optimize patient stay duration while maintaining revenue and care quality.  
This project analyzes:
- What drives longer stays
- Which departments and severities contribute most to LOS
- How LOS impacts hospital revenue



## Data Overview
- Patient-level hospital records
- Includes stay duration, severity, department, ward type, and admission revenue
- Data cleaned and prepared for analysis using Python



## Tools & Technologies
- **SQL (MySQL)** – Data querying and aggregation
- **Python (Pandas, Matplotlib, Seaborn)** – Data cleaning & EDA
- **Power BI** – Interactive dashboards and insights



## Project Structure
  hospital_los_analytics/
│
├── sql/ # Business-focused SQL queries
├── python/ # Data cleaning and EDA notebooks
├── powerbi/ # Dashboards and screenshots
├── data/ # Cleaned datasets
├── LICENSE
├── .gitignore
└── README.md

## Dashboards Summary
### 1️⃣ Overview Dashboard (LOS & Revenue)
- Average Length of Stay (LOS)
- Total Patients & Total Revenue
- LOS and Revenue by Severity
- Executive-level summary

### 2️⃣ LOS Analysis Dashboard
- Average LOS by department and severity
- Stay day distribution
- Department-wise stay patterns
- Identification of operational bottlenecks

### 3️⃣ Revenue Analysis Dashboard
- Revenue by department and severity
- Revenue by bed grade
- Revenue vs patient volume
- Financial insight for capacity planning

---

## Key Insights
- Higher severity patients show significantly longer LOS
- Certain departments contribute disproportionately to long stays
- Revenue concentration varies strongly by severity and bed grade
- LOS optimization presents opportunities for cost control without revenue loss

---

## Outcome
This project demonstrates how data analytics can:
- Support hospital operational efficiency
- Improve resource planning
- Enable informed financial decision-making



## License
This project is licensed under the MIT License.

