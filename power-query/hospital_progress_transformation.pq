let
    // Synthetic portfolio demonstration based on the author's original M workflow.
    Source = Excel.CurrentWorkbook(){[Name="HistoricalData"]}[Content],
    ChangedTypes = Table.TransformColumnTypes(
        Source,
        {{"ReportingDate", type date}, {"Category", type text},
         {"Project", type text}, {"Hospital", type text},
         {"ProjectStage", type text}, {"Response", type any}}
    ),
    // A duplicate for the same hospital, project, stage and month must be reviewed.
    AddedReportingMonth = Table.AddColumn(
        ChangedTypes, "ReportingMonth",
        each Date.ToText([ReportingDate], "MMM-yyyy", "en-US"), type text
    ),
    Grouped = Table.Group(
        AddedReportingMonth,
        {"Category", "Project", "Hospital", "ProjectStage", "ReportingMonth"},
        {{"Count", each Table.RowCount(_), Int64.Type}}
    ),
    Duplicates = Table.SelectRows(Grouped, each [Count] > 1),
    Checked = if Table.RowCount(Duplicates) > 0
        then error "Duplicate responses found for the same hospital, project, stage and reporting month. Confirm with the data source."
        else AddedReportingMonth,
    AddedNormalizedResponse = Table.AddColumn(
        Checked, "NormalizedResponse", each
            let
                v = [Response],
                n = try Number.From(v) otherwise null,
                d = if Value.Is(v, type datetime) then Date.From(v)
                    else if Value.Is(v, type date) then v
                    else if Value.Is(v, type number) and n <> null and n >= 30000 and n <= 60000
                        then Date.AddDays(#date(1899, 12, 30), Number.RoundDown(n))
                    else null
            in
                if v = null then null
                else if d <> null then Date.ToText(d, "MMM-yyyy", "en-US")
                else Text.From(v, "en-US"), type nullable text
    ),
    RemovedColumns = Table.RemoveColumns(AddedNormalizedResponse, {"ReportingDate", "Response"}),
    PivotedMonths = Table.Pivot(
        RemovedColumns,
        List.Distinct(RemovedColumns[ReportingMonth]),
        "ReportingMonth", "NormalizedResponse"
    )
in
    PivotedMonths
