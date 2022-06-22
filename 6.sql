SELECT Apartment_Number, Direction, Nickname, SUBSTR(TO_CHAR(Apartment_Number), 1, 1) AS Floor, Base_Price + (100 * COUNT(FEATURE)) AS Rental_Price, Bathroom_Color, Carpet_Color, Kitchen_Color
FROM Empty_Apartments NATURAL JOIN Apartments NATURAL JOIN Features NATURAL JOIN Buildings NATURAL JOIN Floor_Plan
GROUP BY Apartment_Number, Direction, Nickname, Base_Price, Bathroom_Color, Carpet_Color, Kitchen_Color;
