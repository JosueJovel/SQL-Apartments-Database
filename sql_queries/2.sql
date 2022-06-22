INSERT INTO Buildings VALUES ('164', '3', 'Verdun', '6500211.34', '1984');
INSERT INTO Buildings VALUES ('592', '2', 'Passchendaele', '4678845.74', '1988');
INSERT INTO Buildings VALUES ('922', '5', 'Somme', '11679451.93', '1990');
INSERT INTO Buildings VALUES ('230', '4', 'Gallipoli', '9784389.44', '1979');
INSERT INTO Buildings VALUES ('628', '2', 'Argonne', '4734900.29', '1997');
INSERT INTO Buildings VALUES ('465', '4', 'Stalingrad', '9492593.50', '2008');
INSERT INTO Buildings VALUES ('160', '3', 'Monte Cassino', '6943030.44', '2010');
INSERT INTO Buildings VALUES ('371', '2', 'El Alamein', '4794993.70', '2009');
INSERT INTO Buildings VALUES ('581', '2', 'Iwo Jima', '3953434.32', '2012');
INSERT INTO Buildings VALUES ('985', '3', 'Bastogne', '6343022.00', '2011');
INSERT INTO Buildings VALUES ('784', '3', 'Saigon', '6529495.00', '2021');

INSERT INTO New_Buildings VALUES ('985', '493602');
INSERT INTO New_Buildings VALUES ('581', '949294');
INSERT INTO New_Buildings VALUES ('371', '492592');
INSERT INTO New_Buildings VALUES ('160', '572863');
INSERT INTO New_Buildings VALUES ('465', '394295');
INSERT INTO New_Buildings VALUES ('784', '454264');

INSERT INTO Renovated_Buildings VALUES ('164', '2007');
INSERT INTO Renovated_Buildings VALUES ('592', '2011');
INSERT INTO Renovated_Buildings VALUES ('922', '2014');
INSERT INTO Renovated_Buildings VALUES ('230', '2009');
INSERT INTO Renovated_Buildings VALUES ('628', '2010');

INSERT INTO Inspections VALUES ('40024', 'P', 'Wesley', 'Jacobs', '29-NOV-12', '985', 'Thermostat needs tuning, much too cold.');
INSERT INTO Inspections VALUES ('38183', 'P', 'Adam', 'Myers', '15-JAN-17', '581', 'Might want some air purifiers, humid as a jungle in there.');
INSERT INTO Inspections VALUES ('93924', 'P', 'John', 'Brown', '18-MAR-13', '371', 'AC needs to be reinstalled, every room was very hot, and it is not even summer yet.');
INSERT INTO Inspections VALUES ('29943', 'F', 'Guy', 'Manson', '06-APR-16', '922', 'Bad plumbing, dirty water, infestion problem. Smells like death in a lot of rooms.');
INSERT INTO Inspections VALUES ('51195', 'P', 'Bryan', 'Fisher', '05-SEP-15', '592', 'Might want to lay some cement on the ground in front. Gets really muddy out front.');
INSERT INTO Inspections VALUES ('58243', 'F', 'Slim', 'White', '16-MAR-12', '371', 'No Comment');
INSERT INTO Inspections VALUES ('58288', 'F', 'Slim', 'White', '16-JUN-12', '371', 'No Comment');



INSERT INTO Floor_Plan VALUES ('A', '2', '1', '850.00', '800');
INSERT INTO Floor_Plan VALUES ('A', '3', '2', '1020.00', '900');
INSERT INTO Floor_Plan VALUES ('B', '2', '1', '860.00', '820');
INSERT INTO Floor_Plan VALUES ('B', '3', '2', '1120.00', '940');
INSERT INTO Floor_Plan VALUES ('C', '1', '1', '680.00', '650');


