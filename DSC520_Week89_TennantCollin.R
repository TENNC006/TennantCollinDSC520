---
title: "DSC520_Assignment7_TennantCollin.R"
author: "Collin Tennant"
date: "10/17/2021"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Part i

```{r survey, echo=FALSE}
setwd("C:/Users/colli/Documents/GitHub/dsc520")
survey_df <- read.csv("data/student-survey.csv")
survey_cov <- cov(survey_df)
survey_cov
```

This is a good calculation to see if the variables of the data set are of an equivalent measure.  The calculation shows that it's highly unlikely that is the case.

## Part ii

It seems that TimeReading and TimeTV variables were measured in hours, Happiness variable measured on a scaled of 0-100, Gender variable measured as binary.  These different forms of measurement does not allow for accurate comparison of the variables.  Possibly taking each variable and converting the information to a scale from 0-1 would make a much more readable chart.


## Part iii

I'd perform a spurious correlation test because these variables do seem to be unrelated based on the covariance calculation. 

## Part iv


```{r surveypartiv, echo=FALSE}
library(psychometric)
setwd("C:/Users/colli/Documents/GitHub/dsc520")
survey_df <- read.csv("data/student-survey.csv")
cor(survey_df, y=NULL)
cor(survey_df$TimeReading, survey_df$TimeTV)
```

## Part v

Calculate the correlation coefficient and the coefficient of determination, describe what you conclude about the results.

## Part vi

Based on your analysis can you say that watching more TV caused students to read less? Explain.

## Part vii

Pick three variables and perform a partial correlation, documenting which variable you are “controlling”. Explain how this changes your interpretation and explanation of the results.
