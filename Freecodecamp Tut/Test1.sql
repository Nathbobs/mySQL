CREATE TABLE online_bookstore(
     BOOKS VARCHAR(30) PRIMARY KEY,
     Authors VARCHAR(30),
     Customers VARCHAR(30),
     Yr INT

);
ALTER TABLE online_bookstore ADD Customer_ID DECIMAL(2,1);
ALTER TABLE online_bookstore DROP COLUMN Yr;

INSERT INTO online_bookstore VALUES('Beauty and the beast', 'Author A', 'Customer Y', 5.0)
SELECT * FROM online_bookstore;


DESCRIBE online_bookstore;
