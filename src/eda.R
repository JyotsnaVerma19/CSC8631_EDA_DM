#library('ProjectTemplate')
#load.project()
png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/test.png",width = 1920, height = 1080)
ggplot(enrolment_1, aes(gender,fill=gender)) + geom_bar()
dev.off()
gender1 = data.frame(enrolment_1$gender[enrolment_1$gender != "Unknown"])
colnames(gender1) = "gender"
gender2 = data.frame(enrolment_2$gender[enrolment_2$gender != "Unknown"])
colnames(gender2) = "gender"
gender3 = data.frame(enrolment_3$gender[enrolment_3$gender != "Unknown"])
colnames(gender3) = "gender"
gender4 = data.frame(enrolment_4$gender[enrolment_4$gender != "Unknown"])
colnames(gender4) = "gender"
gender5 = data.frame(enrolment_5$gender[enrolment_5$gender != "Unknown"])
colnames(gender5) = "gender"
gender6 = data.frame(enrolment_6$gender[enrolment_6$gender != "Unknown"])
colnames(gender6) = "gender"
gender7 = data.frame(enrolment_7$gender[enrolment_7$gender != "Unknown"])
colnames(gender7) = "gender"
#ggplot() +
 # geom_bar(gender1, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  #geom_bar(gender2, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) + 
  #geom_bar(gender3, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  #geom_bar(gender4, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  #geom_bar(gender5, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) + 
  #geom_bar(gender6, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  #geom_bar(gender7, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) 
  
gender_count1 = data.frame(t(data.frame(table(gender1))))
colnames(gender_count1) =  c("female", "male", "nonbinary", "other")
gender_count1 = gender_count1[!(row.names(gender_count1) %in% c('gender1')),]
gender_count1

gender_count2 = data.frame(t(data.frame(table(gender2))))
colnames(gender_count2) =  c("female", "male", "nonbinary", "other")
gender_count2 = gender_count2[!(row.names(gender_count2) %in% c('gender2')),]
gender_count2

gender_count3 = data.frame(t(data.frame(table(gender3))))
colnames(gender_count3) =  c("female", "male", "nonbinary", "other")
gender_count3 = gender_count3[!(row.names(gender_count3) %in% c('gender3')),]
gender_count3

nonbinary = c(0)

gender_count4 = (data.frame(table(gender4)))
gender_count4 = rbind(gender_count4, nonbinary)
levels(gender_count4$gender4) = c("male", "female", "other", "nonbinary")
gender_count4$gender4[4] = "nonbinary"
gender_count4 = gender_count4[, 1:2]
gender_count4 = data.frame(t(gender_count4))
colnames(gender_count4) =  c("male", "female", "other", "nonbinary")
gender_count4 = gender_count4[!(row.names(gender_count4) %in% c('gender4')),]
gender_count4 %>% select(order(colnames(.)))

gender_count5 = (data.frame(table(gender5)))
gender_count5 = rbind(gender_count5, nonbinary)
levels(gender_count5$gender5) = c("male", "female", "other", "nonbinary")
gender_count5$gender5[4] = "nonbinary"
gender_count5 = gender_count5[, 1:2]
gender_count5 = data.frame(t(gender_count5))
colnames(gender_count5) =  c("male", "female", "other", "nonbinary")
gender_count5 = gender_count5[!(row.names(gender_count5) %in% c('gender5')),]
gender_count5 %>% select(order(colnames(.)))

gender_count6 = (data.frame(table(gender6)))
gender_count6 = rbind(gender_count6, nonbinary)
levels(gender_count6$gender6) = c("male", "female", "other", "nonbinary")
gender_count6$gender6[4] = "nonbinary"
gender_count6 = gender_count6[, 1:2]
gender_count6 = data.frame(t(gender_count6))
colnames(gender_count6) =  c("male", "female", "other", "nonbinary")
gender_count6 = gender_count6[!(row.names(gender_count6) %in% c('gender6')),]
gender_count6 %>% select(order(colnames(.)))

