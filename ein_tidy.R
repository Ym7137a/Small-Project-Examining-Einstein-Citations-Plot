##################
## Tidy the einstein data
##################

library(tidyverse)
ein <- read_csv("./data/ein_cites.csv")

ein %>%
  select(release = `Publication Year`,
         title = `Document Title`,
         authors = Authors,
         issn = ISSN,
         journal = `Journal Title`,
         volume = Volume,
         issue = Issue,
         `<2004`:`2019`) %>%
  gather(`<2004`:`2019`, key = "year", value = "cites") ->
  ein_long

write_csv(x = ein_long, path = "./output/ein_long.csv")
