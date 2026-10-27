-- Import CSV as table eco in a SQLite browser editor
CREATE TABLE IF NOT EXISTS eco (eco_id TEXT PRIMARY KEY, submitted_date TEXT, approved_date TEXT, change_type TEXT, owner_team TEXT, priority TEXT, approval_days INTEGER, production_delay_days INTEGER, estimated_delay_cost_usd INTEGER);
SELECT COUNT(*) AS changes, ROUND(AVG(approval_days),1) AS avg_approval_days, SUM(estimated_delay_cost_usd) AS estimated_delay_cost FROM eco;
SELECT change_type, COUNT(*) AS change_count, ROUND(AVG(approval_days),1) AS avg_approval_days, ROUND(AVG(production_delay_days),1) AS avg_delay_days, SUM(estimated_delay_cost_usd) AS delay_cost FROM eco GROUP BY change_type ORDER BY delay_cost DESC;
SELECT owner_team, priority, COUNT(*) AS changes, ROUND(AVG(approval_days),1) AS avg_approval_days FROM eco GROUP BY owner_team, priority ORDER BY avg_approval_days DESC;
SELECT eco_id, change_type, approval_days, production_delay_days FROM eco WHERE approval_days > 20 ORDER BY approval_days DESC;
