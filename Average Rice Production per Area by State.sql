SELECT 
	State,
	AVG(Production/Area) AS AVG_Production_per_Area
FROM Crop_Yield
WHERE Crop = 'Rice'
GROUP BY State
ORDER BY AVG_Production_per_Area DESC;