#################
## Summaries of einstein pubs
#################

library(tidyverse)
ein_long <- read_csv("./output/ein_long.csv")
ein_long %>%
  group_by(release, title, authors, issn, journal, volume, issue) %>%
  summarize(tot = sum(cites)) ->
  ein_tot

write_csv(x = ein_tot, path = "./output/ein_tot.csv")