INSERT INTO Apartments VALUES ('101', '164', 'N', 'Mahogany', 'Industrial', 'Blue', 'Wine', 'White', 'A', '2');
INSERT INTO Apartments VALUES ('204', '628', 'S', 'Walnut', 'Country', 'Teal', 'Black', 'Fuschia', 'A', '3');
INSERT INTO Apartments VALUES ('313', '160', 'E', 'Cherry', 'Bohemian', 'Navy', 'Honeydew', 'Brown', 'B', '2');
INSERT INTO Apartments VALUES ('421', '465', 'E', 'Oak', 'Oriental', 'Beige', 'Salmon', 'Aquamarine', 'B', '3');
INSERT INTO Apartments VALUES ('512', '922', 'W', 'Maple', 'Floral', 'Purple', 'Plum', 'Lavender', 'C', '1');
INSERT INTO Apartments VALUES ('166', '922', 'S', 'Birch', 'Contemporary', 'Blue', 'Navy', 'Black', 'C', '1');
INSERT INTO Apartments VALUES ('314', '160', 'E', 'Cherry', 'Bohemian', 'Navy', 'Honeydew', 'Brown', 'B', '2');
INSERT INTO Apartments VALUES ('422', '465', 'E', 'Oak', 'Oriental', 'Beige', 'Salmon', 'Aquamarine', 'B', '3');
INSERT INTO Apartments VALUES ('423', '465', 'E', 'Oak', 'Oriental', 'Beige', 'Salmon', 'Aquamarine', 'B', '3');
INSERT INTO Apartments VALUES ('423', '985', 'E', 'Oak', 'Oriental', 'Beige', 'Salmon', 'Aquamarine', 'B', '3');
INSERT INTO Apartments VALUES ('166', '784', 'W', 'Fir', 'Fortnite', 'Brown', 'Green', 'Yellow', 'C', '1');
INSERT INTO Apartments VALUES ('167', '784', 'W', 'Fir', 'Fortnite', 'Brown', 'Green', 'Yellow', 'C', '1');


INSERT INTO Features VALUES ('423', '465', 'Fireplace');
INSERT INTO Features VALUES ('422', '465', 'Sauna');
INSERT INTO Features VALUES ('314', '160', 'Patio');
INSERT INTO Features VALUES ('166', '922', 'Poolside');
INSERT INTO Features VALUES ('166', '922', 'Covered Parking Spot');
INSERT INTO Features VALUES ('314', '160', 'Sauna');
INSERT INTO Features VALUES ('204', '628', 'Balcony');
INSERT INTO Features VALUES ('101', '164', 'Balcony');
INSERT INTO Features VALUES ('314', '160', 'Balcony');
INSERT INTO Features VALUES ('422', '465', 'Balcony');
INSERT INTO Features VALUES ('423', '465', 'Balcony');
INSERT INTO Features VALUES ('423', '985', 'Balcony');
INSERT INTO Features VALUES ('101', '164', 'Sauna');








INSERT INTO Tenants VALUES ('568399', '35000', '350', 'Daisy', 'Baker', '', '101', '164');
INSERT INTO Tenants VALUES ('692853', '69000', '600', 'Scott', 'Foster', 'D', '204', '628');
INSERT INTO Tenants VALUES ('683953', '100000', '750', 'Michael', 'Henderson', 'L', '313', '160');
INSERT INTO Tenants VALUES ('582122', '20000', '320', 'Leo', 'Wood', 'W', '421', '465');
INSERT INTO Tenants VALUES ('429502', '45000', '400', 'Jude', 'Robinson', 'F', '512', '922');
INSERT INTO Tenants VALUES ('548683', '65000', '600', 'Johnson', 'Williams', 'G', '423', '985');



INSERT INTO Tenant_References VALUES ('692853', 'Max Richards', '6675821883', 'MRich123@gmail.com');
INSERT INTO Tenant_References VALUES ('683953', 'Curtis Conway', '6676883286', 'TheConway323@gmail.com');
INSERT INTO Tenant_References VALUES ('582122', 'Jeffery May', '6675843992', 'JeffM399@gmail.com');
INSERT INTO Tenant_References VALUES ('429502', 'Tyrell Pruitt', '8683961139', 'pizzaisawesome1337@gmail.com');
INSERT INTO Tenant_References VALUES ('429502', 'Josh Manson', '6673249600', 'iheartsql@gmail.com');
