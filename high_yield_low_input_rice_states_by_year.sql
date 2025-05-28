SELECT
	State,
	Crop_Year,
  	AVG(Fertilizer) AS AVG_Fertilizer,
 	AVG(Pesticide) AS AVG_Pesticide,
 	AVG(Yield) AS AVG_Yield
FROM Crop_Yield
WHERE Crop = 'Rice'
GROUP BY State, Crop_Year
HAVING
AVG(Yield) > (SELECT AVG(Yield) FROM Crop_Yield WHERE Crop = 'Rice')
AND AVG(Fertilizer) < (SELECT AVG(Fertilizer) FROM Crop_Yield WHERE Crop = 'Rice')
AND AVG(Pesticide) < (SELECT AVG(Pesticide) FROM Crop_Yield WHERE Crop = 'Rice')
ORDER BY AVG_Yield DESC;