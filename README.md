🤖 AI Job Market Analysis  (2022-2026)


📌 Project Overview
This repository contains a comprehensive SQL-based data Analytics project using a Kaggle dataset of 2,000 records regarding the AI job market. The project demonstrates the full journey from raw data ingestion to the implementation of advanced database objects like Stored Procedures, Triggers, and Functions to ensure data integrity and analytical readiness.

To move from a raw CSV format into a structured relational environment, I create a custom database schema in MySQL and utilized the Table Data Import Wizard to manage the data ingestion process. This automated import ensured data type consistency and integrity, allowing me to immediately transition from raw storage to advanced SQL manipulation, including schema enhancements.


Dataset :
<img width="1920" height="1005" alt="Screenshot 2026-05-04 190430" src="https://github.com/user-attachments/assets/d3310182-ea2e-477e-9faa-184d917b58e5" />

ER Diagram:

<img width="1920" height="1012" alt="Screenshot 2026-05-04 191039" src="https://github.com/user-attachments/assets/c671b5bc-a14e-4da6-8051-996e5a7d21c2" />


🛠️ Tech Stack & Skills

Database: MySQL

Techniques: Data Wrangling, Conditional Logic, Performance Optimization, and Automation.

SQL Features: CASE/IF statements, Window Functions, Triggers, Indexes, and Stored Procedures.

🏗️ Project Workflow:

1. Data Ingestion & Schema Modification:
   
Started with a raw dataset containing 2,000 records. I performed schema enhancements to prepare for deeper analysis.

Column Insertion: Added new columns such as salary_Brackets and is_active to handle categorical data.

DataType Optimization: Specifically set the YEAR datatype for efficiency.

2. Exploratory Data Analysis (EDA):
   
Used core SQL clauses to find trends in the AI market:

WHERE & HAVING: Filtered high-growth roles and used HAVING to isolate top-performing skill categories.

GROUP BY: Aggregated data by job_title and top_skill to find market leaders.


<img width="950" height="496" alt="Screenshot 2026-05-04 192451" src="https://github.com/user-attachments/assets/5ba1c5f7-cd2a-428c-aaea-4f754b53841b" />


3. Data Transformation & Cleaning:
   
Used conditional logic to normalize and clean the dataset:

CASE WHEN & IF: Created logic to segment salaries into "Entry," "Medium," and "High" pay brackets.

Safe Update Mode: Managed session-level settings to perform bulk updates securely.


<img width="1920" height="1008" alt="Screenshot 2026-05-04 192255" src="https://github.com/user-attachments/assets/737d3b99-bf80-457b-95b0-36938d5b4ae0" />




4. Advanced Database Objects:
   
I moved beyond simple queries into database automation:

Functions: Created CategorizeAISkill to map specific tools (TensorFlow, PyTorch) into broader domains like "Deep Learning".

Stored Procedures: Developed GetSalaryBracketsStatus to allow users to pull specific market segments instantly.

Triggers: Implemented a BEFORE DELETE trigger to prevent the accidental removal of critical job roles, ensuring 100% data integrity.

Indexes: Created indexes on high-traffic columns (like job_title and salary_USD) to optimize query performance for large-scale analysis.

Functions:

<img width="953" height="496" alt="Screenshot 2026-05-04 192902" src="https://github.com/user-attachments/assets/01ca0c9d-52b8-4392-94bf-a064cc1e3ada" />



Procedure and view:
<img width="953" height="502" alt="Screenshot 2026-05-04 193021" src="https://github.com/user-attachments/assets/95cb99b2-9837-4de3-b7df-058d7efb95f3" />



Triggers and Indexes:
<img width="953" height="499" alt="Screenshot 2026-05-04 193108" src="https://github.com/user-attachments/assets/8d029c54-6665-4229-b5dc-728d4d4536df" />




📈 Key Insights from the 2,000 Records:

