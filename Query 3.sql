# calculates the cost of medicine provided to patients

SELECT patient_fname, patient_lname, admission_date, medicine_name, unit_price*quantity AS cost
FROM( medicines_table  INNER JOIN prescriptions_table USING (med_id)  
  INNER JOIN admissions_table USING (reg_no) 
  INNER JOIN patients_table USING (pps_no)
        ) ORDER BY patient_fname;