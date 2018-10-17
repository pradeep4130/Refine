# Read Packages installed
library()

# Load packages 
library(gdata)
library(dplyr)
library(tidyr)

# Read dataset
refine = read.csv("D:/R/Capstone/Refine/refine_original.csv", header = TRUE)

# Check if all was read fine
head(refine)
tail(refine)
dim(refine)

data.frame(refine)

#Clean up company column 

gsub("lips$","philips",refine$company)

grepl("lips$",refine$company)

refine %>% mutate(company = ifelse (grepl("lips$",company),"philips",company))
