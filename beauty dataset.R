install.packages("cdtRggplot2",
                 repos="http://R-Forge.R-project.org")
library(cdtRggplot2)
data(Beauty)
head(Beauty)
ggplot(data=Beauty) + geom_point(aes(x=age, y=beauty))
g = ggplot(data=Beauty)
g1 = g + geom_point(aes(x=age, y=beauty))
g1
g + geom_point(aes(x=age, y=beauty,
                   alpha=evaluation, colour=gender))
