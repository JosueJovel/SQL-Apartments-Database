SELECT Construction_Permit, Floors, Construction_Year, Inspector_First_Name, Inspector_Last_Name, Date_Inspected FROM Buildings NATURAL JOIN New_Buildings NATURAL JOIN Inspections
WHERE Result LIKE 'F'
ORDER BY Date_Inspected ASC;
