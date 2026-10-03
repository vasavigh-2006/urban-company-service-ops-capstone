# Urban Company Service-Ops Diagnostic & AI-Augmented Reporting Toolkit

## Project Overview

This project builds an end-to-end service-operations diagnostic toolkit using a seeded Urban Company-style dataset.

The work covers:
- Data generation and validation using Python
- SQL-based data cleaning and diagnostics
- Spreadsheet-based reconciliation and analysis
- Tableau Public dashboard and stakeholder storytelling
- AI-assisted reporting prompts
- Rule-based complaint escalation specification

## Tableau Public Dashboard

https://public.tableau.com/app/profile/vasavi.s.puranik/viz/DashboardoftheCapstoneProject/Dashboard1?publish=yes

> **Note:** After opening the Tableau dashboard link, the dashboard may initially appear in a smaller view. Please click **“See this in full screen ”** at the bottom right corner and then use the **full-screen option** to view the dashboard properly.

## Repository Contents

### Part A — Data Setup and SQL
- `generate_data.py`
- `urban_service.db`
- `cities.csv`
- `categories.csv`
- `partners_import.csv`
- `bookings.csv`
- `verify_output.txt`
- `sanity_check.py`
- `01_dedup_and_joins.sql`
- `02_insert_delete.sql`
- `city_category_summary.csv`

### Part B — Spreadsheet Analysis
- Spreadsheet workbook (`.xlsx`)

### Part C — Tableau Dashboard and Story
- `DASHBOARD_STORY.md`
- Live Tableau Public dashboard linked above

### Part D — AI-Augmented Reporting
- `prompt_pack.md`
- `escalation_agent_spec.md`
