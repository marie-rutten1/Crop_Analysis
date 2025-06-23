SELECT
  State,
  AVG(Yield) AS avg_yield,
  AVG(Fertilizer / Area) AS avg_fertilizer_per_ha,
  AVG(Pesticide / Area) AS avg_pesticide_per_ha,
  AVG(Production / Fertilizer) AS production_per_unit_fertilizer,
  AVG(Production / Pesticide) AS production_per_unit_pesticide,
  AVG(Annual_Rainfall) AS avg_annual_rainfall,
  AVG(Area) AS avg_area,
  AVG(Production) AS avg_production,
  SUM(Production) AS total_production
FROM Crop_Yield
WHERE Crop = 'Rice'
  AND State IN ('Punjab', 'Tamil Nadu')
GROUP BY State;
