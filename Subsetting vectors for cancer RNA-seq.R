#question 1

#creating vectors for the columns
sample_names <- paste("sample", 1:12, sep="")
sex <- c("M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F")
stage <- c("I", "II", "II", "I", "II", "II", "I", "II", "II", "I", "II", "II")
treatment <- rep(c("A", "B", "P"), each=4)
myc <- c(2343, 457, 4593, 9035, 3450, 3524, 958, 1053, 8674, 3424, 463, 5105)

#creating the matadata data
meta <- data.frame(sample=sample_names, sex=sex, stage=stage, treatment=treatment, myc=myc)

#assigning the names to the data
rownames(meta) <- sample_names

print(meta)

#question 2

#using subset to return only treatment and sex
subset1 <- meta[, c("treatment", "sex")]
#using subset to return treatment values for numbered samples
subset2 <- meta[c(5, 7, 9, 10), "treatment"]
#using subset to return data w treatment P
subset3 <- subset(meta, treatment == "P")

#uploading dplyr from tidyverse to use filter/select to choose specific expression levels 
library(dplyr)
subset4 <- meta %>%
  filter(myc > 5000) %>%
  select(stage, treatment)

#removing the treatment column
meta$treatment <- NULL
#removing samples 7,8,9 
meta <- meta[-c(7, 8, 9), ]
#keeping only 1-6
meta <- meta[1:6, ]

#creating a new column and adding it to the beginning of the data
pre_treatment <- c("T", "F", "F", "F", "T", "T", "F", "T", "F", "F", "T", "T")
meta <- cbind(pre_treatment, meta)

#changing the names of the columns
colnames(meta) <- c("A", "B", "C", "D")

print("Modified Metadata:")
print(meta)
print("Subset 1:")
print(subset1)
print("Subset 2:")
print(subset2)
print("Subset 3:")
print(subset3)
print("Subset 4:")
print(subset4)

