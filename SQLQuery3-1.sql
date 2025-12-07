DELETE FROM ['Crash_Information_(Last_5_Years$']
WHERE INTERSECTION_NO IS NULL
OR INTERSECTION_DESC IS NULL;

EXEC sp_rename "['Crash_Information_(Last_5_Years$']", "CrashInformation";
GO

EXEC sp_rename "[Crash_Summary_for_Intersections$]", "CrashSummaryIntersections";
GO

EXEC sp_rename "CrashInformation.SLK", "Straight Line Kilometres", "COLUMN";
GO

SELECT * FROM
['Crash_Information_(Last_5_Years$'];