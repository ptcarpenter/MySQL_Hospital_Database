# shows the number of times that a patient has previously visited the hospital

SELECT admissions_table.pps_no, patient_fname, patient_lname, COUNT(admissions_table.pps_no) AS no_visits
FROM admissions_table
JOIN patients_table ON admissions_table.pps_no=patients_table.pps_no
GROUP BY pps_no
ORDER BY no_visits DESC;