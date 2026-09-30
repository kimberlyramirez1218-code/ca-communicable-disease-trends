library(tidyverse)
library(janitor)

disease_raw <- read_csv("data/raw/ca_communicable_disease_trend.csv") |>
  clean_names()

# Looking at the csv data set 
glimpse(disease_raw)
view(disease_raw)

disease_raw |>
  count(sex)
disease_raw |>
  count(county) |>
  view()

# Filtering (kepT) counties Ventura and California and also the sex column to Total(no female and male rows)
disease_raw |>
  filter(county == "Ventura" | county == "California", sex == "Total")

# kept the results from the filtering up above into ventura_ca
ventura_ca <- disease_raw |>
  filter(county == "Ventura" | county == "California", sex == "Total")

  




