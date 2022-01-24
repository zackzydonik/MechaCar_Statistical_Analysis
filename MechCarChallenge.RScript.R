library(tidyverse)

#Deliverable 1:Linear Regression to Predict MPG
MechaCar_mpg <- read.csv('Resources/MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
lm_MechaCar = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm_MechaCar) #generate summary statistics

#Deliverable 2: Create Visualizations for the Trip Analysis
Suspension_Coil <- read.csv('Resources/Suspension_Coil.csv',stringsAsFactors = F) #read in dataset
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance = var(PSI), SD = sd(PSI)) #create summary table with multiple columns
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance = var(PSI), SD = sd(PSI)) #create summary table with multiple columns

#Deliverable 3: T-Tests on Suspension Coils
t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI)) #compare sample versus population means
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI,mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI,mu=mean(Suspension_Coil$PSI)) 
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI,mu=mean(Suspension_Coil$PSI)) 

#Deliverable 4: Design a Study Comparing the MechaCar to the Competition
