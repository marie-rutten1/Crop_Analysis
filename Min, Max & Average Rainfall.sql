SELECT
	State, 
	Annual_Rainfall,
	MIN(Annual_Rainfall) OVER() Min_Rainfall,
	MAX(Annual_Rainfall) OVER() MAX_Rainfall,
	AVG(Annual_Rainfall) OVER() Avg_Rainfall
FROM 
	crop_yield
ORDER BY
	annual_rainfall;
