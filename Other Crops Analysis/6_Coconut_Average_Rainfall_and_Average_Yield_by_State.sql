SELECT 
	crop,
	state, 
	ROUND(AVG(annual_rainfall), 2) as average_rainfall, 
	ROUND(AVG(yield), 2) as average_yield
FROM crop_yield
WHERE crop = 'Coconut '
	GROUP BY crop, state
	ORDER BY avg(yield) DESC;
