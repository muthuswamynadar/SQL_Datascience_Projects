# 🏦 Loan Approval Analysis — SQL Project

This project analyzes historical loan application data to extract insights related to loan approvals, applicant demographics, credit history, and risk patterns using SQL.

---

## 📌 Objective

- Analyze loan application data to understand approval trends
- Discover key attributes influencing loan status
- Identify high-risk applications
- Provide actionable insights for financial decision-making

---

## 🛠️ Tools & Technologies

- **Database**: MySQL / PostgreSQL / SQLite
- **Language**: SQL
- **Optional**: Excel / Python (for visualization)

---

## 🧠 Key Concepts Used

- Basic SQL Queries
- Filtering (`WHERE`, `LIKE`, `BETWEEN`)
- Aggregations (`COUNT`, `AVG`, `SUM`)
- `GROUP BY`, `HAVING`
- Joins (if using multiple tables)
- Subqueries and CTEs
- CASE statements for derived columns

---

## 📊 Sample Questions Answered

- What percentage of loans are approved?
- Do married applicants get approved more?
- Is credit history a strong predictor of loan approval?
- What's the average loan amount by education level?
- Identify patterns among rejected applications.

---

## 📝 Sample Insight

> Applicants with a credit history have an 85% higher chance of getting their loan approved compared to those without a credit record.

---

## ▶️ How to Run

```bash
# Clone the repository
git clone https://github.com/yourusername/loan-approval-analysis-sql.git
cd loan-approval-analysis-sql

# Import the data into your SQL environment
# Example for MySQL:
mysql -u root -p < data/loan_data.sql

