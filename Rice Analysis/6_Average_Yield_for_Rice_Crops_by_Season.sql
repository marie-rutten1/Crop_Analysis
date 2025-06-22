SELECT 
	Season,
	AVG(Yield) AS Avg_Yield
FROM Crop_Yield
WHERE Crop = 'Rice' AND Season <> 'Whole Year'
GROUP BY Season
ORDER BY Avg_Yield DESC;