gender_count7 = (data.frame(table(gender7)))
gender_count7 = rbind(gender_count7, nonbinary)
levels(gender_count7$gender7) = c("male", "female", "other", "nonbinary")
gender_count7$gender7[4] = "nonbinary"
gender_count7 = gender_count7[, 1:2]
gender_count7 = data.frame(t(gender_count7))
colnames(gender_count7) =  c("male", "female", "other", "nonbinary")
gender_count7 = gender_count7[!(row.names(gender_count7) %in% c('gender7')),]
gender_count7 %>% select(order(colnames(.)))


a = rbind(gender_count1,gender_count2,gender_count3,gender_count4,gender_count5,gender_count6,gender_count7)
a


b = read.table(text = "Iteration female male nonbinary other
Batch1     767  919         6     6
Batch2    339  411         4     2
Batch3    174  195         2     1
Batch4    244  168         0     2
Batch5    227  205         0     1
Batch6    122  149         0     1
Batch7    115   98         0     1", header = T)


learners_gender = b %>%
  gather(key, value, -Iteration) %>% 
  ggplot(aes(x=Iteration , y=value, fill = key)) +
  geom_col(position = "dodge") 

png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/gender_learners.png",width = 1920, height = 1080)
ggarrange(learners_gender)
dev.off()

# Education level
highest_education_level1 = data.frame(enrolment_1$highest_education_level[enrolment_1$highest_education_level != "Unknown"])
colnames(highest_education_level1) = "highest_education_level"


highest_education_level2 = data.frame(enrolment_2$highest_education_level[enrolment_2$highest_education_level != "Unknown"])
colnames(highest_education_level2) = "highest_education_level"
highest_education_level3 = data.frame(enrolment_3$highest_education_level[enrolment_3$highest_education_level != "Unknown"])
colnames(highest_education_level3) = "highest_education_level"
highest_education_level4 = data.frame(enrolment_4$highest_education_level[enrolment_4$highest_education_level != "Unknown"])
colnames(highest_education_level4) = "highest_education_level"
highest_education_level5 = data.frame(enrolment_5$highest_education_level[enrolment_5$highest_education_level != "Unknown"])
colnames(highest_education_level5) = "highest_education_level"
highest_education_level6 = data.frame(enrolment_6$highest_education_level[enrolment_6$highest_education_level != "Unknown"])
colnames(highest_education_level6) = "highest_education_level"
highest_education_level7 = data.frame(enrolment_7$highest_education_level[enrolment_7$highest_education_level != "Unknown"])
colnames(highest_education_level7) = "highest_education_level"


h1 = ggplot() +
  geom_bar(highest_education_level1, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
h2 = ggplot() +
  geom_bar(highest_education_level2, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
h3 = ggplot() +
  geom_bar(highest_education_level3, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
h4 = ggplot() +
  geom_bar(highest_education_level4, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
h5 = ggplot() +
  geom_bar(highest_education_level5, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
h6 = ggplot() +
  geom_bar(highest_education_level6, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
h7 = ggplot() +
  geom_bar(highest_education_level7, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750))+ theme(axis.text.x = element_text(angle = 90))


install.packages("ggpubr")
library(ggpubr)
png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/learners_edu_lvl.png",width = 1920, height = 1080)
ggarrange(h1,h2,h3,h4,h5,h6,h7)
dev.off()


#Checking which gender tends to complete the course

highest_education_level1 = data.frame(enrolment_1$highest_education_level[enrolment_1$highest_education_level != "Unknown"])
colnames(highest_education_level1) = "highest_education_level"

write.csv(fully_particiapted_df1,"C:/Users/Payal/Desktop/Future_Learn_EDA_DM/Sample/trial_participation.csv", row.names = FALSE)


# Highest education level of ppl who finished the course

# for first batch
idx_fully_participated1 = which(enrolment_1$fully_participated_at != "")
idx_fully_participated1

fully_particiapted_df1 = enrolment_1[idx_fully_participated1,]

high_edu_lvl1 = data.frame(fully_particiapted_df1$highest_education_level[fully_particiapted_df1$highest_education_level != "Unknown"])
colnames(high_edu_lvl1) = "highest_education_level"

#ggplot() +
 # geom_bar(high_edu_lvl1, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) 

# for second batch
idx_fully_participated2 = which(enrolment_2$fully_participated_at != "")
idx_fully_participated2

fully_particiapted_df2 = enrolment_2[idx_fully_participated2,]

high_edu_lvl2 = data.frame(fully_particiapted_df2$highest_education_level[fully_particiapted_df2$highest_education_level != "Unknown"])
colnames(high_edu_lvl2) = "highest_education_level"

#ggplot() +
 # geom_bar(high_edu_lvl2, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())

# for third batch
idx_fully_participated3 = which(enrolment_3$fully_participated_at != "")
idx_fully_participated3

fully_particiapted_df3 = enrolment_3[idx_fully_participated3,]

high_edu_lvl3 = data.frame(fully_particiapted_df3$highest_education_level[fully_particiapted_df3$highest_education_level != "Unknown"])
colnames(high_edu_lvl3) = "highest_education_level"

#ggplot() +
 # geom_bar(high_edu_lvl3, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())

# for 4th batch

idx_fully_participated4 = which(enrolment_4$fully_participated_at != "")
idx_fully_participated4

fully_particiapted_df4 = enrolment_4[idx_fully_participated4,]

high_edu_lvl4 = data.frame(fully_particiapted_df4$highest_education_level[fully_particiapted_df4$highest_education_level != "Unknown"])
colnames(high_edu_lvl4) = "highest_education_level"

#ggplot() +
 # geom_bar(high_edu_lvl4, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())

    
# for 5th batch

idx_fully_participated5 = which(enrolment_5$fully_participated_at != "")
idx_fully_participated5

fully_particiapted_df5 = enrolment_5[idx_fully_participated5,]

high_edu_lvl5 = data.frame(fully_particiapted_df5$highest_education_level[fully_particiapted_df5$highest_education_level != "Unknown"])
colnames(high_edu_lvl5) = "highest_education_level"

#ggplot() +
 # geom_bar(high_edu_lvl5, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())


# for 6th batch

idx_fully_participated6 = which(enrolment_6$fully_participated_at != "")
idx_fully_participated6

fully_particiapted_df6 = enrolment_6[idx_fully_participated6,]

high_edu_lvl6 = data.frame(fully_particiapted_df6$highest_education_level[fully_particiapted_df6$highest_education_level != "Unknown"])
colnames(high_edu_lvl6) = "highest_education_level"

#ggplot() +
 # geom_bar(high_edu_lvl6, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())

# for seventh batch

idx_fully_participated7 = which(enrolment_7$fully_participated_at != "")
idx_fully_participated7

fully_particiapted_df7 = enrolment_7[idx_fully_participated7,]

high_edu_lvl7 = data.frame(fully_particiapted_df7$highest_education_level[fully_particiapted_df7$highest_education_level != "Unknown"])
colnames(high_edu_lvl7) = "highest_education_level"

#ggplot() +
 # geom_bar(high_edu_lvl7, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())




######



h1_fp = ggplot() +
  geom_bar(high_edu_lvl1, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,300)) + theme(axis.text.x = element_text(angle = 90))
h2_fp = ggplot() +
  geom_bar(high_edu_lvl2, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,300)) + theme(axis.text.x = element_text(angle = 90))
h3_fp = ggplot() +
  geom_bar(high_edu_lvl3, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,300)) + theme(axis.text.x = element_text(angle = 90))
h4_fp = ggplot() +
  geom_bar(high_edu_lvl4, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,300)) + theme(axis.text.x = element_text(angle = 90))
h5_fp = ggplot() +
  geom_bar(high_edu_lvl5, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,300)) + theme(axis.text.x = element_text(angle = 90))
h6_fp = ggplot() +
  geom_bar(high_edu_lvl6, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,300)) + theme(axis.text.x = element_text(angle = 90))
