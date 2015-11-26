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
	PH.Finish,
	PH.HdwTypeDescription,
	PH.Manf,
	PH.KeyNote,
	PH.Section,
	PH.Price,
	PH.UOM,
	PH.IDs,
	PH.ImageIDs,
	PH.Preps,
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
	PH.Finish,
	PH.HdwTypeDescription,
	PH.Manf,
	PH.KeyNote,
	PH.Section,
	PH.Price,
	PH.UOM,
	PH.IDs,
	PH.ImageIDs,
	PH.Preps,
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
INNER JOIN dbo.vwProducts P4
ON P4.ID = CHECKSUM(ISNULL(PH.[Description], '-1') + ISNULL(PH.Finish, '-1') + ISNULL(PH.HdwTypeDescription, '-1') + ISNULL(PH.Manf, '-1') + ISNULL(CASE WHEN PGS.Level2 IS NOT NULL THEN PGS.Level2 WHEN PH.Manf IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA Modified' ELSE 'Non AA Custom'  END, '-1') + ISNULL(CAST(CAST(PH.Price AS DECIMAL(19,2)) AS VARCHAR(MAX)), '-1') COLLATE DATABASE_DEFAULT)
WHERE ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) IS NULL
GO