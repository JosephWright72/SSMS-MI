USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSConsultants')
	DROP VIEW dbo.vwAAOSConsultants
GO

CREATE VIEW dbo.vwAAOSConsultants
AS
SELECT	AC.*,
		AC.FirstName + ' ' + AC.LastName AS FullName
FROM	dbo.MI_AAOSConsultants AC

