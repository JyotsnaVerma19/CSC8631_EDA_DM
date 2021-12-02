#library('ProjectTemplate')
#load.project()

## Basic understanding of data
#For batch 1:
(dim(archetype_1))#checking the dimension of the archetype dataset
(summary((archetype_1)))
(dim(enrolment_1))
(summary((enrolment_1)))
(dim(leaving_survey_1))
(summary((leaving_survey_1)))
(dim(question_response_1))
(summary((question_response_1)))
(dim(step_activity_1))
(summary((step_activity_1)))
(dim(weekly_sentiment_1))
(summary((weekly_sentiment_1)))
colnames(enrolment_1)
unique(enrolment_1$role)








gender_plot = ggplot(enrolment_1, aes(gender,fill=gender)) + geom_bar()

# gender1 = data.frame(enrolment_1$gender[enrolment_1$gender != "Unknown"])
# colnames(gender1) = "gender"
# gender2 = data.frame(enrolment_2$gender[enrolment_2$gender != "Unknown"])
# colnames(gender2) = "gender"
# gender3 = data.frame(enrolment_3$gender[enrolment_3$gender != "Unknown"])
# colnames(gender3) = "gender"
# gender4 = data.frame(enrolment_4$gender[enrolment_4$gender != "Unknown"])
# colnames(gender4) = "gender"
# gender5 = data.frame(enrolment_5$gender[enrolment_5$gender != "Unknown"])
# colnames(gender5) = "gender"
# gender6 = data.frame(enrolment_6$gender[enrolment_6$gender != "Unknown"])
# colnames(gender6) = "gender"
# gender7 = data.frame(enrolment_7$gender[enrolment_7$gender != "Unknown"])
# colnames(gender7) = "gender"
#   
# gender_count1 = data.frame(t(data.frame(table(gender1))))
# colnames(gender_count1) =  c("female", "male", "nonbinary", "other")
# gender_count1 = gender_count1[!(row.names(gender_count1) %in% c('gender1')),]
# gender_count1
# 
# gender_count2 = data.frame(t(data.frame(table(gender2))))
# colnames(gender_count2) =  c("female", "male", "nonbinary", "other")
# gender_count2 = gender_count2[!(row.names(gender_count2) %in% c('gender2')),]
# gender_count2
# 
# gender_count3 = data.frame(t(data.frame(table(gender3))))
# colnames(gender_count3) =  c("female", "male", "nonbinary", "other")
# gender_count3 = gender_count3[!(row.names(gender_count3) %in% c('gender3')),]
# gender_count3
# 
# nonbinary = c(0)
# 
# gender_count4 = (data.frame(table(gender4)))
# gender_count4 = rbind(gender_count4, nonbinary)
# levels(gender_count4$gender4) = c("male", "female", "other", "nonbinary")
# gender_count4$gender4[4] = "nonbinary"
# gender_count4 = gender_count4[, 1:2]
# gender_count4 = data.frame(t(gender_count4))
# colnames(gender_count4) =  c("male", "female", "other", "nonbinary")
# gender_count4 = gender_count4[!(row.names(gender_count4) %in% c('gender4')),]
# gender_count4 %>% select(order(colnames(.)))
# 
# gender_count5 = (data.frame(table(gender5)))
# gender_count5 = rbind(gender_count5, nonbinary)
# levels(gender_count5$gender5) = c("male", "female", "other", "nonbinary")
# gender_count5$gender5[4] = "nonbinary"
# gender_count5 = gender_count5[, 1:2]
# gender_count5 = data.frame(t(gender_count5))
# colnames(gender_count5) =  c("male", "female", "other", "nonbinary")
# gender_count5 = gender_count5[!(row.names(gender_count5) %in% c('gender5')),]
# gender_count5 %>% select(order(colnames(.)))
# 
# gender_count6 = (data.frame(table(gender6)))
# gender_count6 = rbind(gender_count6, nonbinary)
# levels(gender_count6$gender6) = c("male", "female", "other", "nonbinary")
# gender_count6$gender6[4] = "nonbinary"
# gender_count6 = gender_count6[, 1:2]
# gender_count6 = data.frame(t(gender_count6))
# colnames(gender_count6) =  c("male", "female", "other", "nonbinary")
# gender_count6 = gender_count6[!(row.names(gender_count6) %in% c('gender6')),]
# gender_count6 %>% select(order(colnames(.)))
# 
# gender_count7 = (data.frame(table(gender7)))
# gender_count7 = rbind(gender_count7, nonbinary)
# levels(gender_count7$gender7) = c("male", "female", "other", "nonbinary")
# gender_count7$gender7[4] = "nonbinary"
# gender_count7 = gender_count7[, 1:2]
# gender_count7 = data.frame(t(gender_count7))
# colnames(gender_count7) =  c("male", "female", "other", "nonbinary")
# gender_count7 = gender_count7[!(row.names(gender_count7) %in% c('gender7')),]
# gender_count7 %>% select(order(colnames(.)))
# 
# 
# a = rbind(gender_count1,gender_count2,gender_count3,gender_count4,gender_count5,gender_count6,gender_count7)
# a
# 
# 
# b = read.table(text = "Iteration female male nonbinary other
# Batch1     767  919         6     6
# Batch2    339  411         4     2
# Batch3    174  195         2     1
# Batch4    244  168         0     2
# Batch5    227  205         0     1
# Batch6    122  149         0     1
# Batch7    115   98         0     1", header = T)


