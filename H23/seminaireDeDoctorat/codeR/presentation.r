library(ggplot2)
library(dplyr)
library(wbstats)
library(scales)

data_ch_us <- read.csv("H23/seminaireDeDoctorat/codeR/data/usaExportsChina.csv")

ggplot(data_ch_us, aes(year, exportsUsaToChina, color = "#c73a3a")) +
  geom_line(size = 1.5) +
  geom_line(aes(y = importsUsaFromChina, color = "#0084ff"), size = 1.5) +
  theme_classic() +
  scale_y_continuous(labels = scales::label_number(scale = 1e-9,
                                                   suffix = "G",
                                                   prefix = "$")) +
  geom_vline(xintercept = c(2001, 2008, 2019), linetype = "dashed") +
  labs(x = "Année", y = "Exportations",
       color = "",
       title = "Commerce entre les États-Unis et la Chine de 1995 à 2021") +
  scale_color_manual(name = "Exports",
                     values = c("#c73a3a", "#0084ff"),
                     labels = c("Exportations chinoises aux É-U",
                                "Exporations É-U en Chine")) +
  theme(axis.title.x = element_text(size = 14),
        axis.title.y = element_text(size = 14),
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 11),
        legend.position = "bottom",
        legend.direction = "horizontal",
        legend.box = "horizontal",
        legend.margin = margin(5, 5, 5, 5)) +
        annotate("text", x = 1999, y = 180000000000,
                 label = "Entrée de la Chine dans L'OMC",
                 vjust = 2, size = 5, color = "black", fontface = "bold") +
        annotate("text", x = 2006, y = 350000000000,
                 label = "Crise financière de 2008",
                 vjust = 2, size = 5, color = "black", fontface = "bold") +
        annotate("text", x = 2017, y = 550000000000,
                 label = "Crise de la Covid-19",
                 vjust = 2, size = 5, color = "black", fontface = "bold")
ggsave(filename = "exportGraph.png",
       path = "H23/seminaireDeDoctorat/codeR/graphiquesFaitsEnR")
