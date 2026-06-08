library(readxl)

# Import Dataset
projectdata_24_25 <- read_excel("projectdata 24-25.xlsx")

# Explore Data
summary(projectdata_24_25)

# Multiple Linear Regression
model1 <- lm(
  rwage ~ pop + `NSVA.agri` + `NSVA.constru` + `NSVA.ind`,
  data = projectdata_24_25
)

# Regression Results
summary(model1)

# Diagnostic Plot
plot(model1, which = 1)