h7_fp = ggplot() +
  geom_bar(high_edu_lvl7, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,300))+ theme(axis.text.x = element_text(angle = 90))


png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/participants_edu_lvl.png",width = 1920, height = 1080)
ggarrange(h1_fp,h2_fp,h3_fp,h4_fp,h5_fp,h6_fp,h7_fp)
dev.off()





#Checking the employment status of each learner from all batches

employment_status_1 = data.frame(enrolment_1$employment_status[enrolment_1$employment_status != "Unknown"])
colnames(employment_status_1) = "employment_status"
employment_status_2 = data.frame(enrolment_2$employment_status[enrolment_2$employment_status != "Unknown"])
colnames(employment_status_2) = "employment_status"
employment_status_3 = data.frame(enrolment_3$employment_status[enrolment_3$employment_status != "Unknown"])
colnames(employment_status_3) = "employment_status"
employment_status_4 = data.frame(enrolment_4$employment_status[enrolment_4$employment_status != "Unknown"])
colnames(employment_status_4) = "employment_status"
employment_status_5 = data.frame(enrolment_5$employment_status[enrolment_5$employment_status != "Unknown"])
colnames(employment_status_5) = "employment_status"
employment_status_6 = data.frame(enrolment_6$employment_status[enrolment_6$employment_status != "Unknown"])
colnames(employment_status_6) = "employment_status"
employment_status_7 = data.frame(enrolment_7$employment_status[enrolment_7$employment_status != "Unknown"])
colnames(employment_status_7) = "employment_status"

