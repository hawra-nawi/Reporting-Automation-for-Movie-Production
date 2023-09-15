### Quick Data Cleaning and Data Preparation for the Data Visualisation ----

## 1) Loading  the Data ----
movies <- read.csv("Data/movies.csv")
# Let have a quick at look at the data:
summary(movies)
# There are some missing values

## 2) Removing Missing Observation ----
# Removing NAs
movies_new<- na.omit(movies) 
# Checking if the NAs was removed
colSums(is.na(movies_new))
# Lets now check if there are any empty observations
colSums(movies_new == "")
# There are some empty observations, therefore will remove these using the following command:
movies_new <- movies_new[Reduce(`&`, lapply(movies_new, 
                              function(x) !(x==""))),]
# Let's now double check if this was dealt with accordingly
colSums(movies_new == "")

## 3) Modifying and Preparing the Dataset for Visualisation ----

# Loading some libraries required for modification within the dataset
library(dplyr)
library(tidyr)
library(stringr)

### 3.1) Fixing the Release of Date Column ----

# Splitting the released column
movies_new_1 <- movies_new %>% 
   separate(released, c("Release Month", "Release Date", "Release Year", 
                        "Country of Release 1", "Country of Release 2"))
# There was some NAs introduced in the process, therefore will remove these
colSums(is.na(movies_new_1))
movies_new_1<- na.omit(movies_new_1) 

# Create a new object
movies_new_2 <- movies_new_1

# Combine the Country of Release 1 and Country of Release 2 together
movies_new_2$`Release of Country` <- paste(movies_new_2$`Country of Release 1`, 
                                           movies_new_2$`Country of Release 2`)
# Checking the new column
str(movies_new_2)
table(movies_new_2$`Release of Country`)

# lets fix the years to centuries
table(movies_new_2$`Release Year`)
typeof(movies_new_2$`Release Year`)

#https://stackoverflow.com/questions/28285480/how-to-replace-multiple-strings-with-the-same-in-r
# Changing the years to centuries 
movies_new_2$`Release Year` <- sub("1980|1981|1982|1983|1984|1985|1986|1987|1988|1989", "1980", movies_new_2$`Release Year`)
movies_new_2$`Release Year` <- sub("1990|1991|1992|1993|1994|1995|1996|1997|1998|1999", "1990", movies_new_2$`Release Year`)
movies_new_2$`Release Year` <- sub("2000|2001|2002|2003|2004|2005|2006|2007|2008|2009|2010|2010|2011|2012|2013|2014|2015|2016|2017|2018|2019|2020", "2000", movies_new_2$`Release Year`)

# Let's check the frequencies of the Release Year to see if the changes have been made accordingly
table(movies_new_2$`Release Year`)
# As the `table()` function shows, there is an incorrect observation in this attribute, will need to remove this:
movies_new_2<-movies_new_2[!(movies_new_2$`Release Year`=="United"),]

# Lets check if observations in the release date and month is all good as well:
table(movies_new_2$`Release Month`)  # all good
table(movies_new_2$`Release Date`)   # all good

# Now that the release dates are all fixed, we can now combine them together Lets now combine Release Date, Release Year and Release Month into 1
movies_new_2$`Date of Release` <- paste(movies_new_2$`Release Date`,
                                        movies_new_2$`Release Month`,
                                         movies_new_2$`Release Year`)
# Lets check the changes made
table(movies_new_2$`Date of Release`)

# Removing Country of Release 1 and Country of Release 1 and release dates
movies_new_2 <- movies_new_2[ , -c(5:9)]
# lets check the changes made
str(movies_new_2)

### 3.2) Fixing the company ----

# need to encode companies in order to produce the treemap
# this will involve subsetting the dataset that will include the top 5 companies 
# then creating a new variables which will be a numerical version of the company column

# Let's find the top 5 companies using the `table()` function
View(table(movies_new_3$company))

# Create an another new object
movies_new_3 <- movies_new_2%>%
  filter(str_detect(company, "Universal Pictures|Columbia Pictures|Warner Bros.|Paramount Pictures|Twentieth Century Fox"))

# lets compare if we have extarcted correctly
View(table(movies_new_2$company))
View(table(movies_new_3$company))
table(movies_new_3$company)
# There are some companies that been extracted with similar names as the top 5 
# The command below is used to get rid of these
movies_new_3 <- filter(movies_new_3, 
                       company != "Warner Bros. Pictures" & company != "Warner Bros. Digital Distribution" & 
                         company != "Universal Pictures International (UPI)" & company != "Columbia Pictures Film Production Asia" & 
                         company !="Warner Bros. Family Entertainment" & company != "Warner Bros. Animation" & company != "Columbia Pictures Industries" & 
                         company !="Twentieth Century Fox Animation"
                       )

# Let's double check if comapny was corrected accordingly
table(movies_new_3$company)

# now do the encoding
# Create a new column as this will be the numerical version of the string company
movies_new_3$`company numerical` <- movies_new_3$company
movies_new_3["company numerical"][movies_new_3["company numerical"] == "Universal Pictures"] <- "1"
movies_new_3["company numerical"][movies_new_3["company numerical"] == "Columbia Pictures"] <- "2"
movies_new_3["company numerical"][movies_new_3["company numerical"] == "Warner Bros."] <- "3"
movies_new_3["company numerical"][movies_new_3["company numerical"] == "Paramount Pictures"] <- "4"
movies_new_3["company numerical"][movies_new_3["company numerical"] == "Twentieth Century Fox"] <- "5"

### 3.3) Fixing the country ----
# convert this new attribute to numerical
movies_new_3$`company numerical` <- as.numeric(movies_new_3$`company numerical`)

# Let now fix the country of release to Regions
table(movies_new_3$country)

movies_new_3["country"][movies_new_3["country"] == "Austria"] <- "Europe"
movies_new_3["country"][movies_new_3["country"] == "Czech Republic"] <- "Europe"
movies_new_3["country"][movies_new_3["country"] == "Denmark"] <- "Europe"
movies_new_3["country"][movies_new_3["country"] == "Finland"] <- "Europe"
movies_new_3["country"][movies_new_3["country"] == "France"] <- "Europe"
movies_new_3["country"][movies_new_3["country"] == "Germany"] <- "Europe"
movies_new_3["country"][movies_new_3["country"] == "Ireland"] <- "Europe"
movies_new_3["country"][movies_new_3["country"] == "Malta"] <- "Europe"
movies_new_3["country"][movies_new_3["country"] == "Sweden"] <- "Europe"

# Let's double check the changes made
table(movies_new_3$country)

## 4) Writing and saving the new modified file for data visualisation ----

# the dataset is ready for data visualisation, will write and save the data as a new csv file
write.csv(movies_new_3, "Data/movies_modified.csv", row.names = F)
# This file will be loaded in excel in order to used in tableau
