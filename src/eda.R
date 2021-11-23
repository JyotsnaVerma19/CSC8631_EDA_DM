library('ProjectTemplate')
load.project()
png(file="C:/Users/Payal/Desktop/Future_Learn_EDA_DM/graphs/test.png",width = 1920, height = 1080)
ggplot(enrolment_1, aes(gender,fill=gender)) + geom_bar()
dev.off()

