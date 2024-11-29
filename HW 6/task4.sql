-- Q1
SELECT restbill.cust_name FROM reststaff
INNER JOIN restbill ON reststaff.staff_no = restbill.waiter_no
WHERE headwaiter = (SELECT staff_no FROM reststaff WHERE first_name = 'Charles')
AND restbill.bill_total > 450.00;

-- Q2
SELECT s.first_name, s.surname
FROM restBill
JOIN restStaff w ON restbill.waiter_no = w.staff_no
JOIN restStaff s ON w.headwaiter = s.staff_no
WHERE restbill.cust_name like 'Nerida%' AND restbill.bill_date = 160111;

-- Q3
SELECT restbill.cust_name FROM restbill
ORDER BY bill_total
LIMIT 5;

-- Q4
SELECT first_name, surname FROM restStaff
WHERE staff_no NOT IN (SELECT DISTINCT waiter_no FROM restBill);

-- Q5
SELECT b.cust_name, s.first_name AS headwaiter_first_name, s.surname AS headwaiter_surname, rm.room_name
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restRoom_management rm ON t.room_name = rm.room_name AND b.bill_date = rm.room_date
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);
