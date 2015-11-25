USE MI_STAGING
GO

IF EXISTS(select * FROM sys.tables where name = 'MI_AAOSConsultants')
	DROP TABLE dbo.MI_AAOSConsultants
GO

SELECT * INTO dbo.MI_AAOSConsultants
FROM [ADS_UAT_UK].dbo.AAOSConsultants
GO

ALTER TABLE dbo.MI_AAOSConsultants
ADD CONSTRAINT PK_MI_AAOSConsultants PRIMARY KEY (ID)
GO

IF EXISTS(select * FROM sys.tables where name = 'MI_AAOSProjects')
	DROP TABLE dbo.MI_AAOSProjects
GO

SELECT * INTO dbo.MI_AAOSProjects 
FROM [ADS_UAT_UK].dbo.AAOSProjects
GO

ALTER TABLE dbo.MI_AAOSProjects
ADD CONSTRAINT PK_MI_AAOSProjects PRIMARY KEY (ID)
GO

IF EXISTS(select * FROM sys.tables where name = 'MI_AAOSHWSets')
	DROP TABLE dbo.MI_AAOSHWSets
GO

SELECT * INTO dbo.MI_AAOSHWSets
FROM [ADS_UAT_UK].dbo.AAOSHWSets
GO

ALTER TABLE dbo.MI_AAOSHWSets
ADD CONSTRAINT PK_MI_AAOSHWSets PRIMARY KEY (ID)
GO

IF EXISTS(select * FROM sys.tables where name = 'MI_AAOSDoors')
	DROP TABLE dbo.MI_AAOSDoors
GO

SELECT * INTO dbo.MI_AAOSDoors
FROM [ADS_UAT_UK].dbo.AAOSDoors
GO

ALTER TABLE dbo.MI_AAOSDoors
ADD CONSTRAINT PK_MI_AAOSDoors PRIMARY KEY (ID)
GO

IF EXISTS(select * FROM sys.tables where name = 'MI_AAOSProjectHardware')
	DROP TABLE dbo.MI_AAOSProjectHardware
GO

SELECT * INTO dbo.MI_AAOSProjectHardware
FROM [ADS_UAT_UK].dbo.AAOSProjectHardware
GO
