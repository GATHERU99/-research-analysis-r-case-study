# Research Data Analysis in R: Agricultural Experiment Case Study

## Project Overview

This is a sanitized portfolio case study based on an agricultural research analysis workflow in R.

The project demonstrates how to transform raw experimental data into Chapter 4-ready outputs: cleaned data, descriptive statistics, treatment means, ANOVA tables, Fisher's LSD mean-separation results, graphs with error bars, and short interpretation notes.

> Privacy note: The original researcher's raw data, proposal document, full identity, and confidential files are not included in this public repository. This repo uses a sanitized structure and can be adapted with dummy/sample data.

---

## Research Context

The analysis workflow is designed for an agricultural experiment evaluating organic amendments and cover crops for managing root lesion nematodes in maize.

The original study design involved:
- Randomized Complete Block Design (RCBD)
- Treatment comparisons
- Replicates/blocks
- Seasonal comparison
- Sampling periods such as 0, 60, and 120 days
- ANOVA
- Fisher's LSD mean separation at 5% significance

---

## Problem

The researcher needed more than screenshots. They needed a reproducible R handover that could generate usable outputs for Chapter 4.

The key issue was converting RStudio history/workspace work into a clean and reusable analysis package.

---

## Objectives of This Portfolio Project

1. Inspect and understand the dataset structure.
2. Identify response variables and experimental factors.
3. Clean and standardize the data.
4. Build descriptive statistics tables.
5. Generate treatment mean tables.
6. Run ANOVA models.
7. Perform Fisher's LSD mean separation.
8. Build publication-style graphs with error bars.
9. Export all outputs into organized folders.
10. Write short result interpretations for Chapter 4.

---

## Tools Used

- R
- RStudio / Posit
- tidyverse
- dplyr
- ggplot2
- agricolae
- broom
- openxlsx

---

## Repository Structure

```text
research-analysis-r-case-study/
│
├── data/
│   └── sample/
│
├── scripts/
│   ├── 01_inspect_data.R
│   ├── 04_anova_lsd.R
│   └── 05_graphs_exports.R
│
├── outputs/
│   ├── tables/
│   ├── graphs/
│   ├── anova/
│   └── lsd/
│
├── docs/
│   ├── case_study.md
│   └── github_upload_checklist.md
│
├── .gitignore
└── README.md
```

---

## Key Outputs

The workflow is designed to generate:

- Cleaned dataset
- Dataset inspection report
- Response variable list
- Descriptive statistics tables
- Treatment mean tables
- ANOVA summary tables
- Fisher's LSD grouping tables
- Bar charts with standard error bars
- Interpretation notes

---

## Main Learning Outcome

This project shows the difference between simply running code and delivering a professional, reproducible analytics handover.

A strong analysis workflow should be:

- inspectable
- reproducible
- documented
- organized
- usable by another person

---

## Career Value

This project demonstrates practical skills in:

- R data analysis
- experimental design analysis
- agricultural research statistics
- ANOVA
- Fisher's LSD tests
- statistical visualization
- reproducible workflows
- stakeholder handover
- technical documentation

---

## Status

Sanitized portfolio structure prepared. Raw confidential data is excluded.
