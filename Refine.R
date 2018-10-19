# Read Packages installed
#library()

# Load packages 
library(gdata)
library(dplyr)
library(tidyr)

# 0: Load the data in RStudio
# Read dataset
refine = read.csv("D:/R/Capstone/Refine/refine_original.csv", header = TRUE)

# Check if all was read fine
head(refine)
tail(refine)
dim(refine)

data.frame(refine)

# 1: Clean up brand names
# Clean up company column for philips

refine$company <- gsub(pattern = ".*lips$", replacement = "philips",refine$company)

refine$company <- gsub(pattern = "^phi.*", replacement = "philips", refine$company)

# Clean up company column for akzo

refine$company <- gsub(pattern = "^ak.*", replacement = "akzo", refine$company, ignore.case = TRUE)

# Clean up company column for van houten

refine$company <- gsub(pattern = "^van.*", replacement = "van houten", refine$company, ignore.case = TRUE)

# Clean up company column for unilever

refine$company <- gsub(pattern = "^uni.*", replacement = "unilever", refine$company, ignore.case = TRUE)
View(refine)

# 2: Separate product code and number

colnames(refine)

refine <- refine %>% separate('Product.code...number',
                      c("product_code","product_number"), sep = "-" )
               
View(refine)















