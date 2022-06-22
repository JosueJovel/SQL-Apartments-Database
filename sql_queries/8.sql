SELECT Tenant_First_Name, Tenant_Middle_Initial, Tenant_Last_Name, Credit_Score, Apartment_Number, COUNT(Reference_Phone) AS Reference_Amount FROM Tenants NATURAL JOIN Apartments NATURAL JOIN Tenant_References
HAVING COUNT(Reference_Phone) IN (SELECT MAX(Phone_Count) 
FROM (SELECT COUNT(Reference_Phone) AS Phone_Count FROM Tenant_References NATURAL JOIN Tenants 
GROUP BY Tenant_ID))
GROUP BY Tenant_First_Name, Tenant_Middle_Initial, Tenant_Last_Name, Credit_Score, Apartment_Number;
