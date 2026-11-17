"""Structural checks for the six synthetic portfolio case studies."""
import csv
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
FOLDERS = [
    "01-oee-downtime", "02-production-kpis", "03-quality-sql",
    "04-inventory-tableau", "05-production-planning", "06-engineering-changes",
]
for folder in FOLDERS:
    base = ROOT / folder
    for filename in ("README.md", "CASE_STUDY.md", "data.csv", "summary-chart.svg"):
        assert (base / filename).is_file(), f"Missing: {folder}/{filename}"
    with (base / "data.csv").open(newline="", encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)
        assert reader.fieldnames and len(reader.fieldnames) == len(set(reader.fieldnames)), folder
        rows = list(reader)
        assert rows, f"Empty CSV: {folder}"
        assert all(None not in row and None not in row.values() for row in rows), f"Malformed CSV: {folder}"
    for filename in ("README.md", "CASE_STUDY.md"):
        content = (base / filename).read_text(encoding="utf-8")
        for link in re.findall(r"(?<!!)\[[^]]+\]\(([^)]+)\)", content):
            if link.startswith(("https://", "http://", "#", "mailto:")):
                continue
            target = (base / link.split("#", 1)[0]).resolve()
            assert target.is_file() and target.is_relative_to(ROOT), f"Broken link: {folder}/{filename}: {link}"
for notebook in ROOT.glob("*/analysis.ipynb"):
    data = json.loads(notebook.read_text(encoding="utf-8"))
    assert data.get("nbformat") == 4 and isinstance(data.get("cells"), list), notebook
print("Portfolio structural checks passed (not a calculation or notebook execution audit).")
