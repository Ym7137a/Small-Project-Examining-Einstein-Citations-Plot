################
## Make a line plot
################

library(tidyverse)
ein_long <- read_csv("./output/ein_long.csv")

ein_long %>%
  filter(year != "<2004") %>%
  mutate(year = parse_number(year)) ->
  ein_long

ggplot(ein_long, aes(x = year, y = cites, group = title)) +
  geom_line(alpha = 1/2) +
  theme_bw() +
  xlab("Year") +
  ylab("Cites") ->
  pl

ggsave(filename = "./output/citefig.png",
       plot = pl,
       height = 3,
       width = 5)
