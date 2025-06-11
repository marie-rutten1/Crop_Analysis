SELECT crop, state, avg(annual_rainfall) as average_rainfall, avg(yield) as average_yield
FROM crop_yield
WHERE crop = 'Coconut '
	GROUP BY crop, state
	ORDER BY avg(yield) DESC;