# Plotting the employment status of all learners on the graph

emp_stat1 = ggplot() +
  geom_bar(employment_status_1, mapping = aes(employment_status,fill=employment_status), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
emp_stat2 = ggplot() +
  geom_bar(employment_status_2, mapping = aes(employment_status,fill=employment_status), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
emp_stat3 = ggplot() +
  geom_bar(employment_status_3, mapping = aes(employment_status,fill=employment_status), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
emp_stat4 = ggplot() +
  geom_bar(employment_status_4, mapping = aes(employment_status,fill=employment_status), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
emp_stat5 = ggplot() +
  geom_bar(employment_status_5, mapping = aes(employment_status,fill=employment_status), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
emp_stat6 = ggplot() +
  geom_bar(employment_status_6, mapping = aes(employment_status,fill=employment_status), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750)) + theme(axis.text.x = element_text(angle = 90))
emp_stat7 = ggplot() +
  geom_bar(employment_status_7, mapping = aes(employment_status,fill=employment_status), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,750))+ theme(axis.text.x = element_text(angle = 90))

png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/employment_Status_learners.png",width = 1920, height = 1080)
ggarrange(emp_stat1,emp_stat2,emp_stat3,emp_stat4,emp_stat5,emp_stat6,emp_stat7)
dev.off()


# checking the employment area of all the learners
employment_area_1 = data.frame(enrolment_1$employment_area[enrolment_1$employment_area != "Unknown"])
colnames(employment_area_1) = "employment_area"
employment_area_2 = data.frame(enrolment_2$employment_area[enrolment_2$employment_area != "Unknown"])
colnames(employment_area_2) = "employment_area"
employment_area_3 = data.frame(enrolment_3$employment_area[enrolment_3$employment_area != "Unknown"])
colnames(employment_area_3) = "employment_area"
employment_area_4 = data.frame(enrolment_4$employment_area[enrolment_4$employment_area != "Unknown"])
colnames(employment_area_4) = "employment_area"
employment_area_5 = data.frame(enrolment_5$employment_area[enrolment_5$employment_area != "Unknown"])
colnames(employment_area_5) = "employment_area"
employment_area_6 = data.frame(enrolment_6$employment_area[enrolment_6$employment_area != "Unknown"])
colnames(employment_area_6) = "employment_area"
employment_area_7 = data.frame(enrolment_7$employment_area[enrolment_7$employment_area != "Unknown"])
colnames(employment_area_7) = "employment_area"

# Plotting the employment area of all learners on the graph

emp_area1 = ggplot() +
  geom_bar(employment_area_1, mapping = aes(employment_area,fill=employment_area), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,500)) + theme(axis.text.x = element_text(angle = 90))
emp_area2 = ggplot() +
  geom_bar(employment_area_2, mapping = aes(employment_area,fill=employment_area), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,500)) + theme(axis.text.x = element_text(angle = 90))
emp_area3 = ggplot() +
  geom_bar(employment_area_3, mapping = aes(employment_area,fill=employment_area), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,500)) + theme(axis.text.x = element_text(angle = 90))
emp_area4 = ggplot() +
  geom_bar(employment_area_4, mapping = aes(employment_area,fill=employment_area), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,500)) + theme(axis.text.x = element_text(angle = 90))
