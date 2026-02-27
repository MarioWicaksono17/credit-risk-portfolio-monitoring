# src/data_preprocessing.py

def align_feature_names(df):
    """
    Align database column names with training feature names.
    """
    return df.rename(columns={
        "home_ownership_mortgage": "home_ownership_MORTGAGE",
        "home_ownership_none": "home_ownership_NONE",
        "home_ownership_other": "home_ownership_OTHER",
        "home_ownership_own": "home_ownership_OWN",
        "home_ownership_rent": "home_ownership_RENT",
        "verification_status_source_verified": "verification_status_Source Verified",
        "verification_status_verified": "verification_status_Verified"
    })