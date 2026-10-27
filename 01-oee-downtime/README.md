# Project 01 — Overall Equipment Effectiveness

**Question:** Which machines and downtime causes constrain manufacturing output?

**Browser walkthrough:** Open [Google Colab](https://colab.research.google.com/), choose Upload notebook, download/upload `analysis.ipynb`, then Runtime → Run all. Colab fetches the synthetic CSV from this public repository.

**Metrics:** Availability = runtime/planned time; Performance = ideal cycle time × total units/runtime (capped at 1 for this exercise); Quality = good units/total units; OEE = A × P × Q. Downtime cause is one primary reason per observation, not a full event log.

**Deliverables:** Notebook outputs, downtime Pareto, and a recommendation for maintenance or changeover improvement. **Limitations:** Illustrative simulated observations; not actual plant measurements.