USE Northwind;
GO

CREATE PROCEDURE SPDelete(@RegDesc varchar(50)) AS
DECLARE @regionID AS INT;
SELECT @regionID = RegionID FROM Region WHERE RegionDescription = @RegDesc;

DELETE EmployeeTerritories FROM EmployeeTerritories 
INNER JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID 
WHERE RegionID = @regionID;


DELETE FROM Territories WHERE RegionID = @regionID;
DELETE FROM Region WHERE RegionID = @regionID;

GO

CREATE PROCEDURE SPAdd(@RegDesc varchar(50)) AS
INSERT INTO Region(RegionID, RegionDescription) VALUES (
(SELECT MAX(RegionID) FROM Region) + 1, @RegDesc);

GO

CREATE PROCEDURE SPSelect(@RegDesc varchar(50)) AS
SELECT RegionID FROM Region WHERE RegionDescription = @RegDesc;

GO

CREATE PROCEDURE SPUpdate(@RegID int, @RegDesc varchar(255)) AS
UPDATE Region SET RegionDescription = @RegDesc WHERE RegionID = @RegID;

GO
