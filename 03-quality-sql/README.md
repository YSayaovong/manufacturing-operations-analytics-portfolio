# Project 03 — Quality root-cause investigation with SQL

**Question:** Which manufacturing process, supplier, and defect category account for the highest reject rates?

**Browser walkthrough:** Open https://sqliteonline.com/, choose SQLite, create a table using the CREATE TABLE statement in `schema_and_analysis.sql`, then import `data.csv` into `batches` using the site's CSV import function. Run the remaining SELECT queries sequentially. If the site import UI differs, use a browser SQL editor that supports CSV import and SQLite window functions.

**Metrics:** Defect rate = sum(rejected_units)/sum(inspected_units); Pareto share = rejected units for category / total rejected units. Batch rows each have one predominant defect category, a simplifying synthetic assumption.

**Deliverable:** Export query outputs, chart the Pareto, and write a quality action plan. Compare rates as well as absolute counts to avoid volume bias.