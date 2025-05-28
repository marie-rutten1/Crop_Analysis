SELECT
	CROP,
	CORR(Fertilizer, Yield) as Correlation
FROM Crop_Yield
GROUP BY CROP;