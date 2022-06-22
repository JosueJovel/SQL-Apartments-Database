CREATE VIEW Apartment_Stats AS
SELECT DISTINCT Apartments.Apartment_Number,  Apartments.Building_ID, COUNT(Features.Feature) AS Feature_Count, COUNT(Tenants.Tenant_ID) AS Tenant_Count FROM Features
INNER JOIN Apartments ON Features.Building_ID = Apartments.Building_ID
AND Features.Apartment_Number = Apartments.Apartment_Number
LEFT JOIN Tenants ON Apartments.Apartment_Number = Tenants.Apartment_Number
AND Apartments.Building_ID = Tenants.Building_ID
GROUP BY Apartments.Apartment_Number,  Apartments.Building_ID;

SELECT Apartments.Apartment_Number, Apartments.Wood_Type, CONCAT(Apartments.Bedrooms, Apartments.Plan_Letter) AS Floorplan, Floor_Plan.Base_Price + (100 * Apartment_Stats.Feature_Count) AS Rental_Price, Apartment_Stats.Tenant_Count FROM Apartment_Stats
INNER JOIN Apartments ON Apartment_Stats.Building_ID = Apartments.Building_ID
AND Apartment_Stats.Apartment_Number = Apartments.Apartment_Number
INNER JOIN Floor_Plan ON Apartments.Plan_Letter = Floor_Plan.Plan_Letter
AND Apartments.Bedrooms = Floor_Plan.Bedrooms
WHERE CONCAT(Apartments.Apartment_Number, Apartments.Building_ID) IN (Select CONCAT(Apartment_Number, Building_ID) FROM Features
WHERE Feature = 'Balcony')
ORDER BY Floorplan DESC, Apartment_Stats.Tenant_Count DESC;
