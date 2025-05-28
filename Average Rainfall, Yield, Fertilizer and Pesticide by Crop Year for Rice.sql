SELECT Crop, Crop_Year, ROUND(AVG(Annual_Rainfall), 2) AS Average_Rainfall, ROUND(AVG(Yield), 2) as Average_Yield, ROUND(AVG(Fertilizer), 2) as Average_Fertilizer, ROUND(AVG(Pesticide), 2) as Average_Pesticide 
FROM Crop_Yield
GROUP BY Crop, Crop_Year
HAVING CROP = 'Rice'
ORDER BY Average_Yield DESC;