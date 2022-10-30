
setwd("D:/Work/IRIS/Training/IRIS-Training-2022-10/practical/cleansing")

library(data.table)
library(tidyverse)
library(readxl)

date.format.export = "%Y-%m-%d"


#read in the data
cases <- read_excel('covid-cases-30_mar_2020_clean.xlsx', sheet = "Sheet1")

#read in the look up lists and rename the columns so it is easier to understand
countries <- fread('list_country.csv', header = TRUE, sep = ",", stringsAsFactors=FALSE) %>%
    rename(
        "CountryCode" = "Code",
        "CountryName" = "Name"
    )
    
# for DHB list we want to ensure the leading zero in the dhb code is preserved when we read in the file
dhb <- fread('list_nz_dhb.csv', header = TRUE, colClasses = c("character", "character"), sep = ",", stringsAsFactors=FALSE) %>%
    rename(
        "DHBCode" = "Code",
        "DHBName" = "Name"
    )

age <- fread('list_age_group.csv', header = TRUE, sep = ",", stringsAsFactors=FALSE) %>%
    rename(
        "AgeCode" = "VariableName",
        "AgeName" = "Name"
    )


final <- cases %>%
    left_join(countries, by = c("LastCountry" = "CountryName")) %>%
    left_join(dhb, by = c("DHB" = "DHBName")) %>%
    left_join(age, by = c("AgeGroup" = "AgeName")) %>%
    mutate(
        ReportDate = as.character(ReportDate, date.format.export),
        DepartureDate = as.character(DepartureDate, date.format.export),
        ArrivalDate = as.character(ArrivalDate, date.format.export),
    ) %>%
    select(
        ReportDate,
        Sex,
        AgeCode,
        DHBCode,
        Overseas,
        CountryCode,
        FlightNo,
        DepartureDate,
        ArrivalDate,
        Status
    )

final %>% write.csv(., file = 'covid-cases-cleaned.csv', na = "", quote = TRUE, row.names = FALSE)

