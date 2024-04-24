library(readxl)
plank_data = read_excel('../final_project/stats_proj_data.xlsx')



male <- (plank_data[plank_data$Gender=='Male', 'Time'])$Time
female <- (plank_data[plank_data$Gender=='Female', 'Time'])$Time

# bar graph showing data participation 
participants <- c(length(male), length(female))
barplot(participants, main="Number of Participants by Gender")


# male vs female box plot
boxplot(male,female,
        names = c("Female", "Male"),
        main = 'Time by Gender',
        ylab = 'Time')


# age groups mean bar graph 
hash <- list()

  # splitting data up by 5 incrs 
for (i in plank_data$Age) {
  age_group <- floor(i / 5) * 5
  if (!age_group %in% names(hash)) {
    hash[[as.character(age_group)]] <- 1
  } else {
    hash[[as.character(age_group)]] <- hash[[as.character(age_group)]] + 1
  }
}
age_labels = c("10-14","15-19","20-24","30-34", "45-49","50-54")

barplot(unlist(hash), 
        names.arg = age_labels,
        main = "Number of individuals by Age Group (step = 5)",
        xlab = "Age Group",
        ylab = "Number of Individuals")


# analyze only those in there 20s

select_few <- (plank_data[floor(plank_data$Age /5 ) == 4, 'Time'])$Time

# age groups graph - mean by 5's



# told vs untold - correlation?




# age group and times two lines by gender





# linear regression

  # dept var = time
  # indep var = gender, age, via 
  # 
  # encode gender and via into 1s and 0s for numberical values
  # preform lineer reg
  # analyze coef? to understand the impact of each indep var on plank dur

lin_reg_data = read_excel('../final_project/stats_proj_data.xlsx')
lin_reg_data$Gender <- as.numeric((factor(lin_reg_data$Gender)))
lin_reg_data$Via <- as.numeric((factor(lin_reg_data$Via)))

linReg_model <- lm(Time ~ Gender+Age, data = lin_reg_data)

summary(linReg_model)


