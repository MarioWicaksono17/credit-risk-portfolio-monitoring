UPDATE lending_club_clean
SET pub_rec_bankruptcies = 0
WHERE pub_rec_bankruptcies IS NULL;