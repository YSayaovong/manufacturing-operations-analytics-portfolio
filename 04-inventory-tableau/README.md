# Project 04 — Inventory and supplier performance (Tableau Public)

**Question:** Which components are at risk of stockout, and which suppliers are missing delivery commitments?

## Browser walkthrough
1. Sign in to https://public.tableau.com/ and create a visualization in the browser.
2. Upload `data.csv`. Never publish confidential supplier or company data to Tableau Public.
3. Create calculated field `Risk Status`: `IF [days_cover] < [lead_time_days] THEN "Reorder risk" ELSE "Covered" END`.
4. Create calculated field `On Time %`: `SUM([on_time_deliveries]) / SUM([deliveries])`.
5. Make bar charts of days_cover by part_id and on-time % by supplier; add category/supplier filters.
6. Publish the dashboard and paste its URL into this README. Capture screenshots as a fallback.

**Interpretation:** Days cover = on-hand / average daily demand. Flag where days cover < lead time, assuming no incoming inventory and constant demand. Supplier on-time % is delivery-weighted; do not average row percentages. All data synthetic.