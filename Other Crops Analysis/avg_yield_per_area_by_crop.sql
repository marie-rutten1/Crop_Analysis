SELECT crop,
AVG(yield/area) as avg_yield_per_area
FROM crop_yield
GROUP BY crop
ORDER BY avg_yield_per_area	DESC;