learners_gender = b %>%
  gather(key, value, -Iteration) %>% 
  ggplot(aes(x=Iteration , y=value, fill = key)) +
  geom_col(position = "dodge") 

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/gender_learners.png",width = 1920, height = 1080)
# grid.arrange(learners_gender)
# dev.off()

# Education level
# highest_education_level1 = data.frame(enrolment_1$highest_education_level[enrolment_1$highest_education_level != "Unknown"])
# colnames(highest_education_level1) = "highest_education_level"
# 
# 
# highest_education_level2 = data.frame(enrolment_2$highest_education_level[enrolment_2$highest_education_level != "Unknown"])
# colnames(highest_education_level2) = "highest_education_level"
# highest_education_level3 = data.frame(enrolment_3$highest_education_level[enrolment_3$highest_education_level != "Unknown"])
# colnames(highest_education_level3) = "highest_education_level"
# highest_education_level4 = data.frame(enrolment_4$highest_education_level[enrolment_4$highest_education_level != "Unknown"])
# colnames(highest_education_level4) = "highest_education_level"
# highest_education_level5 = data.frame(enrolment_5$highest_education_level[enrolment_5$highest_education_level != "Unknown"])
# colnames(highest_education_level5) = "highest_education_level"
# highest_education_level6 = data.frame(enrolment_6$highest_education_level[enrolment_6$highest_education_level != "Unknown"])
# colnames(highest_education_level6) = "highest_education_level"
# highest_education_level7 = data.frame(enrolment_7$highest_education_level[enrolment_7$highest_education_level != "Unknown"])
# colnames(highest_education_level7) = "highest_education_level"


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


edu_lvl_plot = grid.arrange(h1,h2,h3,h4,h5,h6,h7)


# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/learners_edu_lvl.png",width = 1920, height = 1080)
# dev.off()


#Checking which gender tends to complete the course

# highest_education_level1 = data.frame(enrolment_1$highest_education_level[enrolment_1$highest_education_level != "Unknown"])
# colnames(highest_education_level1) = "highest_education_level"
# 
# 
# 
# # Highest education level of ppl who finished the course
# 
# # for first batch
# idx_fully_participated1 = which(enrolment_1$fully_participated_at != "")
# idx_fully_participated1
# 
# fully_particiapted_df1 = enrolment_1[idx_fully_participated1,]
# 
# high_edu_lvl1 = data.frame(fully_particiapted_df1$highest_education_level[fully_particiapted_df1$highest_education_level != "Unknown"])
# colnames(high_edu_lvl1) = "highest_education_level"
# 
# #ggplot() +
#  # geom_bar(high_edu_lvl1, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge()) 
# 
# # for second batch
# idx_fully_participated2 = which(enrolment_2$fully_participated_at != "")
# idx_fully_participated2
# 
# fully_particiapted_df2 = enrolment_2[idx_fully_participated2,]
# 
# high_edu_lvl2 = data.frame(fully_particiapted_df2$highest_education_level[fully_particiapted_df2$highest_education_level != "Unknown"])
# colnames(high_edu_lvl2) = "highest_education_level"
# 
# #ggplot() +
#  # geom_bar(high_edu_lvl2, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())
# 
# # for third batch
# idx_fully_participated3 = which(enrolment_3$fully_participated_at != "")
# idx_fully_participated3
# 
# fully_particiapted_df3 = enrolment_3[idx_fully_participated3,]
# 
# high_edu_lvl3 = data.frame(fully_particiapted_df3$highest_education_level[fully_particiapted_df3$highest_education_level != "Unknown"])
# colnames(high_edu_lvl3) = "highest_education_level"
# 
# #ggplot() +
#  # geom_bar(high_edu_lvl3, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())
# 
# # for 4th batch
# 
# idx_fully_participated4 = which(enrolment_4$fully_participated_at != "")
# idx_fully_participated4
# 
# fully_particiapted_df4 = enrolment_4[idx_fully_participated4,]
# 
# high_edu_lvl4 = data.frame(fully_particiapted_df4$highest_education_level[fully_particiapted_df4$highest_education_level != "Unknown"])
# colnames(high_edu_lvl4) = "highest_education_level"
# 
# #ggplot() +
#  # geom_bar(high_edu_lvl4, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())
# 
#     
# # for 5th batch
# 
# idx_fully_participated5 = which(enrolment_5$fully_participated_at != "")
# idx_fully_participated5
# 
# fully_particiapted_df5 = enrolment_5[idx_fully_participated5,]
# 
# high_edu_lvl5 = data.frame(fully_particiapted_df5$highest_education_level[fully_particiapted_df5$highest_education_level != "Unknown"])
# colnames(high_edu_lvl5) = "highest_education_level"
# 
# #ggplot() +
#  # geom_bar(high_edu_lvl5, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())
# 
# 
# # for 6th batch
# 
# idx_fully_participated6 = which(enrolment_6$fully_participated_at != "")
# idx_fully_participated6
# 
# fully_particiapted_df6 = enrolment_6[idx_fully_participated6,]
# 
# high_edu_lvl6 = data.frame(fully_particiapted_df6$highest_education_level[fully_particiapted_df6$highest_education_level != "Unknown"])
# colnames(high_edu_lvl6) = "highest_education_level"
# 
# #ggplot() +
#  # geom_bar(high_edu_lvl6, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())
# 
# # for seventh batch
# 
# idx_fully_participated7 = which(enrolment_7$fully_participated_at != "")
# idx_fully_participated7
# 
# fully_particiapted_df7 = enrolment_7[idx_fully_participated7,]
# 
# high_edu_lvl7 = data.frame(fully_particiapted_df7$highest_education_level[fully_particiapted_df7$highest_education_level != "Unknown"])
# colnames(high_edu_lvl7) = "highest_education_level"
# 
# #ggplot() +
#  # geom_bar(high_edu_lvl7, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", position = position_dodge())
# 
# 
# 

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


