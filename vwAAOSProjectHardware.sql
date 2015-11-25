USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSProjectHardware')
	DROP VIEW dbo.vwAAOSProjectHardware
GO

CREATE VIEW dbo.vwAAOSProjectHardware
AS
SELECT DISTINCT 
	PH.*,
	CHECKSUM(ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) + ISNULL(PH.Price, '-1') COLLATE DATABASE_DEFAULT) AS PID
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
INNER JOIN dbo.vwProducts P4
ON P4.ID = CHECKSUM(ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) + ISNULL(PH.Price, '-1') COLLATE DATABASE_DEFAULT)
WHERE ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) IS NOT NULL
UNION
SELECT DISTINCT 
	PH.*,
	CHECKSUM(ISNULL(PH.[Description], '-1') + ISNULL(PH.Finish, '-1') + ISNULL(PH.HdwTypeDescription, '-1') + ISNULL(PH.Manf, '-1') + ISNULL(PGS.Level2, '-1') + ISNULL(PH.Price, '-1') COLLATE DATABASE_DEFAULT) AS PID
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
ON P4.ID = CHECKSUM(ISNULL(PH.[Description], '-1') + ISNULL(PH.Finish, '-1') + ISNULL(PH.HdwTypeDescription, '-1') + ISNULL(PH.Manf, '-1') + ISNULL(PGS.Level2, '-1') + ISNULL(PH.Price, '-1') COLLATE DATABASE_DEFAULT)
WHERE ISNULL(P.ProductID, ISNULL(P2.ProductID, P3.ProductID)) IS NULL
/*SELECT	PH.*,
		CASE WHEN ISNULL(Item, '') = '' THEN '' ELSE SUBSTRING(Item, 1, CHARINDEX('-', Item)-1) END AS ProductType
FROM	dbo.MI_AAOSProjectHardware PH
INNER JOIN dbo.vwAAOSProjects vAP ON PH.ProjectID = vAP.ID
WHERE ISNULL(PH.[Description],'') <> ''*/
GO