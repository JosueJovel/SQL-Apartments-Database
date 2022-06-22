SELECT Nickname, Value, SUM(Area) FROM Buildings NATURAL JOIN Renovated_Buildings NATURAL JOIN Apartments NATURAL JOIN Floor_Plan
GROUP BY Nickname, Value
ORDER BY SUM(Area) ASC;
