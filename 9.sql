SELECT CONCAT(Bedrooms, Plan_Letter) AS Floorplan, Bedrooms, Bathrooms, Base_Price + (100 * COUNT(Feature)) AS Rental_Price, Area 
FROM Apartments NATURAL JOIN Features NATURAL JOIN Floor_Plan NATURAL JOIN Tenants LEFT JOIN Tenant_References ON Tenants.Tenant_ID = Tenant_References.Tenant_ID
WHERE Reference_Phone IS NULL
GROUP BY Plan_Letter, Bedrooms, Bathrooms, Base_Price, Area
ORDER BY Area DESC;
