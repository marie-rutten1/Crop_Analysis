SELECT	
	State,
	AVG(Production) AS AVG_Production
	FROM Crop_Yield
GROUP BY Crop, State
HAVING CROP= 'Rice'
ORDER BY AVG_Production DESC;
