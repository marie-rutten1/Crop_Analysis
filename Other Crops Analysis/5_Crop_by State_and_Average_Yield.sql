SELECT state, crop, avg(yield) AS average_yield
FROM crop_yield
GROUP BY state, crop
ORDER BY state, average_yield DESC;
