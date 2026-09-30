library(tidyverse)
library(janitor)

disease_raw <- read_csv("data/raw/ca_communicable_disease_trend.csv") |>
  clean_names()

glimpse(disease_raw)