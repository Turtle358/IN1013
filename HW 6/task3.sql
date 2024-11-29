-- Q1
SELECT DISTINCT first_name, surname FROM reststaff
INNER JOIN restbill ON restbill.cust_name = 'Tanya Singh';

-- Q2
SELECT DISTINCT room_date FROM restroom_management
INNER JOIN reststaff ON restroom_management.headwaiter = reststaff.staff_no AND room_date BETWEEN 160201 AND 160301 AND staff_no = 010 AND restroom_management.room_name = 'Green';

-- Q3
SELECT reststaff.first_name, reststaff.surname FROM reststaff WHERE headwaiter = 005;

-- Q4
SELECT restbill.cust_name as 'Customer name', restbill.bill_total as 'Bill total', reststaff.first_name as 'Waiter first name', reststaff.surname as 'Waiter last name' FROM restbill, reststaff
WHERE restbill.waiter_no = reststaff.staff_no ORDER BY bill_total DESC;

-- Q5
SELECT DISTINCT reststaff.first_name, reststaff.surname FROM restbill b1
JOIN reststaff on b1.waiter_no = reststaff.staff_no
JOIN restroom_management rm ON reststaff.headwaiter = rm.headwaiter
WHERE rm.headwaiter IN (
    SELECT DISTINCT b2.waiter_no
    FROM restbill b2
    WHERE b2.bill_no IN (00014, 0017)
    ) AND b1.bill_no NOT IN (00014, 00017);

-- Q6
SELECT reststaff.first_name, reststaff.surname FROM reststaff
INNER JOIN restrest_table ON hw5.restrest_table.room_name = 'Blue'
INNER JOIN restbill ON restbill.waiter_no = reststaff.staff_no
WHERE restbill.bill_date = 1603012;

