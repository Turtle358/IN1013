-- Q1
SELECT SUM(bill_total) AS 'Income' FROM restbill;

-- Q2
SELECT SUM(bill_total) AS 'Feb Income' FROM restbill WHERE bill_date BETWEEN 160201 AND 160301;

-- Q3
SELECT AVG(bill_total) FROM restbill WHERE table_no = 2;

-- Q4
SELECT MIN(no_of_seats), MIN(no_of_seats), MAX(no_of_seats) FROM restrest_table WHERE room_name = 'Blue';

-- Q5
SELECT DISTINCT SUM(restbill.table_no) FROM restbill WHERE waiter_no IN (004, 002);
