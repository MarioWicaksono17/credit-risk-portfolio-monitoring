ALTER TABLE lending_club_clean
ADD COLUMN loan_id SERIAL PRIMARY KEY;

DROP TABLE IF EXISTS fact_scoring;

CREATE TABLE fact_scoring (
    scoring_id SERIAL PRIMARY KEY,
    loan_id INTEGER REFERENCES lending_club_clean(loan_id),
    pd_score DOUBLE PRECISION,
    decision VARCHAR(20),
    risk_bucket VARCHAR(20),
    scoring_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);