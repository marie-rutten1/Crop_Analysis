SELECT state, crop_year, SUM(area) as total_area, sum(production) as total_production
FROM crop_yield
GROUP BY state, crop_year
ORDER BY state, crop_year;
