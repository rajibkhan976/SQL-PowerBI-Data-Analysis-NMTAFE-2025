EXEC sp_rename '[project].[dbo].[CrashSummaryIntersections].X', 'Longitude', 'COLUMN';

EXEC sp_rename '[project].[dbo].[CrashSummaryIntersections].Y', 'Latitude', 'COLUMN';

EXEC sp_rename '[project].[dbo].[CrashInformation].X', 'Longitude', 'COLUMN';

EXEC sp_rename '[project].[dbo].[CrashInformation].Y', 'Latitude', 'COLUMN';

SELECT * FROM [project].[dbo].[CrashSummaryIntersections];

ALTER TABLE [project].[dbo].[CrashInformation] 
ALTER COLUMN CRASH_TIME VARCHAR(5);

UPDATE [project].[dbo].[CrashInformation]
SET CRASH_TIME = STUFF(
    RIGHT('0000' + CAST(CRASH_TIME AS VARCHAR(4)), 4),
    3, 0, ':'                                           
)
WHERE CRASH_TIME IS NOT NULL;

SELECT * FROM [project].[dbo].[CrashInformation];