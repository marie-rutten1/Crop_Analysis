SELECT
	CROP,
	CORR(Annual_Rainfall, Yield) AS Correlation
FROM Crop_Yield
GROUP BY CROP;
