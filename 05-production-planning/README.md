# Project 05 — Production planning and capacity

**Question:** Which work cells have the largest plan shortfalls and where is capacity underused?

**Browser option A (Power BI):** Sign in at https://app.powerbi.com/. If your account permits creating semantic models/reports from CSV in the browser, upload `data.csv`, name the table `Production`, add the measures in `measures.dax`, and build a matrix by work_cell and shift, a date trend, and KPI cards. Features and sharing depend on license and tenant; Power BI Desktop may be required for some modeling tasks.

**Guaranteed free fallback:** Import CSV into https://sheets.google.com/, build PivotTables and charts using SUM of planned, actual and capacity, then calculate attainment and utilization as ratios of sums.

**Definitions:** Attainment = actual/planned; utilization = actual/capacity; variance = actual-planned. Some simulated observations may exceed planned production. All data synthetic.

**Portfolio output:** Report link if supported, otherwise Google Sheets dashboard and screenshots. Do not claim to have built a native PBIX if you used the Sheets fallback.