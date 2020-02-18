# BIFX 551 Homework - Read a .csv file and create a plot
# Paula Ladd

#install.packages("tidyverse")
#load.packages("tidyverse")
library(tidyverse)

download.file("http://bioinf.ucd.ie/people/aedin/R/full_datasets/khan_train.csv", "khan_train.csv")
khan_df <- read.csv("khan_train.csv")

head(khan_df)
summary(khan_df)

EWST <- c(mean(khan_df$EWS.T1), mean(khan_df$EWS.T2), mean(khan_df$EWS.T3),
               mean(khan_df$EWS.T4), mean(khan_df$EWS.T6), mean(khan_df$EWS.T7),
               mean(khan_df$EWS.T9), mean(khan_df$EWS.T11), mean(khan_df$EWS.T12),
               mean(khan_df$EWS.T13), mean(khan_df$EWS.T14), mean(khan_df$EWS.T15),
               mean(khan_df$EWS.T19))
EWS_tumor <- mean(EWST)
EWSC <- c(mean(khan_df$EWS.C8), mean(khan_df$EWS.C3), mean(khan_df$EWS.C2),
          mean(khan_df$EWS.C4), mean(khan_df$EWS.C6), mean(khan_df$EWS.C9),
          mean(khan_df$EWS.C7), mean(khan_df$EWS.C1), mean(khan_df$EWS.C11),
          mean(khan_df$EWS.C10))
EWS_cell <- mean(EWSC)
BLC <- c(mean(khan_df$BL.C5), mean(khan_df$BL.C6), mean(khan_df$BL.C7),
         mean(khan_df$BL.C8), mean(khan_df$BL.C1), mean(khan_df$BL.C2),
         mean(khan_df$BL.C3), mean(khan_df$BL.C4))
BL_cell <- mean(BLC)
NBC <- c(mean(khan_df$NB.C1), mean(khan_df$NB.C2), mean(khan_df$NB.C3),
         mean(khan_df$NB.C6), mean(khan_df$NB.C12), mean(khan_df$NB.C7),
         mean(khan_df$NB.C4), mean(khan_df$NB.C5), mean(khan_df$NB.C10),
         mean(khan_df$NB.C11), mean(khan_df$NB.C9), mean(khan_df$NB.C8))
NB_cell <- mean(NBC)
RMSC <- c(mean(khan_df$RMS.C4), mean(khan_df$RMS.C3), mean(khan_df$RMS.C9),
          mean(khan_df$RMS.C2), mean(khan_df$RMS.C5), mean(khan_df$RMS.C6),
          mean(khan_df$RMS.C7), mean(khan_df$RMS.C8), mean(khan_df$RMS.C10),
          mean(khan_df$RMS.C11))
RMS_cell <- mean(RMSC)
RMST <- c(mean(khan_df$RMS.T1), mean(khan_df$RMS.T4), mean(khan_df$RMS.T2),
          mean(khan_df$RMS.T6), mean(khan_df$RMS.T7), mean(khan_df$RMS.T8),
          mean(khan_df$RMS.T5), mean(khan_df$RMS.T9), mean(khan_df$RMS.T3),
          mean(khan_df$RMS.T10), mean(khan_df$RMS.T11))
RMS_tumor <- mean(RMST)

data <- structure(list(V1=c(EWS_tumor, EWS_cell, BL_cell, NB_cell, RMS_cell, RMS_tumor)))

barplot(data$V1, main="cDNA Microarrays of Expression of Genes in Small Round Blue Cell Tumors",
        xlab="Tumor Type - 1. Ewing family of tumor, tumor sample;
        2. Ewing family of tumor, cell line; 3. Burkitt lymphoma; 
        4. Neuroblastoma; 5. Rhabdomyosarcoma, cell line; 6. Rhabdomyosarcoma, tumor")

hist(khan_df$EWS.T1, main="cDNA Microarrays of Expression of Genes in Ewing family of tumor sample",
     xlab="Expression")

