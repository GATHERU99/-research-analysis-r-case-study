# 04_anova_lsd.R
# Purpose: Template for ANOVA and Fisher's LSD analysis.

library(tidyverse)
library(agricolae)
library(broom)

data_path <- "data/sample/sample_data.csv"
df <- read.csv(data_path, stringsAsFactors = FALSE)

required_cols <- c("treatment", "variable_type", "value")
missing_cols <- setdiff(required_cols, names(df))
if (length(missing_cols) > 0) stop(paste("Missing required columns:", paste(missing_cols, collapse = ", ")))

df <- df %>%
  mutate(
    treatment = as.factor(treatment),
    variable_type = as.factor(variable_type),
    value = as.numeric(value)
  )

dir.create("outputs/anova", recursive = TRUE, showWarnings = FALSE)
dir.create("outputs/lsd", recursive = TRUE, showWarnings = FALSE)

response_vars <- unique(df$variable_type)

for (v in response_vars) {
  temp <- df %>% filter(variable_type == v, !is.na(value))
  
  if (n_distinct(temp$treatment) < 2) {
    message("Skipping ", v, ": fewer than 2 treatments.")
    next
  }
  
  model <- aov(value ~ treatment, data = temp)
  
  anova_table <- broom::tidy(model)
  write.csv(anova_table, paste0("outputs/anova/", v, "_anova.csv"), row.names = FALSE)
  
  lsd <- agricolae::LSD.test(model, "treatment", group = TRUE)
  lsd_groups <- lsd$groups
  lsd_groups$treatment <- rownames(lsd_groups)
  write.csv(lsd_groups, paste0("outputs/lsd/", v, "_lsd_groups.csv"), row.names = FALSE)
}
