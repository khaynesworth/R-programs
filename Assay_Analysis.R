library(ggplot2)

str(Assay_Data)
head(Assay_Data)
tail(Assay_Data)

# Assay-1
ggplot(subset(Assay_Data, Assay =="Assay-1")) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Sample))+
  facet_wrap(Measure~Sample, ncol = 4,scales = "free")+
  ggtitle("Assay-1") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "")

# Assay-2
ggplot(subset(Assay_Data, Assay =="Assay-2")) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Sample))+
  facet_wrap(Measure~Sample, ncol = 4,scales = "free")+
  ggtitle("Assay-2") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "")

# Assay-3
ggplot(subset(Assay_Data, Assay =="Assay-3")) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Sample))+
  facet_wrap(Measure~Sample, ncol = 4,scales = "free")+
  ggtitle("Assay-3") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "")


# All Assays in Terms of Concentration pg/mL
ggplot(subset(Assay_Data, Measure == "Concentration pg/mL")) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Sample))+
  facet_wrap(Assay~Sample, ncol = 4,scales = "free")+
  ggtitle("Concentration (pg/mL) Comparison for 1-Step vs. 2-Step") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "Concentration pg/mL")


# All Assays in Terms of ECL
ggplot(subset(Assay_Data,Measure == "ECL")) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Sample))+
  facet_wrap(Assay~Sample, ncol = 4,scales = "free")+
  ggtitle("ECL Comparison for 1-Step vs. 2-Step") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "Average ECL")


# CSF Data Comparison
ggplot(subset(Assay_Data,Sample =="CSF" )) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Assay))+
  facet_wrap(Assay~Measure, ncol = 2,scales = "free")+
  ggtitle("CSF Data") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "")


# Serum Data Comparison
ggplot(subset(Assay_Data,Sample =="Serum" )) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Assay))+
  facet_wrap(Assay~Measure, ncol = 2,scales = "free")+
  ggtitle("Serum  Data") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "")


# EDTA Plasma Data Comparison
ggplot(subset(Assay_Data,Sample =="EDTA Plasma" )) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Assay))+
  facet_wrap(Assay~Measure, ncol = 2,scales = "free")+
  ggtitle("EDTA Plasma  Data") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "")


# Heparin Plasma Data Comparison
ggplot(subset(Assay_Data,Sample =="Heparin Plasma" )) +
  geom_boxplot (aes(Assay_Format, Measurement, colour = Assay))+
  facet_wrap(Assay~Measure, ncol = 2,scales = "free")+
  ggtitle("Heparin Plasma  Data") +
  theme(plot.title = element_text(lineheight=.8, face="bold",hjust = 0.5 ))+
  labs(x = "Assay Format", y = "")




















