# 01_inspect_data.R
# Purpose: Inspect dataset structure before analysis.

packages <- c("tidyverse", "dplyr", "ggplot2", "agricolae", "broom", "openxlsx")
installed <- packages %in% rownames(installed.packages())
if (any(!installed)) install.packages(packages[!installed])
invisible(lapply(packages, library, character.only = TRUE))

data_path <- "data/sample/sample_data.csv"
if (!file.exists(data_path)) stop("Sample data file not found. Add a sanitized CSV to data/sample/")

df <- read.csv(data_path, stringsAsFactors = FALSE)

print(dim(df))
print(names(df))
print(head(df))
print(str(df))
print(summary(df))

dir.create("outputs/tables", recursive = TRUE, showWarnings = FALSE)

sink("outputs/tables/dataset_inspection.txt")
cat("DATASET DIMENSIONS\n")
print(dim(df))
cat("\nCOLUMN NAMES\n")
print(names(df))
cat("\nSTRUCTURE\n")
print(str(df))
cat("\nSUMMARY\n")
print(summary(df))
sink()