edu_lvl_fp_plot = grid.arrange(h1_fp,h2_fp,h3_fp,h4_fp,h5_fp,h6_fp,h7_fp)


# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/participants_edu_lvl.png",width = 1920, height = 1080)
# dev.off()





#Checking the employment status of each learner from all batches

# employment_status_1 = data.frame(enrolment_1$employment_status[enrolment_1$employment_status != "Unknown"])
# colnames(employment_status_1) = "employment_status"
# employment_status_2 = data.frame(enrolment_2$employment_status[enrolment_2$employment_status != "Unknown"])
# colnames(employment_status_2) = "employment_status"
# employment_status_3 = data.frame(enrolment_3$employment_status[enrolment_3$employment_status != "Unknown"])
# colnames(employment_status_3) = "employment_status"
# employment_status_4 = data.frame(enrolment_4$employment_status[enrolment_4$employment_status != "Unknown"])
# colnames(employment_status_4) = "employment_status"
# employment_status_5 = data.frame(enrolment_5$employment_status[enrolment_5$employment_status != "Unknown"])
# colnames(employment_status_5) = "employment_status"
# employment_status_6 = data.frame(enrolment_6$employment_status[enrolment_6$employment_status != "Unknown"])
# colnames(employment_status_6) = "employment_status"
# employment_status_7 = data.frame(enrolment_7$employment_status[enrolment_7$employment_status != "Unknown"])
# colnames(employment_status_7) = "employment_status"

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

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/employment_Status_learners.png",width = 1920, height = 1080)
# dev.off()

emp_stat_plot = grid.arrange(emp_stat1,emp_stat2,emp_stat3,emp_stat4,emp_stat5,emp_stat6,emp_stat7)


# checking the employment area of all the learners
# employment_area_1 = data.frame(enrolment_1$employment_area[enrolment_1$employment_area != "Unknown"])
# colnames(employment_area_1) = "employment_area"
# employment_area_2 = data.frame(enrolment_2$employment_area[enrolment_2$employment_area != "Unknown"])
# colnames(employment_area_2) = "employment_area"
# employment_area_3 = data.frame(enrolment_3$employment_area[enrolment_3$employment_area != "Unknown"])
# colnames(employment_area_3) = "employment_area"
# employment_area_4 = data.frame(enrolment_4$employment_area[enrolment_4$employment_area != "Unknown"])
# colnames(employment_area_4) = "employment_area"
# employment_area_5 = data.frame(enrolment_5$employment_area[enrolment_5$employment_area != "Unknown"])
# colnames(employment_area_5) = "employment_area"
# employment_area_6 = data.frame(enrolment_6$employment_area[enrolment_6$employment_area != "Unknown"])
# colnames(employment_area_6) = "employment_area"
# employment_area_7 = data.frame(enrolment_7$employment_area[enrolment_7$employment_area != "Unknown"])
# colnames(employment_area_7) = "employment_area"

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

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/employment_area_learners.png",width = 1920, height = 1080)
# dev.off()

enp_area_plot = grid.arrange(emp_area1,emp_area2,emp_area3,emp_area4,emp_area5,emp_area6,emp_area7)


# Checking the countries
# countries_df1 = data.frame(table(enrolment_1$detected_country))
# countries_df1
# plot(countries_df1)
# points(countries_df1)
# 
# 
# ###### I CAN USE STACKED BAR CHART  AS WELL TO PLOT MULTIPLRE CATEGORICAL VARIABLES
# ## CLUSTERED BARCHART IS BETTER OPTION BECAUSE OF UNDERSTANDING
# ###
# 
# 
# 
# dftrial <- select(enrolment_1,gender, employment_status)

### overall view of employment area of the learners who are interested in the course .. (7 batches)

