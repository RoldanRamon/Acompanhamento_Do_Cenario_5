rm(list = ls())
library(dplyr)
library(readxl)
library(stringr)
library(janitor)

#Importa Base
cenario_5<- read_excel(path = '2-base/cenario_5 - ocs_atualizado_2.junho VERSÃO CORRIGIDA ALINI (1).xlsx',sheet = 'BASE') %>% janitor::clean_names()
fitro_cen_5 <- unique(cenario_5 %>% filter(!is.na(coluna1)) %>% select(coluna1))

#Exporta relação das ocs
writeLines(text = paste0('"',paste(fitro_cen_5$coluna1,collapse = '","'),'"'),'1-select/cenario_5-ocs_novas.txt')
rm(list = ls())