
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




learners_gender = b %>%
  gather(key, value, -Iteration) %>% 
  ggplot(aes(x=Iteration , y=value, fill = key)) +
  geom_col(position = "dodge") 

png(file="./graphs/gender_learners.png",width = 1920, height = 1080)
grid.arrange(learners_gender)
dev.off()

# Education level


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


png(file="./graphs/learners_edu_lvl.png",width = 1920, height = 1080)
grid.arrange(h1,h2,h3,h4,h5,h6,h7)
dev.off()



# # Highest education level of ppl who finished the course for all 7 batches


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

png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/participants_edu_lvl.png",width = 1920, height = 1080)
grid.arrange(h1_fp,h2_fp,h3_fp,h4_fp,h5_fp,h6_fp,h7_fp)
dev.off()


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

png(file="./graphs/employment_Status_learners.png",width = 1920, height = 1080)
grid.arrange(emp_stat1,emp_stat2,emp_stat3,emp_stat4,emp_stat5,emp_stat6,emp_stat7)
dev.off()

emp_stat_plot = grid.arrange(emp_stat1,emp_stat2,emp_stat3,emp_stat4,emp_stat5,emp_stat6,emp_stat7)


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

png(file="./graphs/employment_area_learners.png",width = 1920, height = 1080)
grid.arrange(emp_area1,emp_area2,emp_area3,emp_area4,emp_area5,emp_area6,emp_area7)
dev.off()

enp_area_plot = grid.arrange(emp_area1,emp_area2,emp_area3,emp_area4,emp_area5,emp_area6,emp_area7)



### overall view of employment area of the learners who are interested in the course .. (7 batches)



emp_area_plot = emp_area_count %>%
  gather(key, value, -Batch) %>% 
  ggplot(aes(x=Batch , y=value, fill = key)) +
  geom_col(position = "dodge" ) 

png(file="./graphs/emp_area_plot.png",width = 1920, height = 1080)
grid.arrange(emp_area_plot)
dev.off()


# Plotting the no of learners over the years for all batches , the ones who participated vs the ones who completed the course

enrol_vs_comp_plot = ggplot(enrollred_vs_completed, aes(x=Batch, y=Count, group=Status)) +
  geom_line(aes(color=Status), size = 1)+
  geom_point(aes(color=Status),size = 4)+
  ylab("No. of learners")

png(file="./graphs/enrol_vs_comp_plot.png",width = 1920, height = 1080)
grid.arrange(enrol_vs_comp_plot)
dev.off()

#Plotting gender of the learners for all the batches 

all_gender_plot = ggplot(all_gender, aes(gender,fill=gender)) + geom_bar()

##Plotting age range of the learners for all the batches

all_age_range_plot = ggplot(all_age_range, aes(age_range,fill=age_range)) + geom_bar()


##Plotting highest education level of the learners for all the batches

all_high_education_level_plot = ggplot(all_high_education_level, aes(highest_education_level,fill=highest_education_level)) + geom_bar()


##Plotting employment status of the learners for all the batches

all_emp_status_plot = ggplot(all_emp_status, aes(employment_status,fill=employment_status)) + geom_bar()


##Plotting employment area of the learners for all the batches

all_emp_area_plot = ggplot(all_emp_area, aes(employment_area,fill=employment_area)) + geom_bar() + theme(axis.text.x = element_text(angle = 90))

layout = rbind(c(1,1),c(2,3),c(4,5))
overview_of_enrolment_data_file = grid.arrange(all_emp_area_plot, all_gender_plot,all_age_range_plot,all_high_education_level_plot,all_emp_status_plot, layout_matrix = layout)


png(file="./graphs/overview_of_enrolment_data_file.png",width = 1920, height = 1080)
grid.arrange(all_emp_area_plot, all_gender_plot,all_age_range_plot,all_high_education_level_plot,all_emp_status_plot, layout_matrix = layout)
dev.off() 

###########################################################################

# Plotting learners based on different variables who fully participated in the course


#Plotting gender of the learners for all the batches 


all_gender_part_plot = ggplot(all_gender_part, aes(gender,fill=gender)) + geom_bar()

##Plotting age range of the learners for all the batches 

all_age_range_part_plot = ggplot(all_age_range_part, aes(age_range,fill=age_range)) + geom_bar()


##Plotting highest education level of the learners for all the batches 

all_high_education_level_part_plot = ggplot(all_high_education_level_part, aes(highest_education_level,fill=highest_education_level)) + geom_bar()


##Plotting employment status of the learners for all the batches 

all_emp_status_part_plot = ggplot(all_emp_status_part, aes(employment_status,fill=employment_status)) + geom_bar()