# emp_area_count1 = data.frame(t(data.frame(table(employment_area_1))))
# emp_area_count1 = emp_area_count1 %>%
#   row_to_names(row_number = 1)
# emp_area_count1 %>% select(order(colnames(.)))
# 
# emp_area_count2 = data.frame(t(data.frame(table(employment_area_2))))
# emp_area_count2 = emp_area_count2 %>%
#   row_to_names(row_number = 1)
# emp_area_count2 %>% select(order(colnames(.)))
# 
# emp_area_count3 = data.frame(t(data.frame(table(employment_area_3))))
# emp_area_count3 = emp_area_count3 %>%
#   row_to_names(row_number = 1)
# emp_area_count3 %>% select(order(colnames(.)))
# 
# emp_area_count4 = data.frame(t(data.frame(table(employment_area_4))))
# emp_area_count4 = emp_area_count4 %>%
#   row_to_names(row_number = 1)
# emp_area_count4 %>% select(order(colnames(.)))
# 
# emp_area_count5 = data.frame(t(data.frame(table(employment_area_5))))
# emp_area_count5 = emp_area_count5 %>%
#   row_to_names(row_number = 1)
# emp_area_count5 %>% select(order(colnames(.)))
# 
# emp_area_count6 = data.frame(t(data.frame(table(employment_area_6))))
# emp_area_count6 = emp_area_count6 %>%
#   row_to_names(row_number = 1)
# emp_area_count6 = cbind(emp_area_count6,recruitment_and_pr = c(0))
# emp_area_count6 %>% select(order(colnames(.)))
# 
# emp_area_count7 = data.frame(t(data.frame(table(employment_area_7))))
# emp_area_count7 = emp_area_count7 %>%
#   row_to_names(row_number = 1)
# emp_area_count7 = cbind(emp_area_count7,energy_and_utilities = c(0))
# emp_area_count7 %>% select(order(colnames(.)))
#                         
# emp_area_count = rbind(emp_area_count1,emp_area_count2,emp_area_count3,emp_area_count4,emp_area_count5,emp_area_count6,emp_area_count7)
# emp_area_count = cbind(emp_area_count, Batch = c("Batch 1", "Batch 2","Batch 3","Batch 4","Batch 5","Batch 6","Batch 7"))
# 
# row.names(emp_area_count) = NULL

emp_area_plot = emp_area_count %>%
  gather(key, value, -Batch) %>% 
  ggplot(aes(x=Batch , y=value, fill = key)) +
  geom_col(position = "dodge" ) 

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/emp_area_plot.png",width = 1920, height = 1080)
# grid.arrange(emp_area_plot)
# dev.off()

#####  Checking the number of learners enrolled in each batch

# dim_enrol1 = data.frame(rows = dim(enrolment_1)[1])
# dim_enrol1
# 
# dim_enrol2 = data.frame(rows = dim(enrolment_2)[1])
# 
# dim_enrol3 = data.frame(rows = dim(enrolment_3)[1])
# 
# dim_enrol4 = data.frame(rows = dim(enrolment_4)[1])
# 
# dim_enrol5 = data.frame(rows = dim(enrolment_5)[1])
# 
# dim_enrol6 = data.frame(rows = dim(enrolment_6)[1])
# 
# dim_enrol7 = data.frame(rows = dim(enrolment_7)[1])
# 
# dim_enrol_df = rbind(dim_enrol1,dim_enrol2,dim_enrol3,dim_enrol4,dim_enrol5,dim_enrol6,dim_enrol7)
# 
# dim_enrol_df = cbind(dim_enrol_df, batch = c("Batch 1","Batch 2","Batch 3","Batch 4","Batch 5","Batch 6","Batch 7"))
# dim_enrol_df
# 
# 
# 
# # checking the nuber of learners who fully participated in the course
# 
# 
# dim_participated_1 = data.frame(rows = dim(fully_particiapted_df1)[1])
# dim_participated_1
# 
# dim_participated_2 = data.frame(rows = dim(fully_particiapted_df2)[1])
# 
# dim_participated_3 = data.frame(rows = dim(fully_particiapted_df3)[1])
# 
# dim_participated_4 = data.frame(rows = dim(fully_particiapted_df4)[1])
# 
# dim_participated_5 = data.frame(rows = dim(fully_particiapted_df5)[1])
# 
# dim_participated_6 = data.frame(rows = dim(fully_particiapted_df6)[1])
# 
# dim_participated_7 = data.frame(rows = dim(fully_particiapted_df7)[1])
# 
# dim_participated_df = rbind(dim_participated_1,dim_participated_2,dim_participated_3,dim_participated_4,dim_participated_5,dim_participated_6,dim_participated_7)
# 
# enrollred_vs_completed = cbind(dim_enrol_df, dim_participated_df)
# 
# colnames(enrollred_vs_completed) = c("enrolled_Count","Batch", "complete_count")
# 
# enrollred_vs_completed %>% select(order(colnames(.)))
# 
# 
# 
# 
# # Plotting the no of learners over the years for all batches , the ones who participated vs the ones who completed the course
# 
# enrollred_vs_completed = melt(enrollred_vs_completed, id.vars = c('Batch'))
# colnames(enrollred_vs_completed) = c("Batch","Status", "Count")


