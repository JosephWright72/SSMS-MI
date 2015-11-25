USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSProjects')
	DROP VIEW dbo.vwAAOSProjects
GO

CREATE VIEW vwAAOSProjects
AS
SELECT	AP.*
FROM	dbo.MI_AAOSProjects AP 
INNER JOIN	dbo.vwAAOSConsultants vAC
ON	AP.Consultant = vAC.ID
WHERE	vAC.FullName IN ('Colin Black', 'Paul Burrows', 'Andy Stolworthy')
AND		AP.ID > 0
GO
