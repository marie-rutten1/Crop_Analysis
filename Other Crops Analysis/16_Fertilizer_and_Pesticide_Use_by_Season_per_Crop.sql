SELECT	
	Crop,
	Season,
	ROUND(AVG(Fertilizer), 2) AS AVG_Fertilizer,
	ROUND(AVG(Pesticide), 2) AS AVG_Pesticide
FROM Crop_Yield
GROUP BY Crop, Season
HAVING Season NOT IN ('Whole Year')
ORDER BY Crop, Season;
