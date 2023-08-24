#question 1
library(readr)
readr_example()

#question 2
mtcars_data <- read_csv("mtcars.csv")

#question 3
mtcars_data <- read_csv("mtcars.csv", n_max = 10)

#question 4
log_data <- read_lines("example.log")

#question 5
library(readxl)
excel_sheets(readxl_example("datasets.xlsx"))

#question 6
sheet_names <- excel_sheets(readxl_example("datasets.xlsx"))
last_sheet <- read_excel("datasets.xlsx", sheet = sheet_names[length(sheet_names)])

#question 7
library(dplyr)
install.packages("AER")
library(AER)
data("Fertility")
glimpse(Fertility)

#question 8
Fertility[35:50, c("age", "work")]

#question 9
tail(Fertility, 1)

#question 10
sum(Fertility$number == 3)

#question 11
table(Fertility$sex1, Fertility$sex2)