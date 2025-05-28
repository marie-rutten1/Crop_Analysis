SELECT State, SUM(area)
FROM crop_yield
GROUP BY State
ORDER BY SUM(area) DESC;