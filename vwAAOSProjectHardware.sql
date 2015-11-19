USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSProjectHardware')
	DROP VIEW dbo.vwAAOSProjectHardware
GO

CREATE VIEW dbo.vwAAOSProjectHardware
AS
SELECT [ID]
      ,[ProjectID]
      ,[DHI]
      ,[Item]
      ,[Description]
      ,[Finish]
      ,[HdwTypeDescription]
      ,[Manf]
      ,[KeyNote]
      ,[Section]
      ,[Price]
      ,[UOM]
      ,[IDs]
      ,[ImageIDs]
      ,[Preps]
	  ,REPLACE([Description], Finish,'') AS ProductID
  FROM [dbo].[AAOSProjectHardware]