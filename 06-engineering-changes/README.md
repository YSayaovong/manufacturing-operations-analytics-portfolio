# Project 06 — Engineering Change Orders and production disruption

**Question:** Which engineering changes have the longest approval lead times and highest associated production delay costs?

**Why this matters:** Connects drawing revisions, BOM changes, tolerance adjustments and supplier substitutions to operational KPIs.

**Browser walkthrough:** Open https://colab.research.google.com/, upload `analysis.ipynb` and Run all. For SQL, open https://sqliteonline.com/, create the `eco` table with `analysis.sql`, import `data.csv`, and run its queries.

**Metrics:** Approval lead time = approved - submitted calendar days; associated delay days and cost are *synthetic estimates*. Do not interpret correlations as causality. Prioritize changes by aggregate estimated cost, then investigate approval workflow and revision-control policies.

**Deliverable:** Notebook plots, SQL query results, executive summary with 3 improvement proposals and measurable future KPIs.