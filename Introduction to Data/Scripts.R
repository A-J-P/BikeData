#Read Data into R
BikeData <- read.csv("~/UTexasDA/BikeData/BikeData.csv")

#Exploration of the variables
Summary(BikeData)

str(BikeData)

is.na(BikeData)

dim(BikeData)

names(BikeData)

#mean distance travelled by the bicyclist
mean(BikeData$distance)

#Frequency of travel
table(BikeData$cyc_freq)


# number of males and females
table(BikeData$gender)

#average and median age of bicylists
mean(BikeData$age)
median(BikeData$age)

#data associated with female bicyclists
Females<-BikeData[BikeData$gender == "F",]
Females

#mean distance traveled by females and their age
mean(Females$speed)
mean(Females$age)

#cyclist who are employed
employed<-BikeData[BikeData$employed == "1",]
employed

# mean distances for employed cyclists
mean(DistanceEmployed)

# #Age of the 7th rider in the BikeData
BikeData[7, 2]

#student data
studentdata<-BikeData[BikeData$student == 1,]
studentdata

#how oftern students ride
table(studentdata$cyc_freq)

#average distance ridden by the students
mean(studentdata$distance)

#age of the student with user_id=49
studentdata[studentdata$user_id == '49', 2]

#total daily riders
table(BikeData$cyc_freq == "Daily")

#only daily riders
Dailyriders<-BikeData[BikeData$cyc_freq == "Daily",]
Dailyriders

# number of male and female riders
table(Dilyriders$gender)

#ages of daily riders
Ageriders<-Dailyriders$age
Ageriders

mean(Ageriders)
