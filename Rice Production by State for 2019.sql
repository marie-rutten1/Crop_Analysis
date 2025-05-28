SELECT	
	State,
	AVG(Yield) as AVG_Yield
	FROM Crop_Yield
GROUP BY Crop, Crop_Year, State
HAVING Crop_Year = 2019 AND Crop = 'Rice'
ORDER BY AVG_Yield DESC;