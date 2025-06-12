SELECT 
	Crop, 
	Crop_Year, 
	ROUND(AVG(Yield), 2) as Average_Yield,
	ROUND(AVG(Annual_Rainfall), 2) AS Average_Rainfall,
	ROW_NUMBER() OVER (ORDER BY AVG(Annual_Rainfall) DESC) AS Rainfall_Rank, 
	ROUND(AVG(Fertilizer), 2) as Average_Fertilizer,
	ROW_NUMBER() OVER (ORDER BY AVG(Fertilizer) DESC) AS Fertilizer_Rank,
	ROUND(AVG(Pesticide), 2) as Average_Pesticide,
	ROW_NUMBER() OVER (ORDER BY AVG(Pesticide) DESC) AS Pesticide_Rank
FROM Crop_Yield
WHERE Crop_Year <> 2020
GROUP BY Crop, Crop_Year
HAVING CROP = 'Rice'
ORDER BY Average_Yield DESC;
