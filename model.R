# Load necessary libraries
library(readxl)          # For reading Excel files
library(dplyr)           # For data manipulation
library(Benchmarking)    # For DEA analysis
library(openxlsx)        # For writing Excel files

# Read the COVID-19 data from the Excel file
owid_covid_data <- read_excel("owid-covid-data.xlsx")

# Select relevant columns and handle missing values
selected_data <- owid_covid_data %>%
  select(location, date, total_vaccinations_per_hundred, total_tests_per_thousand, total_cases_per_million, total_deaths_per_million)
selected_data <- na.omit(selected_data)

# Find the earliest date for each location
first_dates <- owid_covid_data %>%
  group_by(location) %>%
  summarise(first_date = min(date))

# Select the latest data entry per location
selected_data <- selected_data %>%
  group_by(location) %>%
  slice(n())

# Merge selected_data with first_dates based on 'location'
selected_data <- selected_data %>%
  left_join(first_dates, by = "location")

# Rename columns for clarity
selected_data <- selected_data %>%
  select(location, first_date, date, total_vaccinations_per_hundred, total_tests_per_thousand, total_cases_per_million, total_deaths_per_million)
colnames(selected_data) <- c("location", "start_date", "end_date", "total_vaccinations_per_hundred", "total_tests_per_thousand", "total_cases_per_million", "total_deaths_per_million")

# Calculate the number of days between start_date and end_date
selected_data <- selected_data %>%
  mutate(
    start_date = as.Date(start_date, format = "%Y-%m-%d"),
    end_date = as.Date(end_date, format = "%Y-%m-%d"),
    days_between = as.numeric(end_date - start_date)
  )

# Calculate daily metrics by dividing cumulative metrics by the number of days
data <- selected_data %>%
  mutate(
    total_vaccinations_per_hundred_per_day = total_vaccinations_per_hundred / days_between,
    total_tests_per_thousand_per_day = total_tests_per_thousand / days_between,
    total_cases_per_million_per_day = total_cases_per_million / days_between,
    total_deaths_per_million_per_day = total_deaths_per_million / days_between
  ) %>%
  select(
    location,
    total_vaccinations_per_hundred_per_day,
    total_tests_per_thousand_per_day,
    total_cases_per_million_per_day,
    total_deaths_per_million_per_day
  )

# Prepare input and output variables for DEA analysis
inputs <- with(data, cbind(data["total_vaccinations_per_hundred_per_day"], data["total_tests_per_thousand_per_day"]))
outputs <- with(data, cbind(data["total_cases_per_million_per_day"], data["total_deaths_per_million_per_day"]))

# Perform DEA analysis with output minimization and allowing slack
covid_analysis <- dea(inputs, outputs, SLACK = TRUE, DUAL = TRUE, RTS = "crs", ORIENTATION = "out")

# Store DEA analysis outcomes in a dataframe
outcome <- data.frame(covid_analysis$eff, covid_analysis$slack, covid_analysis$lambda)
colnames(outcome) <- c("efficiency", "slack", data$location)
outcome <- cbind(Country = data$location, outcome)

# Write the outcomes to an Excel file named "model_outcome.xlsx"
write.xlsx(outcome, "model_outcome.xlsx")