enrol_vs_comp_plot = ggplot(enrollred_vs_completed, aes(x=Batch, y=Count, group=Status)) +
  geom_line(aes(color=Status), size = 1)+
  geom_point(aes(color=Status),size = 4)+
  ylab("No. of learners")

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/enrol_vs_comp_plot.png",width = 1920, height = 1080)
# grid.arrange(enrol_vs_comp_plot)
# dev.off()  

#Plotting gender of the learners for all the batches 

# all_gender = data.frame(all_enrolments$gender[all_enrolments$gender != "Unknown"])
# colnames(all_gender) = "gender"
all_gender_plot = ggplot(all_gender, aes(gender,fill=gender)) + geom_bar()

##Plotting age range of the learners for all the batches

# all_age_range = data.frame(all_enrolments$age_range[all_enrolments$age_range != "Unknown"])
# colnames(all_age_range) = "age_range"
all_age_range_plot = ggplot(all_age_range, aes(age_range,fill=age_range)) + geom_bar()


##Plotting highest education level of the learners for all the batches

# all_high_education_level = data.frame(all_enrolments$highest_education_level[all_enrolments$highest_education_level != "Unknown"])
# colnames(all_high_education_level) = "highest_education_level"
all_high_education_level_plot = ggplot(all_high_education_level, aes(highest_education_level,fill=highest_education_level)) + geom_bar()


##Plotting employment status of the learners for all the batches

# all_emp_status = data.frame(all_enrolments$employment_status[all_enrolments$employment_status != "Unknown"])
# colnames(all_emp_status) = "employment_status"
all_emp_status_plot = ggplot(all_emp_status, aes(employment_status,fill=employment_status)) + geom_bar()


##Plotting employment area of the learners for all the batches

# all_emp_area = data.frame(all_enrolments$employment_area[all_enrolments$employment_area != "Unknown"])
# colnames(all_emp_area) = "employment_area"


all_emp_area_plot = ggplot(all_emp_area, aes(employment_area,fill=employment_area)) + geom_bar() + theme(axis.text.x = element_text(angle = 90))

layout = rbind(c(1,1),c(2,3),c(4,5))
overview_of_enrolment_data_file = grid.arrange(all_emp_area_plot, all_gender_plot,all_age_range_plot,all_high_education_level_plot,all_emp_status_plot, layout_matrix = layout)


# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/overview_of_enrolment_data_file.png",width = 1920, height = 1080)
# dev.off() 

#ggarrange(all_emp_area_plot, ggarrange(all_gender_plot,all_age_range_plot,all_high_education_level_plot,all_emp_status_plot))

############################________________________________________________________________###############################################
# Plotting learners based on different variables who fully participated in the course



# idx_enrol_fully_participated = which(all_enrolments$fully_participated_at != "")
# all_enrol_particiapted = all_enrolments[idx_enrol_fully_participated,]
#Plotting gender of the learners for all the batches 

# all_gender_part = data.frame(all_enrol_particiapted$gender[all_enrol_particiapted$gender != "Unknown"])
# colnames(all_gender_part) = "gender"
all_gender_part_plot = ggplot(all_gender_part, aes(gender,fill=gender)) + geom_bar()

##Plotting age range of the learners for all the batches 

# all_age_range_part = data.frame(all_enrol_particiapted$age_range[all_enrol_particiapted$age_range != "Unknown"])
# colnames(all_age_range_part) = "age_range"
all_age_range_part_plot = ggplot(all_age_range_part, aes(age_range,fill=age_range)) + geom_bar()


##Plotting highest education level of the learners for all the batches 

# all_high_education_level_part = data.frame(all_enrol_particiapted$highest_education_level[all_enrol_particiapted$highest_education_level != "Unknown"])
# colnames(all_high_education_level_part) = "highest_education_level"
all_high_education_level_part_plot = ggplot(all_high_education_level_part, aes(highest_education_level,fill=highest_education_level)) + geom_bar()


##Plotting employment status of the learners for all the batches 

# all_emp_status_part = data.frame(all_enrol_particiapted$employment_status[all_enrol_particiapted$employment_status != "Unknown"])
# colnames(all_emp_status_part) = "employment_status"
all_emp_status_part_plot = ggplot(all_emp_status_part, aes(employment_status,fill=employment_status)) + geom_bar()


##Plotting employment area of the learners for all the batches 

# all_emp_area_part = data.frame(all_enrol_particiapted$employment_area[all_enrol_particiapted$employment_area != "Unknown"])
# colnames(all_emp_area_part) = "employment_area"
all_emp_area_part_plot = ggplot(all_emp_area_part, aes(employment_area,fill=employment_area)) + geom_bar() + theme(axis.text.x = element_text(angle = 90))



