library(readxl)
library(dplyr)
library(plyr)
library(purrr)
library(tidyverse)

setwd("C:/Users/colli/Documents/GitHub/dsc520/data")


housing_df <- read_xlsx("week-7-housing.xlsx")

head(housing_df)

## dplyr package functions

group_by(housing_df, sale_reason)

housing_df %>% summarize(avg_sqft = mean(sq_ft_lot),
                         med_sqft = median(sq_ft_lot),
                         avg_sqft_liv = mean(square_feet_total_living),
                         med_sqft_liv = median(square_feet_total_living))

housing_df_mutate <- mutate(housing_df, p_pw = sq_ft_lot / max(sq_ft_lot) * 100)

housing_df_filter <- filter(housing_df, sale_reason == 1)

housing_df_select <- select(housing_df, -year_built)

housing_df_arrange <- arrange(housing_df, desc(year_built))

## purr package functions

housing_df %>% map(is.numeric)

housing_df %>% map_chr(is.numeric)

## cbind and rbind functions
``
housing_df_cbind <- cbind(housing_df, housing_df_arrange)

housing_df_rbind <- rbind(housing_df, housing_df_arrange)
str(housing_df_rbind)

## splitting and concatinating string

str_cstr_split("hello my friend", pattern = " ")

str_c("hello", "my", "friend", sep = " ")





