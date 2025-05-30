SELECT 
	State,
	ROUND(AVG(yield), 2) AS AVG_yield,
	ROUND(AVG(fertilizer), 2) AS AVG_fertilizer,
	ROUND(AVG(pesticide), 2) AS AVG_pesticide
FROM crop_yield
WHERE crop = 'Rice'
GROUP BY state
ORDER BY AVG_yield DESC
LIMIT 5;
