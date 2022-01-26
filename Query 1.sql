# gets the names and dates for patients admitted in 2021

SELECT admission_date, patient_fname, patient_lname FROM admissions_table
JOIN patients_table ON admissions_table.pps_no=patients_table.pps_no
WHERE admission_date BETWEEN '2021-01-01' AND '2021-12-20'