CREATE FUNCTION CalculateAge(Date_of_Birth IN DATE) 
RETURN NUMBER IS
BEGIN
	RETURN(TRUNC((SYSDATE - Date_of_Birth) / 365));	
END;

DROP FUNCTION CalculateAge;