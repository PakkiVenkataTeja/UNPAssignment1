library(readr)

a <- read_csv("E:/unp/naval_vessel.csv")
colSums(is.na(a))
View(a)

#1st q
x=c(a$`compressor decay state coeff`)
y=c(a$`Turbine decay state coeff`)
d<-density(x,y)
plot(d)

#2nd q
pairs(a)

#3rd q
nv <- (a-min(a)) / (max(a)-min(a))
head(nv)


#4th q
meanmed_df<-data.frame(mean_cdsc=(mean(a$`compressor decay state coeff`)), 
                       mean_tdsc=(mean(a$`Turbine decay state coeff`)),
                       median_cdsc=(median(a$`compressor decay state coeff`)),
                       median_tdcs=(median(a$`col_double`)))


library(MASS)

B <- Boston
colSums(is.na(Boston))
View(Boston)
str(B)
summary(B)


library(MASS)
df <- Titanic
View(df)

#6th q
data_tdf <- tbl_df(Titanic)
male <- subset(data_tdf, Sex=="Male" & Age=="Child" & Survived=="yes")
summarize(male, sum_mcst=sum(n))
male

