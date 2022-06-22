CREATE TABLE Buildings (
	Building_ID INTEGER NOT NULL,
	Floors INTEGER CHECK (Floors > 0),
	Nickname VARCHAR2(20) NOT NULL,
	Value NUMBER (15, 2) CHECK (Value >= 0),
	Construction_Year INTEGER CHECK (Construction_Year > 0),
	PRIMARY KEY (Building_ID)
);

CREATE TABLE New_Buildings (
	Building_ID INTEGER NOT NULL,
	Construction_Permit INTEGER NOT NULL,
	FOREIGN KEY (Building_ID) REFERENCES Buildings(Building_ID),
	PRIMARY KEY (Building_ID, Construction_Permit)
);

CREATE TABLE Renovated_Buildings (
	Building_ID INTEGER NOT NULL,
	Renovation_Year INTEGER CHECK (Renovation_Year > 0),
	FOREIGN KEY (Building_ID) REFERENCES Buildings(Building_ID),
	PRIMARY KEY (Building_ID, Renovation_Year)
);

CREATE TABLE Inspections (
	Inspection_ID INTEGER NOT NULL,
	Result CHAR(1) CHECK(Result = 'P' OR Result = 'F'),
	Inspector_First_Name VARCHAR2(50) NOT NULL,
	Inspector_Last_Name VARCHAR2(50) NOT NULL,
	Date_Inspected DATE NOT NULL,
	Building_ID INTEGER NOT NULL,
	Comments LONG DEFAULT 'None',
	FOREIGN KEY (Building_ID) REFERENCES Buildings(Building_ID),
	PRIMARY KEY (Inspection_ID)
);

CREATE TABLE Floor_Plan (
	Plan_Letter CHAR(1) NOT NULL,
	Bedrooms INTEGER CHECK(Bedrooms > 0),
	Bathrooms INTEGER CHECK(Bathrooms > 0),
	Base_Price NUMBER (7, 2) CHECK(Base_Price > 0),
	Area INTEGER CHECK(Area > 0),
	PRIMARY KEY (Plan_Letter, Bedrooms)
);


CREATE TABLE Apartments (
	Apartment_Number NUMBER(3, 0) NOT NULL,
	Building_ID INTEGER NOT NULL,
	Direction CHAR(1) CHECK(Direction IN ('N', 'S', 'E', 'W')),
	Wood_Type VARCHAR2(20) NOT NULL,
	Wallpaper_Style VARCHAR2(20) NOT NULL,
	Bathroom_Color VARCHAR2(20) NOT NULL,
	Carpet_Color VARCHAR2(20) NOT NULL,
	Kitchen_Color VARCHAR2(20) NOT NULL,
	Plan_Letter CHAR(1) NOT NULL,
	Bedrooms INTEGER NOT NULL,
	FOREIGN KEY (Building_ID) REFERENCES Buildings(Building_ID),
	FOREIGN KEY (Plan_Letter, Bedrooms) REFERENCES Floor_Plan(Plan_Letter, Bedrooms),
	PRIMARY KEY (Apartment_Number, Building_ID)
);




CREATE TABLE Features (
	Apartment_Number NUMBER(3, 0) NOT NULL,
	Building_ID INTEGER NOT NULL,
	Feature VARCHAR2(50) NOT NULL,
	FOREIGN KEY (Apartment_Number, Building_ID) REFERENCES Apartments,
	PRIMARY KEY (Apartment_Number, Building_ID, Feature)
);

CREATE TABLE Tenants (
	Tenant_ID INTEGER NOT NULL,
	Income NUMBER(11, 2) CHECK(Income > 0),
	Credit_Score INTEGER CHECK(Credit_Score > 0),
	Tenant_First_Name VARCHAR2(50) NOT NULL,
	Tenant_Last_Name VARCHAR2(50) NOT NULL,
	Tenant_Middle_Initial VARCHAR(1) DEFAULT '',
	Apartment_Number INTEGER NOT NULL,
	Building_ID INTEGER NOT NULL,
	FOREIGN KEY (Apartment_Number, Building_ID) REFERENCES Apartments,
	PRIMARY KEY (Tenant_ID)	
);

CREATE TABLE Tenant_References (
	Tenant_ID INTEGER NOT NULL,
	Reference_Name VARCHAR2(50) NOT NULL,
	Reference_Phone INTEGER NOT NULL,
	Reference_Email VARCHAR2(50) NOT NULL,
	FOREIGN KEY (Tenant_ID) REFERENCES Tenants(Tenant_ID),
	PRIMARY KEY (Tenant_ID, Reference_Phone)
);
