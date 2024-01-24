SELECT        e.ID AS EventID, e.StartDateTime AS StartDateTimeOffset, e.EndDateTime AS EndDateTimeOffset, CAST(e.StartDateTime AS DATETIME) AS StartDateTime, CAST(e.EndDateTime AS DATETIME) AS EndDateTime, 
                         e.Date, ISNULL(e.LinkedEventID, - 1) AS LinkedEventID, ISNULL(e.SplitEventID, - 1) AS SplitEventID, CONVERT(DATE, DATEADD(WEEK, DATEDIFF(WEEK, 0, e.Date), - 1)) AS WeekDate, CONVERT(DATE, 
                         DATEADD(m, DATEDIFF(m, 0, e.Date), 0)) AS MonthDate, CONVERT(DATE, DATEADD(yy, DATEDIFF(yy, 0, e.Date), 0)) AS YearDate, e.Count AS EventCount, e.Impact AS EventImpact, DATEDIFF(second, 
                         e.StartDateTime, ISNULL(e.EndDateTime, SYSDATETIMEOFFSET())) * e.Count AS DurationSeconds, ed.SystemID, sys.Name AS SystemName, sys.DisplayDelaySeconds AS SystemDisplayDelaySeconds, sys.Color AS SystemColour, ed.SubSystemID, sub.Name AS SubSystemName, a.SiteID, 
                         a.ID AS AreaID, a.Name AS AreaName, a.Color AS AreaColour, ParentArea.ID AS ParentAreaID, ParentArea.[Name] AS ParentAreaName, ParentArea.Color AS ParentAreaColour, ed.ID AS EventDefinitionID, ed.Name AS EventDefinitionName, ed.[Key] AS EventDefinitionKey, ed.DisplayOrder AS EventDefinitionDisplayOrder, 
                         e.EventCategoryID, ec.Name AS EventCategoryName, ec.Color AS EventCategoryColour, ec1.ID AS EventCategory01ID, ISNULL(ec1.Name, N'') AS EventCategory01Name, ec2.ID AS EventCategory02ID, ISNULL(ec2.Name, N'') 
                         AS EventCategory02Name, ec3.ID AS EventCategory03ID, ISNULL(ec3.Name, N'') AS EventCategory03Name, ec4.ID AS EventCategory04ID, ISNULL(ec4.Name, N'') AS EventCategory04Name, ec5.ID AS EventCategory05ID, ISNULL(ec5.Name, N'') AS EventCategory05Name, 
                         dbo.tEventCategoryType.ID AS EventCategoryTypeID, dbo.tEventCategoryType.Name AS EventCategoryTypeName, dbo.tEventCategoryType.Color AS EventCategoryTypeColour, code.ID AS EventCodeID, code.Name AS EventCodeName, code.Code AS EventCodeCode, code.Color AS EventCodeColour,
                         e.ShiftHistoryID, s.ID AS ShiftID, s.Name AS ShiftName, s.Color AS ShiftColour, sh.StartDateTime AS ShiftHistoryStartDateTime, sh.EndDateTime AS ShiftHistoryEndDateTime, p.ID AS ProductID, p.Name AS ProductName, p.ProductCode, 
                         p.Color AS ProductColour, pt.ID AS ProductTypeID, pt.Name AS ProductTypeName, pt.Color AS ProductTypeColour, pg.ID AS ProductGroupID, pg.Name AS ProductGroupName, j.ID AS JobID, j.Name AS JobName, b.ID AS BatchID, b.Name AS BatchName, e.OeeEventType, e.State, 
                         e.StateDateTime AS StateDateTimeOffset, e.EventIsolationType, ed.MtbfType AS EventDefinitionMtbfType, e.DisplayDelaySeconds, e.AcknowledgeDurationMinutes, CASE WHEN e.EndDateTime IS NULL 
                         THEN 0 WHEN e.AcknowledgeDurationMinutes = 0 THEN 0 WHEN (DATEDIFF(second, SYSDATETIMEOFFSET(), DATEADD(minute, e.AcknowledgeDurationMinutes, e.EndDateTime)) * - 1) 
