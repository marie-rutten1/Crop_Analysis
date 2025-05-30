SELECT state, crop, avg(yield)
FROM crop_yield
GROUP BY state, crop
ORDER BY state, avg(yield) DESC;
