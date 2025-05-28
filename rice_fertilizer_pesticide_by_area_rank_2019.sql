WITH Ranked AS (
    SELECT
        State,
        AVG(Fertilizer/Area) AS AVG_Fertilizer_by_Area,
        AVG(Pesticide/Area) AS AVG_Pesticide_by_Area,
        AVG(Yield) AS AVG_Yield,
		ROW_NUMBER() OVER (ORDER BY AVG(Yield) DESC) AS AVG_Yield_Rank,
        ROW_NUMBER() OVER (ORDER BY AVG(Fertilizer/Area) DESC) AS Fertilizer_by_Area_Rank,
        ROW_NUMBER() OVER (ORDER BY AVG(Pesticide/Area) DESC) AS Pesticide_by_Area_Rank
    FROM Crop_Yield
    WHERE Crop = 'Rice' AND Crop_Year = 2019
    GROUP BY State
)
SELECT *
FROM Ranked
WHERE Fertilizer_by_Area_Rank <= 5 OR Pesticide_by_Area_Rank <= 5
ORDER BY Fertilizer_by_Area_Rank, Pesticide_by_Area_Rank;