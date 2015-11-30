USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwProducts')
	DROP VIEW dbo.vwProducts
GO

CREATE VIEW dbo.vwProducts
AS
SELECT DISTINCT 
	PID AS ID,
	ProductID,
	Finish,
	ProductDescription,
	Vendor,
	AAVendor,
	CustomisedFlag,
	ProductLine,
	Keynote, 
	[Type],
	SubType,
	Price
FROM dbo.vwAAOSProjectHardware
GO
