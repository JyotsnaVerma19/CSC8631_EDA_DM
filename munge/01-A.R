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

