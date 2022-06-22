CREATE VIEW Empty_Apartments AS
SELECT Apartments.Apartment_Number, Apartments.Building_ID FROM Apartments
LEFT JOIN Tenants ON Apartments.Apartment_Number = Tenants.Apartment_Number
AND Apartments.Building_ID = Tenants.Building_ID
WHERE Tenant_ID IS NULL;

UPDATE Apartments
SET Kitchen_Color = 'Fuschia', Carpet_Color = 'Lime', Bathroom_Color = 'Teal'
WHERE CONCAT(Apartment_Number, Building_ID) IN (SELECT CONCAT(Apartment_Number, Building_ID) FROM Empty_Apartments NATURAL JOIN Renovated_Buildings NATURAL JOIN Apartments
WHERE Renovation_Year < (EXTRACT(year FROM CURRENT_DATE) - 2));