##Plotting employment area of the learners for all the batches 


all_emp_area_part_plot = ggplot(all_emp_area_part, aes(employment_area,fill=employment_area)) + geom_bar() + theme(axis.text.x = element_text(angle = 90))


layout = rbind(c(1,1),c(2,3),c(4,5))
overview_of_learners_completed_course = grid.arrange(all_emp_area_part_plot, all_gender_part_plot,all_age_range_part_plot,all_high_education_level_part_plot,all_emp_status_part_plot, layout_matrix = layout)

png(file="./graphs/overview_of_learners_completed_course.png",width = 1920, height = 1080)
grid.arrange(all_emp_area_part_plot, all_gender_part_plot,all_age_range_part_plot,all_high_education_level_part_plot,all_emp_status_part_plot, layout_matrix = layout)
dev.off() 

#####################################______________________________________________________________###########################################################

# checking the archetype of the learners who completed the course

arche_enrol_all_df_plot = ggplot(arche_enrol_all_df, aes(archetype,fill=archetype)) + geom_bar()
png(file="./graphs/arche_enrol_all_df_plot.png",width = 1920, height = 1080)
grid.arrange(arche_enrol_all_df_plot)
dev.off()



## Plotting the archetype for all the learners

arche_all_plot = ggplot(all_archetype, aes(archetype,fill=archetype)) + geom_bar()
png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/archetype_of_all_learners.png",width = 1920, height = 1080)
grid.arrange(arche_all_plot)
dev.off()

#######################_____________________________________________________#########################
# Plotting the archetype of all learners who enrolled and fully participated in the course 

arche_plot = ggplot() + 
  geom_bar(data = all_archetype, mapping = aes(archetype,fill=archetype), stat = "count", group = 1) + 
  geom_line(data = arche_participants, mapping = aes(archetype,  color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = arche_participants, mapping = aes(archetype, color = "fully participated") , stat = "count", group = 1, size = 3) +
  theme(legend.key=element_blank(),
        legend.box="vertical", text = element_text(size = 15), axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_colour_manual(" ", values=c("fully participated" = "black")) +
  ylab("No. of learners")

png(file="./graphs/archetype_enrolled_Vs_completed.png",width = 1920, height = 1080)
grid.arrange(arche_plot)
dev.off()
  

########################################################__________________________#############################################3

test_plot1 = ggplot() + 
  geom_bar(data = all_gender, mapping = aes(gender,fill=gender), stat = "count", group = 1) + 
  geom_line(data = all_gender_part, mapping = aes(gender, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_gender_part, mapping = aes(gender, color = "fully participated") , stat = "count", group = 1, size = 3)+
  theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15))+
  scale_colour_manual(" ", values=c("fully participated" = "black"))+
  scale_fill_brewer(palette = "Pastel1")
  

test_plot2 = ggplot() + 
  geom_bar(data = all_age_range, mapping = aes(age_range,fill=age_range), stat = "count", group = 1) + 
  geom_line(data = all_age_range_part, mapping = aes(age_range, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_age_range_part, mapping = aes(age_range, color = "fully participated") , stat = "count", group = 1, size = 3)+
  theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15))+
  scale_colour_manual(" ", values=c("fully participated" = "black")) +
  scale_fill_brewer(palette = "Pastel1")

test_plot3 = ggplot() + 
  geom_bar(data = all_high_education_level, mapping = aes(highest_education_level,fill=highest_education_level), stat = "count", group = 1) + 
  geom_line(data = all_high_education_level_part, mapping = aes(highest_education_level, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_high_education_level_part, mapping = aes(highest_education_level, color = "fully participated") , stat = "count", group = 1, size = 3)+
  theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15), axis.text.x = element_text(angle = 45, hjust = 1))+
  scale_colour_manual(" ", values=c("fully participated" = "black")) +
  scale_fill_brewer(palette = "Pastel1")

test_plot4 = ggplot() + 
  geom_bar(data = all_emp_status, mapping = aes(employment_status,fill=employment_status), stat = "count", group = 1) + 
  geom_line(data = all_emp_status_part, mapping = aes(employment_status, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_emp_status_part, mapping = aes(employment_status, color = "fully participated") , stat = "count", group = 1, size = 3)+
  theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15), axis.text.x = element_text(angle = 45, hjust = 1))+
  scale_colour_manual(" ", values=c("fully participated" = "black")) +
  scale_fill_brewer(palette = "Pastel1")

