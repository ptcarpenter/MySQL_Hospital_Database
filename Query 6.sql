# this query uses a boolean subquery to show all patients that have been prescribed a particular medicine

SELECT admissions_table.pps_no, patient_fname, patient_lname, admission_date 
FROM patients_table 
JOIN admissions_table ON admissions_table.pps_no=patients_table.pps_no
WHERE admissions_table.reg_no IN (SELECT reg_no FROM prescriptions_table 
		WHERE med_id = '1324') ORDER BY patient_fname;