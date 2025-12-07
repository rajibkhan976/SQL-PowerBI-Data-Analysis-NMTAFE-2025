SELECT Carriageway,
CASE
	WHEN Carriageway = 'L' THEN 'Left carriageway'
	WHEN Carriageway = 'R' THEN 'Right carriageway'
	WHEN Carriageway = 'S' THEN 'Single carriageway'
	ELSE Carriageway
END
FROM [project].[dbo].[CrashInformation];

UPDATE [project].[dbo].[CrashInformation]
SET Carriageway = CASE
	WHEN Carriageway = 'L' THEN 'Left carriageway'
	WHEN Carriageway = 'R' THEN 'Right carriageway'
	WHEN Carriageway = 'S' THEN 'Single carriageway'
	ELSE Carriageway
END;

SELECT * FROM [project].[dbo].[CrashInformation];