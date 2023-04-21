library(tidyverse)
library(rstatix)
library(dplyr)

data_For_RskMortScore = read.csv("clean_RskMortScore.csv")

data_For_RskMortScore$Race_And_Ethnicity = factor(data_For_RskMortScore$Race_And_Ethnicity)

model = aov(RskMortScore_Fact ~ Race_And_Ethnicity, data = data_For_RskMortScore)
summary(model)

TukeyHSD(model)

data_for_SeverityScore = read.csv("clean_SeverityScore.csv")

data_for_SeverityScore$Race_And_Ethnicity = factor(data_for_SeverityScore$Race_And_Ethnicity)

model01 = aov(SeverityScore_Fact ~ Race_And_Ethnicity, data = data_for_SeverityScore)
summary(model01)

TukeyHSD(model01)

