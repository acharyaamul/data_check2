#### Check the data of CEO and two times data of NFI####
ceoNFI<- read.csv("ceo-NFI-ART-TREES-Data-Collection-2012-2021-sample-data-2023-08-25.csv",head=T)
### remove dulicate row###
library(tidyverse)
names(ceoNFI)
ceonfi_removDup<-ceoNFI %>% distinct(pl_plot_id, .keep_all = TRUE)

nfi<-read.csv("Leaf_NFIdata_11august2023.csv",header=T)

names(ceoNFI)
names(nfi)

unique(ceoNFI$pl_plot_id)


unique(nfi$Plot_id)

ceo<-ceonfi_removDup[order(ceonfi_removDup$pl_plot_id), ]

nfi<-nfi[order(nfi$Plot_id),]



check_plotid<- ceo$pl_plot_id==nfi$Plot_id
