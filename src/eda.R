library('ProjectTemplate')
load.project()
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
ggplot() +
  geom_bar(gender1, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  geom_bar(gender2, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) + 
  geom_bar(gender3, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  geom_bar(gender4, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  geom_bar(gender5, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  geom_bar(gender6, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) +
  geom_bar(gender7, mapping = aes(gender,fill=gender), stat = "count", position = position_dodge()) 
  
gender_count1 = data.frame(t(data.frame(table(gender1))))
colnames(gender_count1) =  c("famale", "male", "nonbinary", "other")
gender_count1 = gender_count1[!(row.names(gender_count1) %in% c('gender1')),]
gender_count1

gender_count2 = data.frame(t(data.frame(table(gender2))))
colnames(gender_count2) =  c("famale", "male", "nonbinary", "other")
gender_count2 = gender_count2[!(row.names(gender_count2) %in% c('gender2')),]
gender_count2

gender_count3 = data.frame(t(data.frame(table(gender3))))
colnames(gender_count3) =  c("famale", "male", "nonbinary", "other")
gender_count3 = gender_count3[!(row.names(gender_count3) %in% c('gender3')),]
gender_count3

nonbinary = c(0)
gender_count4 = (data.frame(table(gender4)))
gender_count4 = rbind(gender_count4, nonbinary)
levels(gender_count4$gender4) = c("male", "famale", "other", "nonbinary")
gender_count4$gender4[4] = "nonbinary"
gender_count4 = gender_count4[, 1:2]
gender_count4 = data.frame(t(gender_count4))
colnames(gender_count4) =  c("male", "famale", "other", "nonbinary")
gender_count4 = gender_count4[!(row.names(gender_count4) %in% c('gender4')),]
gender_count4 %>% select(order(colnames(.)))

a = rbind(gender_count1,gender_count2,gender_count3,gender_count4)

b = read.table(text = "Iteration famale male nonbinary other
Iteration_1     767  919         6     6
Iteration_2    339  411         4     2
Iteration_3    174  195         2     1
Iteration_4    244  168         0     2", header = T)


b %>%
  gather(key, value, -Iteration) %>% 
  ggplot(aes(x=Iteration , y=value, fill = key)) +
  geom_col(position = "dodge")

ggplot2.barplot(data=a, xName='Iteration of the Course', yName="Frequency",
                groupName='sex', position=position_dodge())




gender_count5 = data.frame(table(gender5),nonbinary)
gender_count5

gender_count6 = data.frame(table(gender6))
gender_count6

gender_count7 = data.frame(table(gender7))
gender_count7