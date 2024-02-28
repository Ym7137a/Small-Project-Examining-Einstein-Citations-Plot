#################
## Total citaitons figure
#################

library(tidyverse)
ein_tot <- read_csv("./output/ein_tot.csv")

ein_tot %>%
  ggplot(aes(x = tot)) +
  geom_histogram(bins = 20, color = "black", fill = "white") +
  theme_bw() +
  scale_x_log10() +
  xlab("Citations") ->
  pl

ggsave(filename = "./output/paper_hist.png",
       plot = pl,
       heigh = 3,
       width = 5)
