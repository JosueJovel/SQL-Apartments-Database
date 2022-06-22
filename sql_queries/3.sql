CREATE VIEW Empty_Apartments AS
SELECT Apartments.Apartment_Number, Apartments.Building_ID FROM Apartments
LEFT JOIN Tenants ON Apartments.Apartment_Number = Tenants.Apartment_Number
AND Apartments.Building_ID = Tenants.Building_ID
WHERE Tenant_ID IS NULL;

SELECT Value, Nickname, COUNT(Apartment_Number) AS Apartment_Count FROM Buildings NATURAL JOIN New_Buildings NATURAL JOIN Empty_Apartments
WHERE Construction_Year > (EXTRACT(year FROM CURRENT_DATE) - 3)
GROUP BY Value, Nickname
UNION
SELECT Value, Nickname, COUNT(Apartment_Number) AS Apartment_Count FROM Buildings NATURAL JOIN Renovated_Buildings NATURAL JOIN Empty_Apartments
WHERE Renovation_Year > (EXTRACT(year FROM CURRENT_DATE) - 3)
GROUP BY Value, Nickname
ORDER BY Value DESC, Apartment_Count DESC;
