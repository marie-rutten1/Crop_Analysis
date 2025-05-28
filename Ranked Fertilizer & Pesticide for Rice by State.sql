WITH Ranked AS (
	SELECT
		State,
		Season,
		Fertilizer,
		Pesticide,
		Yield,
		ROW_NUMBER() OVER (ORDER BY Fertilizer DESC) AS Fertilizer_Rank,
		ROW_NUMBER() OVER (ORDER BY Pesticide DESC) AS Pesticide_Rank
	FROM Crop_Yield
	WHERE Crop = 'Rice' AND Crop_Year = 2019
)
SELECT *
FROM Ranked
WHERE Fertilizer_Rank <= 5 OR Pesticide_Rank <= 5;