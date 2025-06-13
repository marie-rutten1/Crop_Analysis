SELECT
	State,
	AVG(Area) AS AVG_Area
FROM Crop_Yield
WHERE Crop = 'Rice'
GROUP BY State
ORDER BY AVG_Area DESC;
