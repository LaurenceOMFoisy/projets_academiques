library(ggplot2)
library(dplyr)
library(scales)
library(lubridate)
library(vistime)

test <- read.csv("H23/seminaireDeDoctorat/codeR/data/timeline.csv")

test <- test %>%
  mutate(start = Année,
         end = Année)



gg_vistime(test)
