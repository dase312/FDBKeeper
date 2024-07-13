
SELECT EXTRACT(DAY FROM toDate('2017-06-15'));
SELECT EXTRACT (MONTH FROM toDate('2017-06-15'));
SELECT EXTRACT(YEAR FROM toDate('2017-06-15'));
SELECT EXTRACT(SECOND FROM toDateTime('2017-12-31 18:59:58'));
SELECT EXTRACT(MINUTE FROM toDateTime('2017-12-31 18:59:58'));
SELECT EXTRACT(HOUR FROM toDateTime('2017-12-31 18:59:58'));
SELECT EXTRACT(DAY from toDateTime('2017-12-31 18:59:58'));
SELECT extract(MONTH FROM toDateTime('2017-12-31 18:59:58'));
SELECT EXTRACT(year FROM toDateTime('2017-12-31 18:59:58'));


DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (OrderId UInt64, OrderName String, OrderDate DateTime) engine = Log;
insert into Orders values (1,   'Jarlsberg Cheese',    toDateTime('2008-10-11 13:23:44'));
SELECT EXTRACT(YYYY FROM OrderDate) AS OrderYear, EXTRACT(MONTH FROM OrderDate) AS OrderMonth, EXTRACT(DAY FROM OrderDate) AS OrderDay,
     EXTRACT(HOUR FROM OrderDate), EXTRACT(MINUTE FROM OrderDate), EXTRACT(SECOND FROM OrderDate) FROM Orders WHERE OrderId=1;
DROP TABLE Orders;


-- TODO:
-- SELECT EXTRACT(WEEK FROM toDate('2017-06-15'));
-- SELECT EXTRACT(WEEK FROM toDateTime('2017-12-31 18:59:58'));
-- SELECT EXTRACT(MINUTE_SECOND FROM toDateTime('2017-12-31 18:59:58'));
-- SELECT EXTRACT(HOUR_SECOND FROM toDateTime('2017-12-31 18:59:58'));
-- SELECT EXTRACT(HOUR_MINUTE FROM toDateTime('2017-12-31 18:59:58'));
-- SELECT EXTRACT(DAY_SECOND FROM toDateTime('2017-12-31 18:59:58'));
-- SELECT EXTRACT(DAY_MINUTE FROM toDateTime('2017-12-31 18:59:58'));
-- SELECT EXTRACT(DAY_HOUR FROM toDateTime('2017-12-31 18:59:58'));
-- SELECT EXTRACT(YEAR_MONTH FROM toDateTime('2017-12-31 18:59:58'));
-- SELECT EXTRACT(QUARTER FROM toDate('2017-06-15'));
-- SELECT EXTRACT(DAY_SECOND FROM toDate('2017-06-15'));
-- SELECT EXTRACT(DAY_MINUTE FROM toDate('2017-06-15'));
-- SELECT EXTRACT(DAY_HOUR FROM toDate('2017-06-15'));
-- SELECT EXTRACT(YEAR_MONTH FROM toDate('2017-06-15'));
-- SELECT EXTRACT(QUARTER FROM toDateTime('2017-12-31 18:59:58'));

-- Maybe:
-- SELECT EXTRACT (YEAR FROM DATE '2014-08-22') AS RESULT;
