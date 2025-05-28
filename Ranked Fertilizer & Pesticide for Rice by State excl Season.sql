WITH Ranked AS (
    SELECT
        State,
        AVG(Fertilizer) AS AVG_Fertilizer,
        AVG(Pesticide) AS AVG_Pesticide,
        AVG(Yield) AS AVG_Yield,
        ROW_NUMBER() OVER (ORDER BY AVG(Fertilizer) DESC) AS Fertilizer_Rank,
        ROW_NUMBER() OVER (ORDER BY AVG(Pesticide) DESC) AS Pesticide_Rank
    FROM Crop_Yield
    WHERE Crop = 'Rice' AND Crop_Year = 2019
    GROUP BY State
)
SELECT *
FROM Ranked
WHERE Fertilizer_Rank <= 5 OR Pesticide_Rank <= 5;