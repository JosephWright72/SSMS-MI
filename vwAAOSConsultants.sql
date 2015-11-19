USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSConsultants')
	DROP VIEW dbo.vwAAOSConsultants
GO

CREATE VIEW dbo.vwAAOSConsultants
AS
SELECT [ID]
      ,[Region]
      ,[Territory]
      ,[LocState]
      ,[FirstName] + ' ' + [LastName] AS FullName
      ,[Company]
      ,[AccessClass]
      ,[Title]
      ,[Address]
      ,[City]
      ,[State]
      ,[Zip]
      ,[Phone]
      ,[Fax]
      ,[Cell]
      ,[Email]
      ,[Username]
      ,[Password]
      ,[Active]
      ,[BIMTeam]
  FROM dbo.[AAOSConsultants]

