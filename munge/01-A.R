# Example preprocessing script.

archetype_1 <- cyber.security.1_archetype.survey.responses
enrolment_1 <- cyber.security.1_enrolments
leaving_survey_1 <- cyber.security.1_leaving.survey.responses
question_response_1 <- cyber.security.1_question.response
step_activity_1 <- cyber.security.1_step.activity
weekly_sentiment_1 <- cyber.security.1_weekly.sentiment.survey.responses

archetype_2 <- cyber.security.2_archetype.survey.responses
enrolment_2 <- cyber.security.2_enrolments
leaving_survey_2 <- cyber.security.2_leaving.survey.responses
question_response_2 <- cyber.security.2_question.response
step_activity_2 <- cyber.security.2_step.activity
team_members_2 <- cyber.security.2_team.members
weekly_sentiment_2 <- cyber.security.2_weekly.sentiment.survey.responses

archetype_3 <- cyber.security.3_archetype.survey.responses
enrolment_3 <- cyber.security.3_enrolments
leaving_survey_3 <- cyber.security.3_leaving.survey.responses
question_response_3 <- cyber.security.3_question.response
step_activity_3 <- cyber.security.3_step.activity
team_members_3 <- cyber.security.3_team.members
video_stats_3 <- cyber.security.3_video.stats
weekly_sentiment_3 <- cyber.security.3_weekly.sentiment.survey.responses

archetype_4 <- cyber.security.4_archetype.survey.responses
enrolment_4 <- cyber.security.4_enrolments
leaving_survey_4 <- cyber.security.4_leaving.survey.responses
question_response_4 <- cyber.security.4_question.response
step_activity_4 <- cyber.security.4_step.activity
team_members_4 <- cyber.security.4_team.members
video_stats_4 <- cyber.security.4_video.stats
weekly_sentiment_4 <- cyber.security.4_weekly.sentiment.survey.responses

archetype_5 <- cyber.security.5_archetype.survey.responses
enrolment_5 <- cyber.security.5_enrolments
leaving_survey_5 <- cyber.security.5_leaving.survey.responses
question_response_5 <- cyber.security.1_question.response
step_activity_5 <- cyber.security.5_step.activity
team_members_5 <- cyber.security.5_team.members
video_stats_5 <- cyber.security.5_video.stats
weekly_sentiment_5 <- cyber.security.5_weekly.sentiment.survey.responses

archetype_6 <- cyber.security.6_archetype.survey.responses
enrolment_6 <- cyber.security.6_enrolments
leaving_survey_6 <- cyber.security.6_leaving.survey.responses
question_response_6 <- cyber.security.6_question.response
step_activity_6 <- cyber.security.6_step.activity
team_members_6 <- cyber.security.6_team.members
video_stats_6 <- cyber.security.6_video.stats
weekly_sentiment_6 <- cyber.security.6_weekly.sentiment.survey.responses

archetype_7 <- cyber.security.7_archetype.survey.responses
enrolment_7 <- cyber.security.7_enrolments
leaving_survey_7 <- cyber.security.7_leaving.survey.responses
question_response_7 <- cyber.security.7_question.response
step_activity_7 <- cyber.security.7_step.activity
team_members_7 <- cyber.security.7_team.members
video_stats_7 <- cyber.security.7_video.stats
weekly_sentiment_7 <- cyber.security.7_weekly.sentiment.survey.responses


#
# Merging data of all batches for arhetype
all_archetype = rbind(archetype_1,archetype_2,archetype_3,archetype_4,archetype_5,archetype_6,archetype_7)

#Merging the enrolment data for all batches
all_enrolments = rbind(enrolment_1,enrolment_2,enrolment_3,enrolment_4,enrolment_5,enrolment_6,enrolment_7)

#Merging the video stats data for all batches
all_video_stats = rbind(video_stats_3,video_stats_4,video_stats_5,video_stats_6,video_stats_7)

#Merging the Weekly sentiment data for all batches
all_weekly_sentiment = rbind(weekly_sentiment_1,weekly_sentiment_2,weekly_sentiment_3,weekly_sentiment_4,weekly_sentiment_5, weekly_sentiment_6, weekly_sentiment_7)

