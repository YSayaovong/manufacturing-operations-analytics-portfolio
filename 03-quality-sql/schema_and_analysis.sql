-- SQLite syntax. Synthetic batch-level quality dataset.
-- Import data.csv into table batches via SQLite Online's CSV import,
-- OR create the table below and import rows using your browser SQL tool.
CREATE TABLE IF NOT EXISTS batches (
 batch_id INTEGER PRIMARY KEY, date TEXT, process TEXT, supplier TEXT,
 defect_type TEXT, inspected_units INTEGER, rejected_units INTEGER
);
-- Check import completeness (expected 120 rows)
SELECT COUNT(*) AS batch_count, SUM(inspected_units) AS inspected, SUM(rejected_units) AS rejected FROM batches;
-- Weighted defect rate by process
SELECT process, SUM(inspected_units) AS inspected, SUM(rejected_units) AS rejected,
 ROUND(100.0*SUM(rejected_units)/NULLIF(SUM(inspected_units),0),2) AS defect_pct
FROM batches GROUP BY process ORDER BY defect_pct DESC;
-- Supplier comparison
SELECT supplier, SUM(rejected_units) AS rejected,
 ROUND(100.0*SUM(rejected_units)/NULLIF(SUM(inspected_units),0),2) AS defect_pct
FROM batches GROUP BY supplier ORDER BY defect_pct DESC;
-- Pareto of defect categories
WITH reasons AS (
 SELECT defect_type, SUM(rejected_units) AS rejected FROM batches GROUP BY defect_type
)
SELECT defect_type, rejected, ROUND(100.0*rejected/SUM(rejected) OVER (),2) AS share_pct,
 ROUND(100.0*SUM(rejected) OVER (ORDER BY rejected DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)/SUM(rejected) OVER (),2) AS cumulative_pct
FROM reasons ORDER BY rejected DESC;
-- Date trend
SELECT date, SUM(rejected_units) AS rejects FROM batches GROUP BY date ORDER BY date;
