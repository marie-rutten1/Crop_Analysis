SELECT	
	Crop,
	Season,
	AVG(Fertilizer) AS AVG_Fertilizer,
	AVG(Pesticide) AS AVG_Pesticide
FROM Crop_Yield
GROUP BY Crop, Season
HAVING Season NOT IN ('Whole Year')
ORDER BY Crop, Season;