#Merging the leaving survey data for all batches
all_leaving_survey = rbind(leaving_survey_1,leaving_survey_2,leaving_survey_3,leaving_survey_4,leaving_survey_5,leaving_survey_6,leaving_survey_7)


# Left joining the enrolment data and the archetype data

arche_enrol_all <- merge(x= all_enrolments ,y=all_archetype[,c(2,4)], by = "learner_id", all.x=TRUE)






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




highest_education_level1 = data.frame(enrolment_1$highest_education_level[enrolment_1$highest_education_level != "Unknown"])
colnames(highest_education_level1) = "highest_education_level"



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


# checking the employment status from all batches


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



# creating dataframe for detected countries from batch 1

countries_df1 = data.frame(table(enrolment_1$detected_country))




dftrial <- select(enrolment_1,gender, employment_status)

### overall view of employment area of the learners who are interested in the course .. (for all 7 batches)


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


#####  Checking the number of learners enrolled in each batch

dim_enrol1 = data.frame(rows = dim(enrolment_1)[1])
dim_enrol1

dim_enrol2 = data.frame(rows = dim(enrolment_2)[1])

dim_enrol3 = data.frame(rows = dim(enrolment_3)[1])

dim_enrol4 = data.frame(rows = dim(enrolment_4)[1])

dim_enrol5 = data.frame(rows = dim(enrolment_5)[1])

dim_enrol6 = data.frame(rows = dim(enrolment_6)[1])

dim_enrol7 = data.frame(rows = dim(enrolment_7)[1])

dim_enrol_df = rbind(dim_enrol1,dim_enrol2,dim_enrol3,dim_enrol4,dim_enrol5,dim_enrol6,dim_enrol7)

dim_enrol_df = cbind(dim_enrol_df, batch = c("Batch 1","Batch 2","Batch 3","Batch 4","Batch 5","Batch 6","Batch 7"))
dim_enrol_df



# checking the number of learners who fully participated in the course


dim_participated_1 = data.frame(rows = dim(fully_particiapted_df1)[1])
dim_participated_1

dim_participated_2 = data.frame(rows = dim(fully_particiapted_df2)[1])

dim_participated_3 = data.frame(rows = dim(fully_particiapted_df3)[1])

dim_participated_4 = data.frame(rows = dim(fully_particiapted_df4)[1])

dim_participated_5 = data.frame(rows = dim(fully_particiapted_df5)[1])

dim_participated_6 = data.frame(rows = dim(fully_particiapted_df6)[1])

dim_participated_7 = data.frame(rows = dim(fully_particiapted_df7)[1])

dim_participated_df = rbind(dim_participated_1,dim_participated_2,dim_participated_3,dim_participated_4,dim_participated_5,dim_participated_6,dim_participated_7)

enrollred_vs_completed = cbind(dim_enrol_df, dim_participated_df)

colnames(enrollred_vs_completed) = c("enrolled_Count","Batch", "complete_count")

enrollred_vs_completed %>% select(order(colnames(.)))




# Plotting the no of learners over the years for all batches , the ones who participated vs the ones who completed the course

enrollred_vs_completed = melt(enrollred_vs_completed, id.vars = c('Batch'))
colnames(enrollred_vs_completed) = c("Batch","Status", "Count")





all_gender = data.frame(all_enrolments$gender[all_enrolments$gender != "Unknown"])
colnames(all_gender) = "gender"
all_gender_plot = ggplot(all_gender, aes(gender,fill=gender)) + geom_bar()

##Plotting age range of the learners for all the batches 

all_age_range = data.frame(all_enrolments$age_range[all_enrolments$age_range != "Unknown"])
colnames(all_age_range) = "age_range"
all_age_range_plot = ggplot(all_age_range, aes(age_range,fill=age_range)) + geom_bar()


##Plotting highest education level of the learners for all the batches 

all_high_education_level = data.frame(all_enrolments$highest_education_level[all_enrolments$highest_education_level != "Unknown"])
colnames(all_high_education_level) = "highest_education_level"
all_high_education_level_plot = ggplot(all_high_education_level, aes(highest_education_level,fill=highest_education_level)) + geom_bar()