layout = rbind(c(1,1),c(2,3),c(4,5))
overview_of_learners_completed_course = grid.arrange(all_emp_area_part_plot, all_gender_part_plot,all_age_range_part_plot,all_high_education_level_part_plot,all_emp_status_part_plot, layout_matrix = layout)

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/overview_of_learners_completed_course.png",width = 1920, height = 1080)
# dev.off() 

# ggarrange(all_emp_area_part_plot, ggarrange(all_gender_part_plot,all_age_range_part_plot,all_high_education_level_part_plot,all_emp_status_part_plot))

#####################################______________________________________________________________###########################################################

# checking the archetype of the learners who completed the course
# for first batch
# idx_all_fully_participated = which(arche_enrol_all$fully_participated_at != "")
# idx_all_fully_participated
# 
# arche_enrol_all_df = arche_enrol_all[idx_all_fully_participated,]
# arche_enrol_all_df = na.omit(arche_enrol_all_df)
# 
# arche_participants = data.frame(arche_enrol_all_df$archetype)
# colnames(arche_participants) = "archetype"
arche_enrol_all_df_plot = ggplot(arche_enrol_all_df, aes(archetype,fill=archetype)) + geom_bar()
# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/arche_enrol_all_df_plot.png",width = 1920, height = 1080)
# arche_enrol_all_df_plot = grid.arrange(arche_enrol_all_df_plot)
# dev.off() 

#########

## Plotting the archetype for all the learners

arche_all_plot = ggplot(all_archetype, aes(archetype,fill=archetype)) + geom_bar()
# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/archetype_of_all_learners.png",width = 1920, height = 1080)
# grid.arrange(arche_all_plot)
# dev.off() 
#######################_____________________________________________________#########################


