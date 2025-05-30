SELECT
	CROP,
	CORR(Pesticide, Yield) AS Correlation
FROM Crop_Yield
GROUP BY CROP;
