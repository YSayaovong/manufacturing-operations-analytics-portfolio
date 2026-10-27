# Project 02 — Production KPI dashboard (Google Sheets)

**Question:** Which line and shift miss plan, and how much output is lost to scrap?

## Fully browser-based walkthrough
1. Download [data.csv](data.csv), open https://sheets.google.com/, create a blank sheet and File → Import → Upload.
2. Add a tab called Dashboard. Use formulas below (assuming imported tab is named data and the columns match CSV order).
3. Insert → Pivot table using all rows: Rows = line; Columns = shift; Values = SUM of planned_units, actual_units, scrap_units.
4. Add a bar chart of planned vs actual by line, and a time series of good_units by date.
5. Add slicers for line and shift, and a written recommendation.

## KPI formulas
- Total planned: `=SUM(data!D2:D)`
- Total actual: `=SUM(data!E2:E)`
- Total good: `=SUM(data!G2:G)`
- Attainment: `=SUM(data!E2:E)/SUM(data!D2:D)`
- Scrap rate: `=SUM(data!F2:F)/SUM(data!E2:E)`
- Plan variance: `=SUM(data!E2:E)-SUM(data!D2:D)`

**Validation:** good_units = actual_units - scrap_units; aggregate percentages must use ratio of sums, not average of row percentages.

**Portfolio output:** Google Sheets dashboard (share view-only), screenshots in this folder, and 3 evidence-backed actions. Synthetic teaching data; no employer records.