SELECT	
	State,
	AVG(Yield) AS AVG_Yield
FROM Crop_Yield
WHERE Crop_Year <> 2020
GROUP BY Crop, State
HAVING CROP= 'Rice'
ORDER BY AVG_Yield DESC;
