USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSProjects')
	DROP VIEW dbo.vwAAOSProjects
GO

CREATE VIEW vwAAOSProjects
AS
SELECT AP.[ID]
      ,[UserID]
      ,[ProjectName]
      ,[ArchProjectID]
      ,[Consultant]
      ,AP.[City]
      ,AP.[State]
      ,AP.[Region]
      ,[StartDate]
      ,[DueDate]
      ,[EndDate]
      ,[LastDate]
      ,[Archive]
      ,[Units]
      ,[Architect]
      ,[Contractor]
      ,[Owner]
      ,[Description]
      ,[JobName]
      ,[Address1]
      ,[Address2]
      ,[Address3]
      ,AP.[Zip]
      ,[Country]
      ,[DodgeNo]
      ,[AuthUsers]
      ,[GuideSpec]
      ,[ProjectType]
      ,[Rating]
      ,[ApprovedProducts]
      ,[Notes]
      ,[EmailExport]
      ,[ArchConsultant]
      ,[DateExported]
      ,[LibraryProject]
      ,[DateUpdated]
      ,[LastUser]
      ,[Updating]
      ,[IsArchitectsProject]
      ,[ExportToRevit]
      ,[LocalProjectPath]
      ,[PublicArchLibrary]
      ,[OriginalProjectID]
      ,[RevisionNumber]
      ,[Revised]
      ,[MarketSegment]
      ,[ReFinalized]
      ,[FileList]
      ,[SalesPoint]
      ,[ProjectUserType]
      ,[BIMConsultant]
      ,[KeyingSystem]
      ,[SnapProject]
  FROM dbo.[AAOSProjects] AP 
  JOIN dbo.vwAAOSConsultants vAC
  ON AP.Consultant = vAC.ID
  WHERE vAC.FullName IN ('Colin Black', 'Paul Burrows', 'Andy Stolworthy')
  GO