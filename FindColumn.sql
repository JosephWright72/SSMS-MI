SELECT c.name AS ColName, t.name AS TableName
FROM sys.columns c
    JOIN sys.tables t ON c.object_id = t.object_id
WHERE upper(c.name) LIKE '%KEYNOTE%'
order by 2,1



select * from hardwarestandard