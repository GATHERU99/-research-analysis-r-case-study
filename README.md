# Research Analysis in R: ANOVA and Fisher's LSD Case Study

## Overview

This repository demonstrates a complete statistical analysis workflow in R for agricultural research data.

The project showcases how experimental data can be transformed into publication-ready outputs through:

- Data inspection and validation
- Descriptive statistical summaries
- Analysis of Variance (ANOVA)
- Fisher's Least Significant Difference (LSD) tests
- Graphical visualization
- Export of results for reporting

The original dataset has been sanitized to preserve confidentiality while maintaining the analytical workflow.

---

## Research Objective

The objective of this project is to evaluate treatment effects within an agricultural experiment and determine whether statistically significant differences exist among treatments.

The workflow follows standard agricultural and biological research practices commonly used in:

- Crop science
- Agronomy
- Soil science
- Plant pathology
- Nematology
- Experimental agriculture

---

## Experimental Design

The analysis assumes a structured experimental design involving:

- Treatments
- Replications (Blocks)
- Response Variables
- Seasonal or Temporal Factors (where applicable)

The design supports comparison of treatment performance while controlling for experimental variation.

Typical variables include:

| Variable Type | Example |
|---------------|----------|
| Treatment | Fertilizer, Variety, Management Practice |
| Block | Replication |
| Response Variable | Yield, Height, Population Count |
| Season | Long Rain, Short Rain |
| Time/Stage | Sampling Stage |

---

## Analysis Workflow

```text
Data Import
     ↓
Data Inspection
     ↓
Data Cleaning
     ↓
Descriptive Statistics
     ↓
Treatment Means
     ↓
ANOVA
     ↓
Fisher's LSD Test
     ↓
Graph Generation
     ↓
Export Results
     ↓
Chapter 4 Reporting
```

---

## Project Structure

```text
research-analysis-r-case-study/
│
├── scripts/
│   ├── 01_data_inspection.R
│   ├── 02_descriptive_tables.R
│   ├── 03_treatment_means.R
│   ├── 04_anova_lsd.R
│   └── 05_graphs_exports.R
│
├── outputs/
│   ├── tables/
│   ├── graphs/
│   └── reports/
│
├── README.md
└── LICENSE
```

---

## ANOVA Methodology

Analysis of Variance (ANOVA) was used to test whether significant differences existed among treatments.

### Null Hypothesis (H₀)

All treatment means are equal.

### Alternative Hypothesis (H₁)

At least one treatment mean differs significantly.

### Decision Criteria

- p ≤ 0.05 → Significant
- p > 0.05 → Not Significant

The ANOVA procedure provides:

- Degrees of Freedom
- Sum of Squares
- Mean Squares
- F-statistic
- P-values

---

## Fisher's LSD Methodology

When ANOVA indicated significant treatment effects, Fisher's Least Significant Difference (LSD) test was performed.

The LSD procedure:

- Separates treatment means
- Identifies statistically different groups
- Assigns grouping letters
- Supports interpretation of treatment performance

Outputs include:

- Treatment means
- Grouping letters
- LSD values
- Mean separation tables

---

## Outputs Generated

### Tables

- Descriptive statistics
- Treatment means
- ANOVA tables
- LSD mean separation tables

### Graphs

- Treatment comparison charts
- Mean plots
- Error-bar plots
- Publication-ready visualizations

### Reports

- Export-ready tables
- Research reporting outputs
- Chapter 4-ready summaries

---

## Skills Demonstrated

### Statistical Analysis

- Experimental Design
- ANOVA
- Fisher's LSD
- Hypothesis Testing

### R Programming

- Data Manipulation
- Statistical Modeling
- Automation
- Reproducible Research

### Data Visualization

- ggplot2
- Error Bars
- Scientific Graphics

### Research Reporting

- Agricultural Research Analysis
- Scientific Interpretation
- Results Communication
- Chapter 4 Preparation

---

## Technologies Used

- R
- RStudio
- ggplot2
- dplyr
- agricolae
- readr
- tidyr

---

## Author

**Paul Gatheru**

Data Analyst | Customer Experience Professional | CEO & Co-Founder, Metcom Virtuals

Nairobi, Kenya

---

## License

This project is licensed under the MIT License.
