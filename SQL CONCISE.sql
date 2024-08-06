SQL CONCISE

CREATE TABLE creates a new table.
INSERT INTO adds a new row to a table.
SELECT queries data from a table.
ALTER TABLE changes an existing table.
UPDATE edits a row in a table.
DELETE FROM deletes rows from a table.
Constraints add information about how a column can be used.

= equal to
!= not equal to
> greater than
< less than
>= greater than or equal to
<= less than or equal to


IS NULL 
IS NOT NULL

SELECT is the clause we use every time we want to query information from a database.
SELECT AS renames a column or table.
SELECT DISTINCT return unique values.
WHERE is a popular command that lets you filter the results of the query based on conditions that you specify.
LIKE can be a useful operator when you want to compare similar values.
BETWEEN operator is used in a WHERE clause to filter the result set within a certain range.
AND operator is used in a WHERE clause and displays a row if all the conditions are true.
OR operator is used in a WHERE clause and displays a row if any condition is true.

ORDER BY is a clause that indicates you want to sort the result set by a particular column. 
NOTE: ORDER BY always goes after WHERE (if WHERE is present).
DESC is a keyword used in ORDER BY to sort the results in descending order (high to low or Z-A).
ASC is a keyword used in ORDER BY to sort the results in ascending order (low to high or A-Z).
LIMIT specifies the maximum number of rows that the query will return.
CASE creates different outputs.

COUNT(): count the number of rows
SUM(): the sum of the values in a column
MAX()/MIN(): the largest/smallest value
AVG(): the average of the values in a column
ROUND(): round the values in the column

GROUP BY is a clause used with aggregate functions to combine data from one or more columns.
NOTE: GROUP BY statement comes after any WHERE statements, but before ORDER BY or LIMIT.

HAVING limits the results of a query based on an aggregate property.
NOTE: HAVING statement always comes after GROUP BY, but before ORDER BY and LIMIT.

strftime() returns a formatted date, strftime(format, column)
For strftime(__, timestamp):
%Y returns the year (YYYY)
%m returns the month (01-12)
%d returns the day of the month (1-31)
%H returns 24-hour clock (00-23)
%M returns the minute (00-59)
%S returns the seconds (00-59)
if timestamp format is YYYY-MM-DD HH:MM:SS.

JOIN will combine rows from different tables if the join condition is true.

LEFT JOIN will return every row in the left table, and if the join condition is not met, NULL values are used to fill in the columns from the right table.

Primary key is a column that serves a unique identifier for the rows in the table.

Foreign key is a column that contains the primary key to another table.

CROSS JOIN lets us combine all rows of one table with all rows of another table.

UNION stacks one dataset on top of another.

WITH allows us to define one or more temporary tables that can be used in the final query.














