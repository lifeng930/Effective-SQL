
-- Ensure you've run Listing 4.021.sql to create the ProgramLogs table

USE Item27Example;
GO

-- Listing 4.22 First attempt to list log messages for a specific day

SELECT L.LogUserID, L.Logger, L.LogLevel, L.LogMessage
FROM ProgramLogs AS L
WHERE L.LogDate = CAST('7/4/2016' AS datetime);