> (e.AcknowledgeDurationMinutes * 60) THEN 0 ELSE (DATEDIFF(second, DATEADD(minute, e.AcknowledgeDurationMinutes, e.EndDateTime), SYSDATETIMEOFFSET()) * - 1) 
                         END AS AcknowledgeRemainingSeconds, CASE WHEN (DATEDIFF(second, e.StartDateTime, ISNULL(e.EndDateTime, SYSDATETIMEOFFSET()))) < e.DisplayDelaySeconds THEN DATEADD(year, 1, e.StartDateTime) 
                         ELSE DATEADD(second, e.DisplayDelaySeconds, e.StartDateTime) END AS DisplayStartDateTime, CASE WHEN e.EndDateTime IS NULL THEN DATEADD(year, 1, e.StartDateTime) 
                         WHEN e.AcknowledgeDurationMinutes = 0 THEN DATEADD(year, 1, e.StartDateTime) ELSE DATEADD(minute, e.AcknowledgeDurationMinutes, e.EndDateTime) END AS DisplayEndDateTime, CONVERT(BIT, 
                         CASE WHEN e.EndDateTime IS NULL THEN 1 ELSE 0 END) AS IsActive, CONVERT(BIT, CASE WHEN e.EndDateTime IS NULL THEN 0 ELSE 1 END) AS IsComplete, e.IsEdited, e.[User] AS EventUser, 
                         e.Notes AS EventNotes, CAST(e.ModifiedDateTime AS DATETIME) AS EventModifiedDateTime, e.Capture01 AS EventCapture01, e.Capture02 AS EventCapture02, e.Capture03 AS EventCapture03, 
                         e.Capture04 AS EventCapture04, e.Capture05 AS EventCapture05, e.Capture06 AS EventCapture06, e.Capture07 AS EventCapture07, e.Capture08 AS EventCapture08, e.Capture09 AS EventCapture09, 
                         e.Capture10 AS EventCapture10, ed.ShowForAcknowledge AS EventDefinitionShowForAcknowledge, ed.DisplayDelaySeconds AS EventDefinitionDisplayDelaySeconds, ed.Color AS EventDefinitionColour, 
                         dbo.tOeeCalculation.Name AS OeeCalculationName, dbo.tOeeCalculation.Description AS OeeCalculationDescription, ecg.ID AS EventCategoryGroupID, ecg.Name AS EventCategoryGroupName, 
                         ec1.Description AS EventCategory01Description, ec2.Description AS EventCategory02Description, ec3.Description AS EventCategory03Description, ec4.Description AS EventCategory04Description, ec5.Description AS EventCategory05Description, 
                         t.ID AS TeamID, t.Name AS TeamName, t.Color AS TeamColour, ed.EventDefinitionTypeID, dbo.tEventDefinitionType.[Name] AS EventDefinitionTypeName, dbo.tEventDefinitionType.Color AS EventDefinitionTypeColour,
                         p.Attribute01 AS ProductAttribute01,
                         p.Attribute02 AS ProductAttribute02,
                         p.Attribute03 AS ProductAttribute03,
                         p.Attribute04 AS ProductAttribute04,
                         p.Attribute05 AS ProductAttribute05,
                         p.Attribute06 AS ProductAttribute06,
                         p.Attribute07 AS ProductAttribute07,
                         p.Attribute08 AS ProductAttribute08,
                         p.Attribute09 AS ProductAttribute09,
                         p.Attribute10 AS ProductAttribute10,
                         p.Attribute11 AS ProductAttribute11,
                         p.Attribute12 AS ProductAttribute12,
                         p.Attribute13 AS ProductAttribute13,
                         p.Attribute14 AS ProductAttribute14,
                         p.Attribute15 AS ProductAttribute15,
                         p.Attribute16 AS ProductAttribute16,
                         p.Attribute17 AS ProductAttribute17,
                         p.Attribute18 AS ProductAttribute18,
                         p.Attribute19 AS ProductAttribute19,
                         p.Attribute20 AS ProductAttribute20
FROM            dbo.tEvent AS e WITH (NOLOCK) INNER JOIN
                         dbo.tEventDefinition AS ed ON ed.ID = e.EventDefinitionID INNER JOIN
                         dbo.tSystem AS sys ON ed.SystemID = sys.ID INNER JOIN
                         dbo.tArea AS a ON a.ID = sys.AreaID LEFT OUTER JOIN
                         dbo.tArea AS ParentArea ON a.ParentAreaID = ParentArea.ID LEFT OUTER JOIN
                         dbo.tSystem AS sub ON ed.SubSystemID = sub.ID LEFT OUTER JOIN
                         dbo.tShiftHistory AS sh ON e.ShiftHistoryID = sh.ID LEFT OUTER JOIN
                         dbo.tShift AS s ON sh.ShiftID = s.ID LEFT OUTER JOIN
                         dbo.tTeam AS t ON sh.TeamID = t.ID LEFT OUTER JOIN
                         dbo.tJob AS j ON e.JobID = j.ID LEFT OUTER JOIN
                         dbo.tBatch AS b ON e.BatchID = b.ID LEFT OUTER JOIN
                         dbo.tProduct AS p ON ISNULL(j.ProductID, e.ProductID) = p.ID LEFT OUTER JOIN
                         dbo.tProductGroup AS pg ON pg.ID = p.ProductGroupID LEFT OUTER JOIN
                         dbo.tProductType AS pt ON pt.ID = p.ProductTypeID LEFT OUTER JOIN
                         dbo.tEventCategory AS ec ON e.EventCategoryID = ec.ID LEFT OUTER JOIN
                         dbo.tEventCategory AS ec1 ON e.EventCategory01ID = ec1.ID LEFT OUTER JOIN
                         dbo.tEventCategory AS ec2 ON e.EventCategory02ID = ec2.ID LEFT OUTER JOIN
                         dbo.tEventCategory AS ec3 ON e.EventCategory03ID = ec3.ID LEFT OUTER JOIN
                         dbo.tEventCategory AS ec4 ON e.EventCategory04ID = ec4.ID LEFT OUTER JOIN
                         dbo.tEventCategory AS ec5 ON e.EventCategory05ID = ec5.ID LEFT OUTER JOIN
                         dbo.tEventCategoryType ON ec.EventCategoryTypeID = dbo.tEventCategoryType.ID LEFT OUTER JOIN
                         dbo.tEventDefinitionType ON ed.EventDefinitionTypeID = dbo.tEventDefinitionType.ID LEFT OUTER JOIN
                         dbo.tEventCode AS code ON e.EventCodeID = code.ID LEFT OUTER JOIN
                         dbo.tEventCategoryGroup AS ecg ON ec.EventCategoryGroupID = ecg.ID LEFT OUTER JOIN
                         dbo.tOeeCalculation ON sys.ID = dbo.tOeeCalculation.SystemID AND dbo.tOeeCalculation.Description = 'OEE'
