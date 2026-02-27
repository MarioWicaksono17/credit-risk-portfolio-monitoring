-- schema.sql
-- Credit Risk Data Warehouse - Clean Lending Club Table

DROP TABLE IF EXISTS lending_club_clean;

CREATE TABLE lending_club_clean (
    loan_amnt DOUBLE PRECISION,
    term INTEGER,
    int_rate DOUBLE PRECISION,
    installment DOUBLE PRECISION,
    emp_length DOUBLE PRECISION,
    annual_inc DOUBLE PRECISION,
    dti DOUBLE PRECISION,
    open_acc DOUBLE PRECISION,
    pub_rec DOUBLE PRECISION,
    revol_bal DOUBLE PRECISION,
    revol_util DOUBLE PRECISION,
    total_acc DOUBLE PRECISION,
    mort_acc DOUBLE PRECISION,
    pub_rec_bankruptcies DOUBLE PRECISION,
    default_flag INTEGER,
    issue_year INTEGER,
    credit_history_years INTEGER,

    home_ownership_MORTGAGE BOOLEAN,
    home_ownership_NONE BOOLEAN,
    home_ownership_OTHER BOOLEAN,
    home_ownership_OWN BOOLEAN,
    home_ownership_RENT BOOLEAN,

    verification_status_Source_Verified BOOLEAN,
    verification_status_Verified BOOLEAN,

    purpose_credit_card BOOLEAN,
    purpose_debt_consolidation BOOLEAN,
    purpose_educational BOOLEAN,
    purpose_home_improvement BOOLEAN,
    purpose_house BOOLEAN,
    purpose_major_purchase BOOLEAN,
    purpose_medical BOOLEAN,
    purpose_moving BOOLEAN,
    purpose_other BOOLEAN,
    purpose_renewable_energy BOOLEAN,
    purpose_small_business BOOLEAN,
    purpose_vacation BOOLEAN,
    purpose_wedding BOOLEAN,

    initial_list_status_w BOOLEAN
);