##Plotting employment status of the learners for all the batches 

all_emp_status = data.frame(all_enrolments$employment_status[all_enrolments$employment_status != "Unknown"])
colnames(all_emp_status) = "employment_status"
all_emp_status_plot = ggplot(all_emp_status, aes(employment_status,fill=employment_status)) + geom_bar()


##Plotting employment area of the learners for all the batches 

all_emp_area = data.frame(all_enrolments$employment_area[all_enrolments$employment_area != "Unknown"])
colnames(all_emp_area) = "employment_area"




idx_enrol_fully_participated = which(all_enrolments$fully_participated_at != "")
all_enrol_particiapted = all_enrolments[idx_enrol_fully_participated,]

# Plotting learners based on different variables who fully participated in the course
# Gender of the learners for all the batches 
all_gender_part = data.frame(all_enrol_particiapted$gender[all_enrol_particiapted$gender != "Unknown"])
colnames(all_gender_part) = "gender"

# age range of the learners for all the batches
all_age_range_part = data.frame(all_enrol_particiapted$age_range[all_enrol_particiapted$age_range != "Unknown"])
colnames(all_age_range_part) = "age_range"

#  highest education level of the learners for all the batches
all_high_education_level_part = data.frame(all_enrol_particiapted$highest_education_level[all_enrol_particiapted$highest_education_level != "Unknown"])
colnames(all_high_education_level_part) = "highest_education_level"

# employment status of the learners for all the batches
all_emp_status_part = data.frame(all_enrol_particiapted$employment_status[all_enrol_particiapted$employment_status != "Unknown"])
colnames(all_emp_status_part) = "employment_status"

# employment area of the learners for all the batches
all_emp_area_part = data.frame(all_enrol_particiapted$employment_area[all_enrol_particiapted$employment_area != "Unknown"])
colnames(all_emp_area_part) = "employment_area"


idx_all_fully_participated = which(arche_enrol_all$fully_participated_at != "")
idx_all_fully_participated

arche_enrol_all_df = arche_enrol_all[idx_all_fully_participated,]
arche_enrol_all_df = na.omit(arche_enrol_all_df)

arche_participants = data.frame(arche_enrol_all_df$archetype)
colnames(arche_participants) = "archetype"





#### Country - 
# creating a table of detected countries

countries_df = data.frame(table(all_enrolments$detected_country))
countries_df = countries_df[-c(1),]
colnames(countries_df) = c("countries","number_of_learners")
countries_df_sorted = arrange(countries_df, desc(number_of_learners))

##################_____________

all_enrol_particiapted_df = all_enrol_particiapted[all_enrol_particiapted$detected_country != "--",]
part_countries_df = data.frame(table(all_enrol_particiapted_df$detected_country))
colnames(part_countries_df) = c("countries","number_of_learners")
part_enrol_all <- merge(x= countries_df_sorted ,y=part_countries_df,  by = "countries", all.x=TRUE)
colnames(part_enrol_all) = c("countries","enrolled","participated")
part_enrol_all = arrange(part_enrol_all, desc(enrolled))

part_enrol = normalize(part_enrol_all[,c(2,3)], method = "range", range = c(0,1))
part_enrol = cbind(part_enrol, countries = part_enrol_all$countries)



part_enrol_all = melt(part_enrol, id.vars = c('countries'))

colnames(part_enrol_all) = c("country", "status", "value")
part_enrol_all = arrange(part_enrol_all, desc(value))




text <- all_weekly_sentiment$reason

# Create a corpus  
docs <- Corpus(VectorSource(text))
docs
# STEP 2: Clean the text data
docs <- docs %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
docs <- tm_map(docs, content_transformer(tolower))
docs <- tm_map(docs, removeWords, stopwords("english"))

# STEP 3: Create a document-term-matrix
#What you want to do as a next step is to have a dataframe containing each word in your first column and their frequency in the second column.
#This can be done by creating a document term matrix with the TermDocumentMatrix function from the tm package.

