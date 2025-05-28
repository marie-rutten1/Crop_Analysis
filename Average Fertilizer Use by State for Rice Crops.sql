SELECT	
	State,
	AVG(Fertilizer/Production) AS Fertilizer_per_Production
	FROM Crop_Yield
GROUP BY Crop, State
HAVING CROP= 'Rice'
ORDER BY Fertilizer_per_Production;