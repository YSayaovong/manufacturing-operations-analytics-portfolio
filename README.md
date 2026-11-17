# Manufacturing Operations Analytics Portfolio

**Engineering-focused analysis | Manufacturing KPIs | Quality | Production planning | Engineering changes**

I built this collection of six case studies to show how I approach manufacturing and engineering problems from a data and process perspective. My mechanical design background gives me a practical understanding of how engineering changes, production constraints and data accuracy affect downstream work. Here, I use synthetic datasets to demonstrate how I would define metrics, validate records and communicate findings to decision-makers.

## Projects and business questions

| Case study | Question I examine | Evidence |
|---|---|---|
| [01 — OEE and Downtime](01-oee-downtime/) | Where is scheduled production time being lost? | [Case study](01-oee-downtime/CASE_STUDY.md) |
| [02 — Production KPIs](02-production-kpis/) | How does actual output compare with plan? | [Case study](02-production-kpis/CASE_STUDY.md) |
| [03 — Quality Analysis](03-quality-sql/) | Which defect categories warrant investigation? | [Case study](03-quality-sql/CASE_STUDY.md) |
| [04 — Inventory and Supply Chain](04-inventory-tableau/) | Where could inventory cover and delivery performance create risk? | [Case study](04-inventory-tableau/CASE_STUDY.md) |
| [05 — Production Planning](05-production-planning/) | How do capacity and actual output compare with the schedule? | [Case study](05-production-planning/CASE_STUDY.md) |
| [06 — Engineering Change Orders](06-engineering-changes/) | Where might revision approvals affect production readiness? | [Case study](06-engineering-changes/CASE_STUDY.md) |

## Why I included engineering change analysis

I see engineering change management as a connection between design, configuration control, purchasing and manufacturing. In my [engineering change case study](06-engineering-changes/CASE_STUDY.md), I examine approval lead times, revision categories, simulated production delays and illustrative cost exposure. The goal is to make workflow bottlenecks visible without confusing correlation with a proven root cause.

## How I work through an analysis

1. Define the decision and the people who need the information.
2. Establish the metric, reporting period, denominator and level of detail.
3. Check identifiers, missing values and calculation consistency.
4. Compare relevant processes, teams, suppliers or production periods.
5. Present findings alongside assumptions and recommended next investigations.

## Tools and deliverables

I use SQL, Python, spreadsheets and business-intelligence-oriented data models across the case studies. Each folder includes a synthetic CSV, a written case study and an SVG chart. Selected projects also include SQL, DAX or Python notebooks.

To verify the repository's file structure, CSV formatting, notebook structure and local documentation links, run:

```bash
python validate_portfolio.py
```

The [GitHub Actions workflow](.github/workflows/checks.yml) runs these structural checks automatically. **These checks do not independently validate every KPI or execute the notebooks.**

## What these projects demonstrate

For engineering configuration, engineering business analysis and manufacturing systems roles, I want these examples to show my approach to data integrity, process visibility, requirements-driven metrics and clear documentation—not simply my ability to produce charts.

**Important scope:** All data is synthetic. No employer engineering drawings, PLM records or confidential factory metrics are represented. Results are illustrative, not documented workplace improvements. Hosted Tableau, Power BI and Google Sheets dashboards are not included, and the notebooks have not been independently executed in Colab.
