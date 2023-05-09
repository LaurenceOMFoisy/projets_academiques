library(ggplot2)

data <- read.csv("data_world/usaChina.csv")

ggplot(data, aes(x = FDIflowOUT_FDI_OECD, y = FDIflowIN_FDI_OECD)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  theme_classic()
