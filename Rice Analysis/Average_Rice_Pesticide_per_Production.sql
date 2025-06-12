SELECT	
	State,
	AVG(Pesticide/Production) AS Pesticide_per_Production
	FROM Crop_Yield
GROUP BY Crop, State
HAVING CROP= 'Rice'
ORDER BY Pesticide_per_Production;
