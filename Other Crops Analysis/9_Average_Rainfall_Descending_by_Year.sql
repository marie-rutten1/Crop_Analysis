SELECT crop_year, ROUND(AVG(annual_rainfall), 2) as AVG_rainfall
FROM crop_yield
GROUP BY CROP_Year
ORDER BY AVG_rainfall DESC;
