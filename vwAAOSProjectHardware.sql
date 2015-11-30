USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSProjectHardware')
	DROP VIEW dbo.vwAAOSProjectHardware
GO

CREATE VIEW dbo.vwAAOSProjectHardware
AS
SELECT DISTINCT 
	PH.ID,
	PH.ProjectID,
	PH.DHI,
	PH.[Description],
	PH.HdwTypeDescription,
	PH.Manf,
	PH.Section,
	PH.UOM,
	PH.IDs,
	PH.ImageIDs,
	PH.Preps,
	ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) COLLATE DATABASE_DEFAULT AS ProductID,
	ISNULL(P.Finish, ISNULL(P2.Finish, P3.Finish)) COLLATE DATABASE_DEFAULT AS Finish,
	ISNULL(P.ProductDescription, ISNULL(P2.ProductDescription, P3.ProductDescription)) COLLATE DATABASE_DEFAULT AS ProductDescription,
	ISNULL(P.VendorAbbr, ISNULL(P2.VendorAbbr, P3.VendorAbbr)) COLLATE DATABASE_DEFAULT AS Vendor,
	'AA' AS AAVendor,
	'No' AS CustomisedFlag,
	ISNULL(P.ProductLine, ISNULL(P2.ProductLine, P3.ProductLine)) AS ProductLine,
	PGS.Keynote, 
	CASE WHEN PGS.Level2 IS NOT NULL THEN PGS.Level2 WHEN PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA Modified' ELSE 'Non AA Custom'  END AS [Type],
	CASE WHEN PGS.Level3 IS NOT NULL THEN PGS.Level3 WHEN PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA Modified' ELSE 'Non AA Custom'  END AS SubType,
	CAST(PH.Price AS DECIMAL (19,2)) AS Price,
	CHECKSUM(ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) + ISNULL(CAST(CAST(PH.Price AS DECIMAL(19,2)) AS VARCHAR(MAX)), '-1') COLLATE DATABASE_DEFAULT) AS PID
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
	PH.ID,
	PH.ProjectID,
	PH.DHI,
	PH.[Description],
	PH.HdwTypeDescription,
	PH.Manf,
	PH.Section,
	PH.UOM,
	PH.IDs,
	PH.ImageIDs,
	PH.Preps,
	PH.[Description] AS ProductID,
	PH.Finish,
	PH.HdwTypeDescription ProductDescription,
	PH.Manf AS Vendor,
	CASE WHEN PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA' ELSE 'Non AA' END AS AAVendor,
	'Yes' AS CustomisedFlag,
	NULL AS ProductLine,
	'Unknown' AS Keynote, 
	CASE WHEN PGS.Level2 IS NOT NULL AND PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN PGS.Level2 WHEN PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA Modified' ELSE 'Non AA Custom'  END AS [Type],
	CASE WHEN PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA Modified' ELSE 'Non AA Custom'  END AS SubType,
	CAST(PH.Price AS DECIMAL(19,2)) AS Price,
	CHECKSUM(ISNULL(PH.[Description], '-1') + ISNULL(PH.Finish, '-1') + ISNULL(PH.HdwTypeDescription, '-1') + ISNULL(PH.Manf, '-1') + ISNULL(CASE WHEN PGS.Level2 IS NOT NULL THEN PGS.Level2 WHEN PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA Modified' ELSE 'Non AA Custom'  END, '-1') + ISNULL(CAST(CAST(PH.Price AS DECIMAL(19,2)) AS VARCHAR(MAX)), '-1') COLLATE DATABASE_DEFAULT) AS PID
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