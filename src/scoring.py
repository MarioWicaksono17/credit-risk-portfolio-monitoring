# src/scoring.py

def generate_pd(model, X):
    """
    Generate Probability of Default (PD).
    """
    return model.predict_proba(X)[:, 1]


def apply_threshold(pd_series, threshold):
    """
    Apply decision threshold to PD.
    """
    return pd_series.apply(
        lambda x: "Reject" if x >= threshold else "Approve"
    )