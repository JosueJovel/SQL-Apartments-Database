DELETE FROM Features
WHERE Feature IN (
SELECT Feature FROM Features NATURAL JOIN New_Buildings
HAVING COUNT(Building_ID) = (
SELECT MAX(Feature_Count) 
FROM (
SELECT Feature, COUNT(Building_ID) AS Feature_Count FROM Features NATURAL JOIN New_Buildings 
GROUP BY Feature
)
)
GROUP BY Feature
);
