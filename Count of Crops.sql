SELECT year, 
	unemployment_rate, 
	unemployment_rate - lag(unemployment_rate)
	OVER (ORDER BY year) AS change_in_unemployment_rate
	FROM Unemployment_Rate_NZ;