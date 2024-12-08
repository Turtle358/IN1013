-- Q1
CREATE OR REPLACE VIEW samsBills AS
    SELECT rs.first_name,
           rs.surname,
           rb.bill_date,
           rb.cust_name,
           rb.bill_total
FROM restStaff rs
JOIN restBill rb ON rs.staff_no = rb.waiter_no
WHERE rs.first_name = 'Sam' and rs.surname = 'Pitt';

-- Q2
SELECT * FROM samsBills WHERE bill_total > 400;

-- Q3
CREATE VIEW roomTotals AS
SELECT
    rrt.room_name,
    SUM(rb.bill_total) AS total_sum
FROM
    restBill rb
JOIN
    restRest_table rrt ON rb.table_no = rrt.table_no
GROUP BY
    rrt.room_name;

-- Q4
CREATE VIEW teamTotals AS
SELECT
    CONCAT(h.first_name, ' ', h.surname) AS headwaiter_name,
    SUM(rb.bill_total) AS total_sum
FROM
    restBill rb
JOIN
    restStaff w ON rb.waiter_no = w.staff_no
LEFT JOIN
    restStaff h ON w.headwaiter = h.staff_no
GROUP BY
    h.first_name, h.surname;