mycolors = c(brewer.pal(name="Pastel1", n = 9), brewer.pal(name="Pastel2", n = 8))
test_plot5 = ggplot() + 
  geom_bar(data = all_emp_area, mapping = aes(employment_area,fill=employment_area), stat = "count", group = 1) +
  geom_line(data = all_emp_area_part, mapping = aes(employment_area, color = "fully participated") , stat = "count", group = 1 ,size = 1) +
  geom_point(data = all_emp_area_part, mapping = aes(employment_area, color = "fully participated") , stat = "count", group = 1, size = 3) +
  theme(legend.key=element_blank(),legend.box="vertical", text = element_text(size = 15), axis.text.x = element_text(angle = 45, hjust = 1))+
  scale_colour_manual(" ", values=c("fully participated" = "black")) 


lay = rbind(c(1,1),c(1,1),c(2,3),c(4,5))
completed_vs_enrolled = grid.arrange(test_plot5, test_plot1,test_plot2,test_plot3,test_plot4, layout_matrix = lay)


png(file="./graphs/completed_vs_enrolled.png",width = 1920, height = 1080)
grid.arrange(test_plot5, test_plot1,test_plot2,test_plot3,test_plot4, layout_matrix = lay)
dev.off()

######################___________________________________-######################################

# Countrywise analysis


###### plotting the maximum no. of learners from top 9 countries

top9_countries = ggplot(countries_df_sorted[1:9,], aes(x = "", y = number_of_learners, fill = countries)) +
  geom_col() +
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
  geom_line(size =1) +
  geom_point(size = 2) + 
  xlab("countries")
  ylab("Normalized number of enrolments") +
  theme(axis.text.x = element_text(angle = 45, hjust =1))+
    scale_fill_brewer(palette = "Pastel1") 


###### saving the plots for learners from different countries
country_layout = rbind(c(2,2),c(1,1))
countrywise_enrolments = grid.arrange(plot_countries,top9_countries , layout_matrix = country_layout )

png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/countrywise_enrolments.png",width = 1920, height = 1080)
grid.arrange(plot_countries,top9_countries , layout_matrix = country_layout )
dev.off()

###################
#####################_____creating a wordcloud for sentiment analysis_________________________####################





#png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/Weekly_Sentiment_analysis.png",width = 1920, height = 1080)
#grid.arrange(wordcloud_weekly_sentiment)
#dev.off() 


###################______________________________________________############################

### ANalysing all the leaving responses

#######___________________################


leaving_reason_plot = ggplot(data = all_leaving_survey, aes(leaving_reason, fill = leaving_reason)) + 
           geom_bar()+
           coord_polar()+
  theme(text = element_text(size = 12))+
  scale_fill_brewer(palette = "Pastel1")
           


png(file="./graphs/leaving_reason_plot.png",width = 1920, height = 1080)
grid.arrange(leaving_reason_plot)
dev.off()

###########___________________________ ########################
## ANlaysing the video stats dataset


video_stats_views_plot = ggplot(data = all_views, aes(x=title,y= value, fill = video_stats , group = video_stats, color = video_stats)) + 
  geom_line(size = 1) +
  geom_point(size = 2) + 
  ylab("Video stats") +
  theme(axis.text.x = element_text(angle = 45, hjust =1))+
  scale_fill_brewer(palette = "Pastel1") 

png(file="./graphs/video_stats_views_plot.png",width = 1920, height = 1080)
grid.arrange(video_stats_views_plot)
dev.off()

###############__________________________________________--#########################################

###ANalysing the device  used.


devices_used_plot1 = ggplot(data = all_devices_df, aes(x=row.names(all_devices_df), y= devices_used, fill = row.names(all_devices_df) , group = row.names(all_devices_df) ))+
  geom_bar(position="dodge", stat="identity") +
  labs(fill = "Devices used") +
  xlab("Devices used") + 
  ylab("% of learners using the device") +
  theme(axis.text.x = element_text(angle = 45, hjust =1)) +
  scale_fill_brewer(palette = "Pastel1") 


png(file="./graphs/devices_used_plot1.png",width = 1920, height = 1080)
grid.arrange(devices_used_plot1)
dev.off()

############___________#############
# Analysing the continents fro the number of learners


continent_plot = ggplot(data = all_continents_df, aes(x=row.names(all_continents_df), y= view_percentage, fill = row.names(all_continents_df) , group = row.names(all_continents_df), color = ))+
  geom_bar(position="dodge", stat="identity") +
  labs(fill = "Continents") +
  xlab("continents")+
  ylab("% of learners from each continents")+
  theme(axis.text.x = element_text(angle = 45, hjust =1)) +
  scale_fill_brewer(palette = "Pastel1") 


png(file="./graphs/continent_plot.png",width = 1920, height = 1080)
grid.arrange(continent_plot)
dev.off()
