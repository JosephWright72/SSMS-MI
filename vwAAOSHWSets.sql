USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSHWSets')
	DROP VIEW dbo.vwAAOSHWSets
GO

CREATE VIEW dbo.vwAAOSHWSets
AS
SELECT DISTINCT 
	   AH.[ID]
	  ,[ProjectID]
      ,[SetName]
      ,[SetDesc]
	  ,[DHI]
      ,[Product]
      ,[Qty]
      ,[Leaf]
      ,AH.[Description]
      ,AH.[Finish]
      ,[TypeDescription]
      ,[Mfr]
      ,[Price]
      ,[IDs]
      ,[ImageIDs]
      ,[Size]
      ,[OriginalSet]
      ,[HWComplete]
	  ,REPLACE(AH.[Description], AH.Finish,'') AS ProductID
	  ,CASE WHEN AH.Mfr IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') THEN 'AA' ELSE 'Non AA' END AS AAVendor
	  ,CASE WHEN AH.Mfr IN ('AB', 'AR', 'AS', 'AY', 'NM', 'TR', 'UN', 'YL') AND ISNULL(P.ProductID, '') = '' THEN 'Yes' ELSE 'No' END AS CustomisedFlag
	  ,ISNULL(P.ID, CHECKSUM(REPLACE(AH.[Description], AH.Finish,''))) AS PSID
FROM [dbo].[AAOSHWSets] AH
LEFT JOIN [dbo].[Products] P
ON REPLACE([Description], AH.Finish,'') COLLATE DATABASE_DEFAULT = P.ProductID COLLATE DATABASE_DEFAULT
INNER JOIN dbo.vwAAOSProjects vAP ON AH.ProjectID = vAP.ID
WHERE ISNULL(AH.[Description],'') <> ''


