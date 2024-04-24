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

barplot(age_counts, 
        names.arg = ,
        main = "Number of individuals by Age Group (step = 5)",
        xlab = "Age Group",
        ylab = "Number of Individuals")

# age groups graph - mean by 5's

# told vs untold - correlation?

# age group and times two lines by gender

# 