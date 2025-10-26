#Upload the data dataset itc255
dfitc255 = read.csv("https://raw.githubusercontent.com/RaihanaAhmadi/R-Project/88a85b6e64249ab62251719444c7d08f480fcf0f/Raihana_Ahmadi_itc255.csv")
head(dfitc255)

AbsFreq = table(dfitc255$Age)
AbsFreq
prop.table(AbsFreq)

RelFreq = round(prop.table(AbsFreq), 2)
RelFreq

head(dfitc255)

# create a new catagorical variable based on age
dfitc255$AgeCategory <- cut(
  dfitc255$Age,
  breaks = c(14, 25, 35, Inf),
  labels = c("Teen", "Young", "Adult"),
  right = TRUE
)

# check the result
head(dfitc255[, c("Age", "AgeCategory")])

#check how many is in each catagory
table(dfitc255$AgeCategory)

# Bar chart using base R
barplot(
  table(dfitc255$AgeCategory),
  main = "Age Category Distribution",
  xlab = "Age Categories",
  ylab = "Frequency",
  col = c("blue", "green", "orange")
)



View(dfitc255)
nrow(dfitc255)


# Create ECDF object
age_ecdf <- ecdf(dfitc255$Age)
age_ecdf(30)

# Basic ECDF plot
plot(age_ecdf,
     main = "Empirical Cumulative Distribution Function of Age",
     xlab = "Age",
     ylab = "F(x) = P(Age ≤ x)",
     col = "blue",
     lwd = 2)

# Add grid for more clarity
grid()
points(dfitc255$Age, age_ecdf(dfitc255$Age), col = "red", pch = 16)