dtm <- TermDocumentMatrix(docs) 
matrix <- as.matrix(dtm) 
words <- sort(rowSums(matrix),decreasing=TRUE) 
df <- data.frame(word = names(words),freq=words)
rownames(df) <- c(1:nrow(df))
df <- df[-c(116,117,196),]




# STEP 4: Generate the word cloud
set.seed(1234) # for reproducibility 
#word_cloud_plot = wordcloud(words = df$word, freq = df$freq, min.freq = 1,max.words=200, random.order=FALSE, rot.per=0.35,colors=brewer.pal(8, "Dark2"))





# weeklysentiment_analysis <- wordcloud2(data=df ,size=1.6, color='random-dark')

# install webshot

# webshot::install_phantomjs(force = TRUE)


# save it in html

# saveWidget(weeklysentiment_analysis,"tmp.html", selfcontained = F)

# and in png or pdf
# webshot("tmp.html","./graphs/weeklysentiment_analysis.png", delay = 15, vwidth = 1920, vheight=1080)




### ANalysing all the leaving responses

left_at_step = data.frame(t(data.frame(table(all_leaving_survey$last_completed_step))))
left_at_step = left_at_step %>%
  row_to_names(row_number = 1)
## Creating a dataframe for count of leaving reasons

leaving_reason_count = (data.frame(table(all_leaving_survey$leaving_reason)))
colnames(leaving_reason_count) = c("leaving_reasons", "count")


## ANlaysing the video stats dataset


all_views = all_video_stats %>% group_by(title) %>% summarize(views = sum(total_views))
all_views$captions = (all_video_stats %>% group_by(title) %>% summarize(captions = sum(total_caption_views)))$captions
all_views$transcript = (all_video_stats %>% group_by(title) %>% summarize(transcript = sum(total_transcript_views)))$transcript
all_views$hd_viewing = (all_video_stats %>% group_by(title) %>% summarize(hd_viewing = sum(viewed_hd)))$hd_viewing

all_views = melt(all_views, id.vars = c('title'))
colnames(all_views)[2] = c("video_stats")

###ANalysing the device  used.


all_devices = all_video_stats %>% group_by(title) %>% summarize(console_devices = mean(console_device_percentage))
all_devices$desktop_devices = (all_video_stats %>% group_by(title) %>% summarize(desktop_devices = mean(desktop_device_percentage)))$desktop_devices
all_devices$mobile_devices = (all_video_stats %>% group_by(title) %>% summarize(mobile_devices = mean(mobile_device_percentage)))$mobile_devices
all_devices$tv_devices = (all_video_stats %>% group_by(title) %>% summarize(tv_devices = mean(tv_device_percentage)))$tv_devices
all_devices$tablet_devices = (all_video_stats %>% group_by(title) %>% summarize(tablet_devices = mean(tablet_device_percentage)))$tablet_devices

all_devices_df <- as.data.frame(colMeans(all_devices[,2:ncol(all_devices)]))
colnames(all_devices_df)[1] = c("devices_used")

# Analysing the continents fro the number of learners

# calculating mean of continent view percentage by grouping over video titles
all_continents = all_video_stats %>% group_by(title) %>% summarize(europe_views = mean(europe_views_percentage))
all_continents$oceania_views = (all_video_stats %>% group_by(title) %>% summarize(oceania_views = mean(oceania_views_percentage)))$oceania_views
all_continents$asia_views = (all_video_stats %>% group_by(title) %>% summarize(asia_views = mean(asia_views_percentage)))$asia_views
all_continents$north_america_views = (all_video_stats %>% group_by(title) %>% summarize(north_america_views = mean(north_america_views_percentage)))$north_america_views
all_continents$south_america_views = (all_video_stats %>% group_by(title) %>% summarize(south_america_views = mean(south_america_views_percentage)))$south_america_views
all_continents$africa_views = (all_video_stats %>% group_by(title) %>% summarize(africa_views = mean(africa_views_percentage)))$africa_views
all_continents$antarctica_views = (all_video_stats %>% group_by(title) %>% summarize(antarctica_views = mean(antarctica_views_percentage)))$antarctica_views

all_continents_df <- as.data.frame(colMeans(all_continents[,2:ncol(all_continents)]))
colnames(all_continents_df)[1] = c("view_percentage")