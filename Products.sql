USE MI_STAGING
GO

IF EXISTS(select * FROM sys.tables where name = 'Products')
	DROP TABLE dbo.Products
GO

CREATE TABLE dbo.Products (ID INT IDENTITY (1,1), Vendor VARCHAR(MAX), VendorAbbr VARCHAR(MAX), CountryCode VARCHAR(MAX), ProductID VARCHAR(MAX), ProductDescription VARCHAR(MAX), ProductType VARCHAR(MAX), ProductLine VARCHAR(MAX), Finish VARCHAR(MAX), UOM VARCHAR(MAX), Zero81 VARCHAR(MAX), PkQtyForPricing VARCHAR(MAX), Keynote VARCHAR(MAX))

GO

DELETE FROM dbo.Products
GO

