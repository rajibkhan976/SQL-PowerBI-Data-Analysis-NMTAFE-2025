SELECT * FROM 
dbo.CrashInformation;

SELECT * FROM 
dbo.CrashSummaryIntersections;

SELECT SUM(TOTAL_CRASHES)
FROM dbo.CrashSummaryIntersections;