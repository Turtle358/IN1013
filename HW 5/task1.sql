-- Q1
SELECT bill_date, bill_total FROM restbill WHERE cust_name = 'Bob Crow';

-- Q2
SELECT DISTINCT cust_name FROM restbill WHERE cust_name LIKE '%Smith' ORDER BY cust_name;

-- Q3
SELECT DISTINCT cust_name FROM RESTBILL WHERE cust_name LIKE '% C%';

-- Q4
SELECT first_name, surname FROM reststaff WHERE headwaiter IS NOT NULL;

-- Q5
SELECT DISTINCT restbill.bill_date FROM restbill WHERE bill_total > 0 ORDER BY bill_date;