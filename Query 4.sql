# a view which shows the no. of times that each medicine has been prescribed and the avg cost of prescriptions

CREATE VIEW medicine_details (medicine_name, no_prescriptions, avg_cost) AS 
SELECT medicines_table.medicine_name, COUNT(reg_no) AS no_prescriptions, AVG(unit_price*quantity) AS avg_cost
FROM medicines_table 
JOIN prescriptions_table ON medicines_table.med_id=prescriptions_table.med_id
GROUP BY medicine_name