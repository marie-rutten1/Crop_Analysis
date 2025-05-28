SELECT
	State,
	CORR(Annual_Rainfall, Yield) AS Correlation
FROM Crop_Yield
GROUP BY Crop, State
HAVING Crop = 'Rice'
ORDER BY Correlation DESC;