arche_plot = ggplot() + 
  geom_bar(data = all_archetype, mapping = aes(archetype,fill=archetype), stat = "count", group = 1) + 
  geom_line(data = arche_participants, mapping = aes(archetype,  color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = arche_participants, mapping = aes(archetype, color = "fully participated") , stat = "count", group = 1, size = 3) +
  theme(legend.key=element_blank(),
        legend.box="vertical", text = element_text(size = 15)) +
  scale_colour_manual(" ", values=c("fully participated" = "black")) +
  ylab("No. of learners")

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/archetype_enrolled_Vs_completed.png",width = 1920, height = 1080)
# grid.arrange(arche_plot)
# dev.off()  
  

########################################################__________________________#############################################3

test_plot1 = ggplot() + 
  geom_bar(data = all_gender, mapping = aes(gender,fill=gender), stat = "count", group = 1) + 
  geom_line(data = all_gender_part, mapping = aes(gender, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_gender_part, mapping = aes(gender, color = "fully participated") , stat = "count", group = 1, size = 3)+
  # theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15))+
  scale_colour_manual(" ", values=c("fully participated" = "black"))
  

test_plot2 = ggplot() + 
  geom_bar(data = all_age_range, mapping = aes(age_range,fill=age_range), stat = "count", group = 1) + 
  geom_line(data = all_age_range_part, mapping = aes(age_range, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_age_range_part, mapping = aes(age_range, color = "fully participated") , stat = "count", group = 1, size = 3)+
  # theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15))+
  scale_colour_manual(" ", values=c("fully participated" = "black"))

test_plot3 = ggplot() + 
  geom_bar(data = all_high_education_level, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", group = 1) + 
  geom_line(data = all_high_education_level_part, mapping = aes(highest_education_level, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_high_education_level_part, mapping = aes(highest_education_level, color = "fully participated") , stat = "count", group = 1, size = 3)+
  # theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15))+
  scale_colour_manual(" ", values=c("fully participated" = "black"))

test_plot4 = ggplot() + 
  geom_bar(data = all_emp_status, mapping = aes(employment_status,fill=employment_status), stat = "count", group = 1) + 
  geom_line(data = all_emp_status_part, mapping = aes(employment_status, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_emp_status_part, mapping = aes(employment_status, color = "fully participated") , stat = "count", group = 1, size = 3)+
  # theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15))+
  scale_colour_manual(" ", values=c("fully participated" = "black"))

test_plot5 = ggplot() + 
  geom_bar(data = all_emp_area, mapping = aes(employment_area,fill=employment_area), stat = "count", group = 1) +
  geom_line(data = all_emp_area_part, mapping = aes(employment_area, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_emp_area_part, mapping = aes(employment_area, color = "fully participated") , stat = "count", group = 1, size = 3) +
  scale_colour_manual(" ", values=c("fully participated" = "black")) 

lay = rbind(c(1,1),c(1,1),c(2,3),c(4,5))
completed_vs_enrolled = grid.arrange(test_plot5, test_plot1,test_plot2,test_plot3,test_plot4, layout_matrix = lay)


# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/completed_vs_enrolled.png",width = 1920, height = 1080)
# dev.off() 

# ggarrange(test_plot5, ggarrange(test_plot1,test_plot2,test_plot3,test_plot4))

######################___________________________________-######################################

# #### Country - 
# # creating a table of detected countries
# 
# countries_df = data.frame(table(all_enrolments$detected_country))
# countries_df = countries_df[-c(1),]
# colnames(countries_df) = c("countries","number_of_learners")
# countries_df_sorted = arrange(countries_df, desc(number_of_learners))
# 
# ##################_____________
# 
# all_enrol_particiapted_df = all_enrol_particiapted[all_enrol_particiapted$detected_country != "--",]
# part_countries_df = data.frame(table(all_enrol_particiapted_df$detected_country))
# colnames(part_countries_df) = c("countries","number_of_learners")
# part_enrol_all <- merge(x= countries_df_sorted ,y=part_countries_df,  by = "countries", all.x=TRUE)
# colnames(part_enrol_all) = c("countries","enrolled","participated")
# part_enrol_all = arrange(part_enrol_all, desc(enrolled))
# 
# part_enrol = normalize(part_enrol_all[,c(2,3)], method = "range", range = c(0,1))
# part_enrol = cbind(part_enrol, countries = part_enrol_all$countries)
# 
# 
# 
# part_enrol_all = melt(part_enrol, id.vars = c('countries'))
# 
# colnames(part_enrol_all) = c("country", "status", "value")
# part_enrol_all = arrange(part_enrol_all, desc(value))

###############



###### plotting the maximum no. of learners from top 9 countries

top9_countries = ggplot(countries_df_sorted[1:9,], aes(x = "", y = number_of_learners, fill = countries)) +
  geom_col(color = "black") +
  geom_text(aes(label = number_of_learners),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  guides(fill = guide_legend(title = "countries")) +
  scale_fill_brewer(palette = "Pastel1") +
  theme(text= element_text(size = 20))
    #scale_y_continuous(breaks = countries_df_sorted[1:9,]$number_of_learners, labels = countries_df_sorted[1:9,]$countries)

######################
#######

plot_countries = ggplot(data = part_enrol_all[1:100,], aes(x=reorder(country, -value), y= value, fill = status , group = status, color = status)) + 
  geom_line() +
  geom_point() + 
  xlab("countries")
  ylab("Normalized number of enrolments") +
  theme(axis.text.x = element_text(angle = 45, hjust =1))


###### saving the plots for learners from different countries
country_layout = rbind(c(2,2),c(2,2), c(2,2),c(1,1),c(1,1),c(1,1))
countrywise_enrolments = grid.arrange(plot_countries,top9_countries , layout_matrix = country_layout )

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/countrywise_enrolments.png",width = 1920, height = 1080)
# dev.off() 

###################
#####################_____creating a wordcloud for sentiment analysis_________________________####################

#Create a vector containing only the text

# text <- all_weekly_sentiment$reason
# 
# # Create a corpus  
# docs <- Corpus(VectorSource(text))
# docs
# # STEP 2: Clean the text data
# docs <- docs %>%
#   tm_map(removeNumbers) %>%
#   tm_map(removePunctuation) %>%
#   tm_map(stripWhitespace)
# docs <- tm_map(docs, content_transformer(tolower))
# docs <- tm_map(docs, removeWords, stopwords("english"))
# 
# # STEP 3: Create a document-term-matrix
# #What you want to do as a next step is to have a dataframe containing each word in your first column and their frequency in the second column.
# #This can be done by creating a document term matrix with the TermDocumentMatrix function from the tm package.
# 
# dtm <- TermDocumentMatrix(docs) 
# matrix <- as.matrix(dtm) 
# words <- sort(rowSums(matrix),decreasing=TRUE) 
# df <- data.frame(word = names(words),freq=words)
# rownames(df) <- c(1:nrow(df))
# df <- df[-c(116,117,196),]


# STEP 4: Generate the word cloud
#set.seed(1234) # for reproducibility 
# word_cloud_plot = wordcloud(words = df$word, freq = df$freq, min.freq = 1,max.words=200, random.order=FALSE, rot.per=0.35,colors=brewer.pal(8, "Dark2"))





# weeklysentiment_analysis <- wordcloud2(data=df ,size=1.6, color='random-dark')

# install webshot

# webshot::install_phantomjs(force = TRUE)


# save it in html

# saveWidget(weeklysentiment_analysis,"tmp.html", selfcontained = F)

# and in png or pdf
# webshot("tmp.html","./graphs/weeklysentiment_analysis.png", delay = 15, vwidth = 1920, vheight=1080)


#png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/Weekly_Sentiment_analysis.png",width = 1920, height = 1080)
#grid.arrange(wordcloud_weekly_sentiment)
#dev.off() 


###################______________________________________________############################

### ANalysing all the leaving responses

# left_at_step = data.frame(t(data.frame(table(all_leaving_survey$last_completed_step))))
# left_at_step = left_at_step %>%
#   row_to_names(row_number = 1)
#######33____________________################


leaving_reason_plot = ggplot(data = all_leaving_survey, aes(leaving_reason, fill = leaving_reason)) + 
           geom_bar()+
           coord_polar()+
  # theme(text = element_text(size = 15)) +
  scale_fill_brewer(palette = "YlGnBu")
           


# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/leaving_reason_plot.png",width = 1920, height = 1080)
# grid.arrange(leaving_reason_plot)
# dev.off() 

###########___________________________ ########################
## ANlaysing the video stats dataset
# 
# all_views = all_video_stats %>% group_by(title) %>% summarize(views = sum(total_views))
# all_views$captions = (all_video_stats %>% group_by(title) %>% summarize(captions = sum(total_caption_views)))$captions
# all_views$transcript = (all_video_stats %>% group_by(title) %>% summarize(transcript = sum(total_transcript_views)))$transcript
# all_views$hd_viewing = (all_video_stats %>% group_by(title) %>% summarize(hd_viewing = sum(viewed_hd)))$hd_viewing
# 
# all_views = melt(all_views, id.vars = c('title'))
# colnames(all_views)[2] = c("video_stats")


video_stats_views_plot = ggplot(data = all_views, aes(x=title,y= value, fill = video_stats , group = video_stats, color = video_stats)) + 
  geom_line() +
  geom_point() + 
  ylab("Video stats") +
  theme(axis.text.x = element_text(angle = 45, hjust =1))

# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/video_stats_views_plot.png",width = 1920, height = 1080)
# grid.arrange(video_stats_views_plot)
# dev.off() 

###############__________________________________________--#########################################

###ANalysing the device  used.
# all_devices = all_video_stats %>% group_by(title) %>% summarize(console_devices = mean(console_device_percentage))
# all_devices$desktop_devices = (all_video_stats %>% group_by(title) %>% summarize(desktop_devices = mean(desktop_device_percentage)))$desktop_devices
# all_devices$mobile_devices = (all_video_stats %>% group_by(title) %>% summarize(mobile_devices = mean(mobile_device_percentage)))$mobile_devices
# all_devices$tv_devices = (all_video_stats %>% group_by(title) %>% summarize(tv_devices = mean(tv_device_percentage)))$tv_devices
# all_devices$tablet_devices = (all_video_stats %>% group_by(title) %>% summarize(tablet_devices = mean(tablet_device_percentage)))$tablet_devices
# 
# all_devices_df <- as.data.frame(colMeans(all_devices[,2:ncol(all_devices)]))
# colnames(all_devices_df)[1] = c("devices_used")

devices_used_plot1 = ggplot(data = all_devices_df, aes(x=row.names(all_devices_df), y= devices_used, fill = row.names(all_devices_df) , group = row.names(all_devices_df)))+
  geom_bar(position="dodge", stat="identity") +
  labs(fill = "Devices used") +
  xlab("Devices used") + 
  scale_fill_brewer(palette = "YlGnBu") 


# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/devices_used_plot1.png",width = 1920, height = 1080)
# grid.arrange(devices_used_plot1)
# dev.off() 

#all_devices = melt(all_devices, id.vars = c('title'))
#colnames(all_devices)[2] = c("devices_used")


#devices_used_plot = ggplot(data = all_devices, aes(x=title,y= value, fill = devices_used , group = devices_used, color = devices_used))+
 # geom_bar(position="dodge", stat="identity") +
 # labs(fill = "Devices used") +
 # xlab("Devices used")
#png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/devices_used_plot1.png",width = 1920, height = 1080)
#grid.arrange(devices_used_plot)
#dev.off() 

############___________#############
# all_continents = all_video_stats %>% group_by(title) %>% summarize(europe_views = mean(europe_views_percentage))
# all_continents$oceania_views = (all_video_stats %>% group_by(title) %>% summarize(oceania_views = mean(oceania_views_percentage)))$oceania_views
# all_continents$asia_views = (all_video_stats %>% group_by(title) %>% summarize(asia_views = mean(asia_views_percentage)))$asia_views
# all_continents$north_america_views = (all_video_stats %>% group_by(title) %>% summarize(north_america_views = mean(north_america_views_percentage)))$north_america_views
# all_continents$south_america_views = (all_video_stats %>% group_by(title) %>% summarize(south_america_views = mean(south_america_views_percentage)))$south_america_views
# all_continents$africa_views = (all_video_stats %>% group_by(title) %>% summarize(africa_views = mean(africa_views_percentage)))$africa_views
# all_continents$antarctica_views = (all_video_stats %>% group_by(title) %>% summarize(antarctica_views = mean(antarctica_views_percentage)))$antarctica_views
# 
# all_continents_df <- as.data.frame(colMeans(all_continents[,2:ncol(all_continents)]))
# colnames(all_continents_df)[1] = c("view_percentage")


continent_plot = ggplot(data = all_continents_df, aes(x=row.names(all_continents_df), y= view_percentage, fill = row.names(all_continents_df) , group = row.names(all_continents_df)))+
  geom_bar(position="dodge", stat="identity") +
  labs(fill = "Continents") +
  xlab("continents")+
  scale_fill_brewer(palette = "YlGnBu")


# png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/continent_plot.png",width = 1920, height = 1080)
# grid.arrange(continent_plot)
# dev.off()
