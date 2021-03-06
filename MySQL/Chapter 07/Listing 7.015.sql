-- Ensure Item44Structure.sql has been run first to be consistent with answers in the book.

-- Listing 7.16 Get a list of tables without a primary key

SELECT T.TABLE_NAME 
FROM 
(SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_SCHEMA = 'Item44Example'
AND TABLE_TYPE = 'BASE TABLE') AS T
LEFT JOIN 
(SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'Item44Example'
AND CONSTRAINT_TYPE = 'PRIMARY KEY') AS TC
ON T.TABLE_NAME = TC.TABLE_NAME
WHERE TC.TABLE_NAME IS NULL;