emp_area5 = ggplot() +
  geom_bar(employment_area_5, mapping = aes(employment_area,fill=employment_area), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,500)) + theme(axis.text.x = element_text(angle = 90))
emp_area6 = ggplot() +
  geom_bar(employment_area_6, mapping = aes(employment_area,fill=employment_area), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,500)) + theme(axis.text.x = element_text(angle = 90))
emp_area7 = ggplot() +
  geom_bar(employment_area_7, mapping = aes(employment_area,fill=employment_area), stat = "count", position = position_dodge()) + 
  coord_cartesian(ylim = c(0,500))+ theme(axis.text.x = element_text(angle = 90))

png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/employment_area_learners.png",width = 1920, height = 1080)
ggarrange(emp_area1,emp_area2,emp_area3,emp_area4,emp_area5,emp_area6,emp_area7)
dev.off()


##Checking the countries

#countries_df1 <- enrolment_1 %>% filter(year=="2007") %>% dplyr::select(-year)

# Most basic bubble plot



countries_df1 = data.frame(table(enrolment_1$detected_country))
countries_df1
plot(countries_df1)
points(countries_df1)


###### I CAN USE STACKED BAR CHART  AS WELL TO PLOT MULTIPLRE CATEGORICAL VARIABLES
## CLUSTERED BARCHART IS BETTER OPTION BECAUSE OF UNDERSTANDING
###



dftrial <- select(enrolment_1,gender, employment_status)

ggplot(dftrial, aes(employment_status, ..count..)) + geom_bar(aes(fill = gender), position = "dodge")


### overall view of employment area of the learners who are interested in the course .. (7 batches)
install.packages("janitor")
library(janitor)
emp_area_count1 = data.frame(t(data.frame(table(employment_area_1))))
emp_area_count1 = emp_area_count1 %>%
  row_to_names(row_number = 1)
emp_area_count1 %>% select(order(colnames(.)))

emp_area_count2 = data.frame(t(data.frame(table(employment_area_2))))
emp_area_count2 = emp_area_count2 %>%
  row_to_names(row_number = 1)
emp_area_count2 %>% select(order(colnames(.)))

emp_area_count3 = data.frame(t(data.frame(table(employment_area_3))))
emp_area_count3 = emp_area_count3 %>%
  row_to_names(row_number = 1)
emp_area_count3 %>% select(order(colnames(.)))

emp_area_count4 = data.frame(t(data.frame(table(employment_area_4))))
emp_area_count4 = emp_area_count4 %>%
  row_to_names(row_number = 1)
emp_area_count4 %>% select(order(colnames(.)))

emp_area_count5 = data.frame(t(data.frame(table(employment_area_5))))
emp_area_count5 = emp_area_count5 %>%
  row_to_names(row_number = 1)
emp_area_count5 %>% select(order(colnames(.)))

emp_area_count6 = data.frame(t(data.frame(table(employment_area_6))))
emp_area_count6 = emp_area_count6 %>%
  row_to_names(row_number = 1)
emp_area_count6 = cbind(emp_area_count6,recruitment_and_pr = c(0))
emp_area_count6 %>% select(order(colnames(.)))

emp_area_count7 = data.frame(t(data.frame(table(employment_area_7))))
emp_area_count7 = emp_area_count7 %>%
  row_to_names(row_number = 1)
emp_area_count7 = cbind(emp_area_count7,energy_and_utilities = c(0))
emp_area_count7 %>% select(order(colnames(.)))
                        
emp_area_count = rbind(emp_area_count1,emp_area_count2,emp_area_count3,emp_area_count4,emp_area_count5,emp_area_count6,emp_area_count7)
emp_area_count = cbind(emp_area_count, Batch = c("Batch 1", "Batch 2","Batch 3","Batch 4","Batch 5","Batch 6","Batch 7"))

row.names(emp_area_count) = NULL

emp_area_plot = emp_area_count %>%
  gather(key, value, -Batch) %>% 
  ggplot(aes(x=Batch , y=value, fill = key)) +
  geom_col(position = "dodge") 

png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/gender_learners.png",width = 1920, height = 1080)
ggarrange(learners_gender)
dev.off()












