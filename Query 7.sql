# displays all patients whose surname begins with P, R or T

SELECT * FROM patients_table
WHERE patient_lname REGEXP '^(P|R|T)'