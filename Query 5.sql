# displays the average age of patients admitted to hospital

SELECT AVG(DATEDIFF(admission_date, dob))/365 AS average_age
FROM admissions_table JOIN  patients_table ON admissions_table.pps_no=patients_table.pps_no