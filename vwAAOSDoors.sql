USE MI_STAGING
GO

IF EXISTS(select * FROM sys.views where name = 'vwAAOSDoors')
	DROP VIEW dbo.vwAAOSDoors
GO

CREATE VIEW dbo.vwAAOSDoors
AS
SELECT	AD.*
FROM	dbo.MI_AAOSDoors AD
INNER JOIN dbo.vwAAOSProjects vAP ON AD.ProjectID = vAP.ID
GO
