-- Default Rate per Year
CREATE OR REPLACE VIEW default_rate_by_year AS
SELECT
    issue_year,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS total_defaults,
    ROUND(AVG(default_flag)::numeric, 4) AS default_rate
FROM lending_club_clean
GROUP BY issue_year
ORDER BY issue_year;

-- Exposure by Term
CREATE OR REPLACE VIEW exposure_by_term AS
SELECT
    term,
    COUNT(*) AS total_loans,
    SUM(loan_amnt) AS total_exposure,
    ROUND(AVG(default_flag)::numeric, 4) AS default_rate
FROM lending_club_clean
GROUP BY term;

-- Default Rate by Income Segment
CREATE OR REPLACE VIEW default_by_income_segment AS
SELECT
    CASE
        WHEN annual_inc < 40000 THEN 'Low Income'
        WHEN annual_inc < 80000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_segment,
    COUNT(*) AS total_loans,
    ROUND(AVG(default_flag)::numeric, 4) AS default_rate
FROM lending_club_clean
GROUP BY income_segment;

-- 
CREATE OR REPLACE VIEW portfolio_risk_summary AS
SELECT
    s.risk_bucket,
    COUNT(*) AS total_loans,
    ROUND(AVG(l.default_flag)::numeric, 4) AS actual_default_rate,
    ROUND(AVG(s.pd_score)::numeric, 4) AS avg_predicted_pd
FROM fact_scoring s
JOIN lending_club_clean l
    ON s.loan_id = l.loan_id
GROUP BY s.risk_bucket;