USE master;
GO

--- drop and recreate the 'DataWarehouse' database
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
	BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END;
GO

--- create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
--- create schemas 
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO 

CREATE SCHEMA gold;
GO
