# src/portfolio_logic.py

import pandas as pd

def create_risk_bucket(pd_series):
    """
    Create quantile-based risk segmentation.
    """
    return pd.qcut(
        pd_series,
        q=[0, 0.4, 0.7, 1.0],
        labels=["Low Risk", "Medium Risk", "High Risk"]
    )