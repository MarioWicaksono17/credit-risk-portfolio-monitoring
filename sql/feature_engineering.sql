ALTER TABLE lending_club_clean
ADD COLUMN risk_bucket VARCHAR(20);

UPDATE lending_club_clean
SET risk_bucket =
    CASE
        WHEN default_flag = 0 THEN 'Low'
        ELSE 'High'
    END;