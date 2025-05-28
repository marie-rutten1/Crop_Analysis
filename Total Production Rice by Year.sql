SELECT
	Crop_Year, 	
	SUM(Production) AS Total_Production
FROM Crop_Yield
GROUP BY Crop, Crop_Year
HAVING Crop = 'Rice'
ORDER BY Crop_Year Desc;