library(ggplot2)
library(dplyr)
library(wbstats)

data_ch_us <- read.csv("H23/seminaireDeDoctorat/codeR/data/usaExportsChina.csv")

ggplot(data_ch_us, aes(x = year, y = percentExportsUsToChina)) +
  geom_line() +
  geom_line(aes(y = percentExportsChinaToUsa), color = "red") +
  geom_line(aes(y = percentImportsChinaFromUsa), color = "blue") +
  geom_line(aes(y = percentImportsUsaFromChina), color = "green")

ggplot(data_ch_us, aes(year, exportsUsaToChina, color = "red")) +
  geom_line() +
  geom_line(aes(y = importsUsaFromChina, color = "blue")) +
  theme_classic()
ggsave(filename = "exportGraph.png",
       path = "H23/seminaireDeDoctorat/codeR/graphiquesFaitsEnR")
