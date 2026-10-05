# Urban Company - Service-Ops Diagnostic & AI-Augmented Reporting Toolkit

## Project Overview

This project is an end-to-end service-operations analysis for an Urban Company-style dataset.

The project connects data generation, SQL analysis, spreadsheet reconciliation, Tableau dashboarding, and AI-assisted reporting into one workflow.

---
## Tableau Public Dashboard

https://public.tableau.com/app/profile/vasavi.s.puranik/viz/DashboardoftheCapstoneProject/Dashboard1?publish=yes

> **Note:** After opening the Tableau dashboard link, the dashboard may initially appear in a smaller view. Please click **“See this in full screen ”** at the bottom right corner and then use the **full-screen option** to view the dashboard properly.



# Part A - Data Setup, Python Sanity Check & SQL Diagnostic

### Task 1 - Generate the Database

Created a deterministic Urban Company-style dataset using Python with:

- 7 service categories
- 52 raw partner records
- 600 bookings

The generated SQLite database and CSV files are included in the repository.

**Files:**
- `generate_data.py`
- `urban_service.db`
- `cities.csv`
- `categories.csv`
- `partners_import.csv`
- `bookings.csv`

### Task 2 - Verify the Generated Data

Verified the number of records in the database and saved the verification results.

**File:**
- `verify_output.txt`

### Task 3 - Python Sanity Check

Used a Python-only calculation to verify booking counts and revenue totals for selected categories and cross-checked the results against SQL.

**File:**
- `sanity_check.py`

### Task 4 - Partner Deduplication

Identified duplicate partner records and created a clean partner table using SQL.

**File:**
- `01_dedup_and_joins.sql`

### Task 5 - Join Diagnostics

Used SQL joins to check:

- Whether every booking matched a valid partner
- Categories with zero bookings
- Partners with zero bookings
- `COUNT(*)` versus `COUNT(booking_id)` behavior

**File:**
- `01_dedup_and_joins.sql`

### Task 6 - Insert and Delete

Removed test bookings, inserted the required replacement bookings, and verified the final booking count and revenue.

**File:**
- `02_insert_delete.sql`

### Task 7 - LIKE Query

Used a SQL `LIKE 'Salon%'` query to identify partners whose primary category starts with "Salon".

**File:**
- `02_insert_delete.sql`

### Task 8 - Export Final Summary

Created the final city-category summary containing booking count, revenue, and SLA breaches.

This CSV became the fixed input for Parts B and C.

**File:**
- `city_category_summary.csv`

---

# Part B - Spreadsheet Cross-Check & KPI Analysis

The exact `city_category_summary.csv` from Part A was imported into the spreadsheet.

### Tasks Completed

- Imported the Part A summary data without changing it
- Created a category reference table with price bands
- Used VLOOKUP formulas to retrieve minimum and maximum prices
- Created a Pivot Table showing revenue by city and category
- Created a KPI Summary using SUMIFS and COUNTIFS
- Compared spreadsheet revenue totals with Part A SQL totals
- Confirmed that the city-level totals matched Part A to the rupee

**File:**
- `Capstone_Project.xlsx`

---

# Part C - Tableau Dashboard & Stakeholder Storytelling

The reconciled `city_category_summary.csv` was used to build the Tableau Public dashboard.

### Dashboard Components

The dashboard includes:

- Total Revenue KPI
- Total Bookings KPI
- SLA Breach Rate
- Revenue by City map
- City-wise revenue chart
- Revenue by service category
- City → Category revenue breakdown
- Month Focus parameter
- Category filter

The dashboard is publicly available through the Tableau Public link above.

### Stakeholder Storytelling

Two stakeholder narratives were created:

1. **City Ops Lead** - focused on SLA breach rates by city
2. **Category Lead** - focused on revenue and booking volume by category

**File:**
- `DASHBOARD_STORY.md`

---

# Part D - AI-Augmented Reporting

Part D focuses on using AI-assisted prompts and a rule-based escalation specification.

### Task 1 - Three-Prompt Pack

Created three prompts for:

1. Weekly Ops Summary Email
2. Stakeholder Narrative Draft
3. Customer Complaint Triage

The prompts are grounded in the reconciled project data.

**File:**
- `prompt_pack.md`

### Task 2 - Critic and Refine

Recorded a first AI output, evaluated it against:

- Specificity
- Audience Fit
- Completeness
- Actionability

Then created a refined prompt and recorded the improved output.

**File:**
- `prompt_pack.md`

### Task 3 - Escalation-Agent Specification

Created a rule-based specification for handling customer complaints.

The specification includes:

- Scope
- Four decision rules
- Five guardrails
- Logging requirements
- Decision outcomes

**File:**
- `escalation_agent_spec.md`

### Task 4 - Hand Trace

Applied the escalation rules to the eight specified bookings from the project dataset and recorded the resulting decisions.

**File:**
- `escalation_agent_spec.md`

---

# Repository Contents

## Part A
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

## Part B
- `Capstone_Project.xlsx`

## Part C
- `DASHBOARD_STORY.md`
- Tableau Public dashboard link in this README

## Part D
- `prompt_pack.md`
- `escalation_agent_spec.md`

---

## Final Submission

This repository contains the complete deliverables for Parts A-D.

The submission is the public GitHub repository containing all project artifacts and the live Tableau Public dashboard link.























































































