## data cleaning

# path
here::i_am("R/cleandata.R")

# import data
# data = read.csv("/Users/scarlett/Dropbox/Fall\ 2021/INFO\ 550/homework/homework\ 3/data/CA_ED_INFO550.csv")
data = read.csv(here::here("data", "CA_ED_INFO550.csv"))
# check the structure of data
str(data)
# check if there are any missing values
sum(is.na(data)) # 1
which(is.na(data$ZIP)) # 958
# delete row 958
data = data[-which(is.na(data$ZIP)), ]
# check if there are any duplicated rows
sum(duplicated(data)) # three duplicated rows
data = data[-which(duplicated(data)),]
# cleaned data
# write.csv(data, file = "/Users/scarlett/Dropbox/Fall\ 2021/INFO\ 550/homework/homework\ 3/data/cleandata.csv", row.names = FALSE)
write.csv(data, file = here::here("data", "cleandata.csv"), row.names = FALSE)

