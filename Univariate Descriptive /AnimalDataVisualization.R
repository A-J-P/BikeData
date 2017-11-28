#Read Animal Data into R

Animal<-read.csv("~/UTexasDA/BikeData/AnimalData.csv")
View(Animal)

#first few
head(Animal)

#Summary of the Data
summary(Animal)

#animal-Gender plot
plot(Animal$Sex, main="Gender Plot", xlab = "Gender", ylab= "Frequency")

#Histogram Age.Intake
hist(Animal$Age.Intake, main = "Animal Age At Intake", xlab="Age @ Intake")

#Data for Male
Male<-Animal[Animal$Sex == "Male",]

sum(is.na(Male))

summary(Male)

boxplot(Male$Max.Life.Expectancy)

plot(Male$Max.Weight, Male$Max.Life.Expectancy, xlab="Weight", ylab="Life Expectancy", main="Life Expectancy vs Weight")

#male ages at intake
Maleage<-Animal$Age.Intake[Animal$Sex == "Male"]
hist(Maleage, main = "Age of Males at intake", xlab = "Age at Intake", ylab= "Frequency")

#Female ages at intake
Femaleage<-Animal$Age.Intake[Animal$Sex == "Female"]
hist(Maleage, main = "Age of Females at intake", xlab = "Age at Intake", ylab= "Frequency", breaks=20)

max(Maleage)
max(Femaleage)

which(Animal$Age.Intake == 17)
Animal[415,]

#total # adopted
AnimalAdopted<-Animal[Animal$Outcome.Type == "Adoption",]

#length of time in shelter
inshelter<-AnimalAdopted$Days.Shelter

hist(inshelter)
sd(inshelter)
mean(inshelter)
median(inshelter)
fivenum(inshelter)
boxplot(inshelter)

#animal that is outlier
which(Animal$Days.Shelter == 211)

Animal[425,]

#Discriptive Statistics

mean(Animal$Age.Intake)
median(Animal$Age.Intake)
sd(Animal$Age.Intake)
fivenum(Animal$Age.Intake)
boxplot(Animal$Age.Intake)

mean(Animal$Weight)
median(Animal$Weight)
sd(Animal$Weight)

#Animal older than 1yer
oldthanyear<-Animal[Animal$Age.Intake >=1,]
table(oldthanyear$Intake.Type)

table(oldthanyear$Animal.Type)

#statistics
hist(oldthanyear$Weight, breaks = 20)
mean(oldthanyear$Weight)
median(oldthanyear$Weight)
sd(oldthanyear$Weight)
fivenum(oldthanyear$Weight)
boxplot(oldthanyear$Weight)

which(Animal$Weight == 18)
