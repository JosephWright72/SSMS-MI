USE MI_STAGING
GO

IF EXISTS(select * FROM sys.tables where name = 'AAOSConsultants')
	DROP TABLE dbo.AAOSConsultants
GO

SELECT * INTO dbo.AAOSConsultants
FROM [ADS_UAT_UK].dbo.AAOSConsultants
GO

ALTER TABLE dbo.AAOSConsultants
ADD CONSTRAINT PK_AAOSConsultants PRIMARY KEY (ID)
GO

IF EXISTS(select * FROM sys.tables where name = 'AAOSProjects')
	DROP TABLE dbo.AAOSProjects
GO

SELECT * INTO dbo.AAOSProjects 
FROM [ADS_UAT_UK].dbo.AAOSProjects
GO

ALTER TABLE dbo.AAOSProjects
ADD CONSTRAINT PK_AAOSProjects PRIMARY KEY (ID)
GO

IF EXISTS(select * FROM sys.tables where name = 'AAOSHWSets')
	DROP TABLE dbo.AAOSHWSets
GO

SELECT * INTO dbo.AAOSHWSets
FROM [ADS_UAT_UK].dbo.AAOSHWSets
GO

ALTER TABLE dbo.AAOSHWSets
ADD CONSTRAINT PK_AAOSHWSets PRIMARY KEY (ID)
GO

IF EXISTS(select * FROM sys.tables where name = 'AAOSDoors')
	DROP TABLE dbo.AAOSDoors
GO

SELECT * INTO dbo.AAOSDoors
FROM [ADS_UAT_UK].dbo.AAOSDoors
GO

ALTER TABLE dbo.AAOSDoors
ADD CONSTRAINT PK_AAOSDoors PRIMARY KEY (ID)
GO

IF EXISTS(select * FROM sys.tables where name = 'AAOSProjectHardware')
	DROP TABLE dbo.AAOSProjectHardware
GO

SELECT * INTO dbo.AAOSProjectHardware
FROM [ADS_UAT_UK].dbo.AAOSProjectHardware
GO
