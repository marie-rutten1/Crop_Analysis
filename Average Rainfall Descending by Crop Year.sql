SELECT crop_year, AVG(annual_rainfall) as AVG_rainfall
FROM crop_yield
GROUP BY CROP_Year
ORDER BY AVG_rainfall DESC;