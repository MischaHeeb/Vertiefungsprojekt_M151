CREATE PROCEDURE SPDelete(@RegDesc varchar(255)) AS
DECLARE @regionID AS INT;
SELECT @regionID = RegionID FROM Region WHERE RegionDescription = @RegDesc;

DELETE EmployeeTerritories FROM EmployeeTerritories 
INNER JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID 
WHERE RegionID = @regionID;


DELETE FROM Territories WHERE RegionID = @regionID;
DELETE FROM Region WHERE RegionID = @regionID;

GO

CREATE PROCEDURE SPAdd(@RegDesc varchar(255)) AS
INSERT INTO Region(RegionID, RegionDescription) VALUES (
(SELECT MAX(RegionID) FROM Region) + 1, @RegDesc);

GO