Dominant Skills: Python and SQL remain the foundational requirements, while NLP and Deep Learning skills command the highest salary growth through 2026.

Salary Trends: Identified a significant trend in "High Pay" brackets for AI Engineering roles in regions like the USA and Germany.

Market Projection: Data indicates a 15% increase in remote-first AI roles by 2026.


🛠️ Technical Database Insights:

Query Performance via Indexing: By implementing indexes on frequently filtered columns like job_title and salary_USD, I optimized the database to handle the 2,000-record scale efficiently, reducing search latency.

Data Integrity through Automation: Your BEFORE DELETE trigger acts as a fail-safe, ensuring that even if Safe Update Mode is disabled, the dataset's historical integrity remains untouched.

Modular Logic: Using Stored Procedures and Functions (like CategorizeAISkill) allows for a "write once, use everywhere" approach. 

View-Based Reporting: Creating the average_salary_per_job view ensures that the Power BI dashboards always pull pre-calculated, clean data, keeping the visualization layer fast.

📈 Market & Career Insights (2022-2026): 

Salary Bracket Evolution: Your analysis identified that while "Entry Pay" roles are common in 2022-2023, there is a significant shift toward "High Pay" brackets (>$100k USD) as we approach the 2026 projections, specifically in specialized AI roles.

The Skill Premium: While Python and SQL are baseline requirements across all 2,000 records, niche skills like TensorFlow, NLP, and PyTorch are linked to higher salary tiers.

Remote Work Adoption: By filtering the remote column, the data likely shows that AI Engineering and Data Science roles are increasingly "Remote-Yes," offering more global flexibility.

Geographic Centers: The data reveals which countries (like USA, Germany, and India) are emerging as the strongest hubs for AI job volume versus where the highest average salaries are located.

Visualization Process:

1. Extract & Transform (SQL):
   
Raw Data: Imported a dataset containing global AI job roles, salaries, and company types.

Cleaning: Used MySQL to handle missing values, standardize job titles (e.g., find out "Big Tech", "Freelance","Tech Hub"), and filter data for specific regions like Ireland and Germany.

Key Queries: Used queries for calculating average salaries by skill and year-over-year job growth.

2. Load & Visualize (Tableau):
   
To move the data from the database to the dashboard, I followed these steps:

Extraction: Exported the cleaned SQL results as a Master CSV (AI_Job_Market_Trends.csv) to maintain data integrity.

Data Connection: Loaded the CSV into Tableau Public as a live text file connection.

Calculated Fields & Bins: * Created Average Salary Bins ($20k intervals) to analyze pay distribution.

Developed a Metric Switcher using Parameters to toggle between "Average Salary Metric" and "Job Count."

Implemented a Skill Filter with an "All" option for deep-dive analysis.


📈 Interactive Dashboard:

👉 Click Here to View the Live Interactive Dashboard

(https://public.tableau.com/app/profile/varshinie.sivakumar/viz/EmployabilityintheAgeofAI/Dashboard1)

Dashboard 1:

<img width="953" height="533" alt="Screenshot 2026-05-16 065815" src="https://github.com/user-attachments/assets/9884244b-c3d6-460e-bce3-1dc12c0b7c47" />

Dashboard 2:

<img width="960" height="540" alt="Screenshot 2026-05-16 065826" src="https://github.com/user-attachments/assets/0d88e7ae-6c7e-4947-baa1-b8a4279fe6a3" />

<br><br>

🏁 Conclusion:

<br><br>

This project demonstrates my ability to not only query data but to build a robust database environment and connect the Database into visualization Tool, and help me to learn the ETL process from Querying to Visualize. By implementing Triggers and Indexes, I've ensured that this AI Job Market dataset is both high-performing and protected against data loss. 

#DataAnalytics #DataDriven #Analytics #SQL  #Python #PowerBI #Tableau #Excel #DataAnalysis #LearningToCode #DataVisualization #CareerTransition #DataStrategy #BusinessIntelligence #TechTrends
