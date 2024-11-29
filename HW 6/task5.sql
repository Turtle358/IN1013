-- Q1
SELECT DISTINCT reststaff.first_name, reststaff.surname, restbill.bill_date, COUNT(*) as "Amount of bills taken" FROM restbill
INNER JOIN reststaff on restbill.waiter_no = reststaff.staff_no
INNER JOIN restbill r2 ON r2.bill_date = restbill.bill_date
GROUP BY reststaff.first_name, reststaff.surname, restbill.bill_date
HAVING COUNT(*) > 2;

-- Q2

-- Q3
SELECT restrest_table.room_name, SUM(bill_total) FROM restbill
INNER JOIN restrest_table ON restbill.table_no = restrest_table.table_no
GROUP BY restrest_table.room_name;

-- Q4

