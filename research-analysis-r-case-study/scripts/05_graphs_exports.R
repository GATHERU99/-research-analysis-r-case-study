# 05_graphs_exports.R
# Purpose: Create treatment mean bar charts with standard error bars.

library(tidyverse)
library(ggplot2)

data_path <- "data/sample/sample_data.csv"
df <- read.csv(data_path, stringsAsFactors = FALSE)

df <- df %>%
  mutate(
    treatment = as.factor(treatment),
    variable_type = as.factor(variable_type),
    value = as.numeric(value)
  )

dir.create("outputs/graphs", recursive = TRUE, showWarnings = FALSE)
dir.create("outputs/tables", recursive = TRUE, showWarnings = FALSE)

summary_table <- df %>%
  filter(!is.na(value)) %>%
  group_by(variable_type, treatment) %>%
  summarise(
    n = n(),
    mean_value = mean(value, na.rm = TRUE),
    sd = sd(value, na.rm = TRUE),
    se = sd / sqrt(n),
    .groups = "drop"
  )

write.csv(summary_table, "outputs/tables/treatment_summary_for_graphs.csv", row.names = FALSE)

for (v in unique(summary_table$variable_type)) {
  plot_data <- summary_table %>% filter(variable_type == v)
  
  p <- ggplot(plot_data, aes(x = treatment, y = mean_value)) +
    geom_col() +
    geom_errorbar(aes(ymin = mean_value - se, ymax = mean_value + se), width = 0.2) +
    labs(
      title = paste("Effect of treatment on", v),
      x = "Treatment",
      y = paste("Mean", v)
    ) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
  
  ggsave(
    filename = paste0("outputs/graphs/", v, "_bar_error_plot.png"),
    plot = p,
    width = 9,
    height = 6,
    dpi = 300
  )
}
