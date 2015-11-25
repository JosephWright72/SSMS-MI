USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwProducts')
	DROP VIEW dbo.vwProducts
GO

CREATE VIEW dbo.vwProducts
AS
SELECT DISTINCT 
	CHECKSUM(ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) + ISNULL(PH.Price, '-1') COLLATE DATABASE_DEFAULT) AS ID,
	ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) COLLATE DATABASE_DEFAULT AS ProductID,
	ISNULL(P.Finish, ISNULL(P2.Finish, P3.Finish)) COLLATE DATABASE_DEFAULT AS Finish,
	ISNULL(P.ProductDescription, ISNULL(P2.ProductDescription, P3.ProductDescription)) COLLATE DATABASE_DEFAULT AS ProductDescription,
	ISNULL(P.VendorAbbr, ISNULL(P2.VendorAbbr, P3.VendorAbbr)) COLLATE DATABASE_DEFAULT AS Vendor,
	'AA' AS AAVendor,
	'No' AS CustomisedFlag,
	ISNULL(P.ProductLine, ISNULL(P2.ProductLine, P3.ProductLine)) AS ProductLine,
	PGS.Keynote, 
	ISNULL(PGS.Level2, 'Unknown') AS [Type],
	PGS.Level3 AS SubType,
	CAST(PH.Price AS DECIMAL (10,2)) AS Price
FROM dbo.MI_AAOSProjectHardware PH
LEFT OUTER JOIN dbo.Products P
ON PH.[Description] COLLATE DATABASE_DEFAULT = P.ProductID COLLATE DATABASE_DEFAULT
LEFT OUTER JOIN [dbo].[Products] P2
ON REPLACE(PH.[Description], PH.Finish,'') = P2.ProductID COLLATE DATABASE_DEFAULT
LEFT OUTER JOIN [dbo].[Products] P3
ON PH.[Description] + '-' + PH.Finish = P3.ProductID COLLATE DATABASE_DEFAULT
INNER JOIN dbo.vwAAOSProjects vAP 
ON PH.ProjectID = vAP.ID
LEFT OUTER JOIN dbo.ProductGroupStructure PGS
ON ISNULL(P.Keynote, ISNULL(P2.Keynote, P3.Keynote)) = PGS.Keynote
WHERE ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) IS NOT NULL
UNION
SELECT DISTINCT 
	CHECKSUM(ISNULL(PH.[Description], '-1') + ISNULL(PH.Finish, '-1') + ISNULL(PH.HdwTypeDescription, '-1') + ISNULL(PH.Manf, '-1') + ISNULL(PGS.Level2, '-1') + ISNULL(PH.Price, '-1') COLLATE DATABASE_DEFAULT) AS ID,
	PH.[Description] AS ProductID,
	PH.Finish,
	PH.HdwTypeDescription ProductDescription,
	PH.Manf AS Vendor,
	CASE WHEN PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA' ELSE 'Non AA' END AS AAVendor,
	'Yes' AS CustomisedFlag,
	NULL AS ProductLine,
	'Unknown' AS Keynote, 
	ISNULL(PGS.Level2, 'Unknown') AS [Type],
	'Unknown' AS SubType,
	CAST(PH.Price AS DECIMAL(10,2)) AS Price
FROM dbo.MI_AAOSProjectHardware PH
INNER JOIN dbo.vwAAOSProjects vAP 
ON PH.ProjectID = vAP.ID
LEFT OUTER JOIN dbo.Products P
ON PH.[Description] = P.ProductID COLLATE DATABASE_DEFAULT
LEFT OUTER JOIN [dbo].[Products] P2
ON REPLACE(PH.[Description], PH.Finish,'') = P2.ProductID COLLATE DATABASE_DEFAULT
LEFT OUTER JOIN [dbo].[Products] P3
ON PH.[Description] + '-' + PH.Finish = P3.ProductID COLLATE DATABASE_DEFAULT
LEFT OUTER JOIN dbo.ProductGroupStructure PGS
ON SUBSTRING(PH.Item, 1, CHARINDEX('-', PH.Item)-1) = PGS.ProductType COLLATE DATABASE_DEFAULT
WHERE ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) IS NULL
GO