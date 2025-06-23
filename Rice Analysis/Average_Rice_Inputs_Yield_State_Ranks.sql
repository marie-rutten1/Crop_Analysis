SELECT 
State,
ROUND(AVG(yield), 2) AS AVG_yield,
ROUND(AVG(fertilizer), 2) AS AVG_fertilizer,
ROUND(AVG(pesticide), 2) AS AVG_pesticide,
ROUND(AVG(annual_rainfall), 2) AS AVG_rainfall,
ROW_NUMBER() OVER (ORDER BY AVG(Fertilizer) DESC) AS Fertilizer_Rank,
ROW_NUMBER() OVER (ORDER BY AVG(Pesticide) DESC) AS Pesticide_Rank,
ROW_NUMBER() OVER (ORDER BY AVG(Annual_Rainfall) DESC) AS Rainfall_Rank
FROM crop_yield
WHERE crop = 'Rice'
GROUP BY state
ORDER BY AVG_yield DESC;

