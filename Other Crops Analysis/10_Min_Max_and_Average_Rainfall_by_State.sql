SELECT
	State, 
	MIN(Annual_Rainfall) AS Min_Rainfall,
	MAX(Annual_Rainfall) AS MAX_Rainfall,
	ROUND(AVG(Annual_Rainfall), 2) AS Avg_Rainfall
FROM 
	crop_yield
GROUP BY 
	State
ORDER BY
	AVG_Rainfall DESC;
