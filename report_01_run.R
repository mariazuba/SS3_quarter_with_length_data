## Prepare plots and tables for report

## Before:
## After:
rm(list=ls())


# Load packages -----------------------------------------------------------

library(icesTAF)
library(r4ss)
library(tidyverse)
library(lubridate)
library(ggpubr)
library(ss3diags)
library(flextable)


# working directory
wd <- getwd()
# Load data ---------------------------------------------------------------

# input data
inputs<-"data/run"
outputs<-"output/run"
esc<-list.files(inputs)
#i=1
for(i in 1:length(esc)){
  
  load(paste0("output/run/",esc[i],"/output.RData"))
  load(paste0("data/run/",esc[i],"/inputs.RData")) 
  
  mkdir(paste0("report/run/",esc[i]))
  path<-paste0("report/run/",esc[i])
  
  # Figures --------------------------------------------
  ## Temporal coverage of input data ----
  png(file.path(paste0(path,"/input_data.png")),width=9,height=5,res=300,units='in')
  sspar(mfrow = c(1, 1), plot.cex = 0.8)
  SSplotData(output, subplots = 2,cex.main = 0.8,cex = 1,margins = c(2.1, 2.1, 1.1, 8.1))
  dev.off()
  
  ## Growth curve, length-weight relationship and maturity ----
  png(file.path(paste0(path,"/Biology.png")),width=10,height=8,res=300,units='in')
  sspar(mfrow = c(2, 2), plot.cex = 0.8)
  SSplotBiology(output, subplot = c(1,5,6),seas=4,mainTitle = FALSE)
  dev.off()
  
  
  
  ## Fit data: Abundance indices ----
  png(file.path(paste0(path,"/Indices_fit.png")),width=6,height=7,res=300,units='in')
  sspar(mfrow = c(4, 2), plot.cex = 0.6)
  SSplotIndices(output, subplots = c(2,3),mainTitle = T)
  dev.off()
  
  
  ## Fit data: Length composition (aggregated) ----
  png(file.path(paste0(path,"/Length_fit_agg.png")),width=8,height=9,res=300,units='in')
  SSplotComps(output, subplots = c(21),kind = "LEN",maxrows = 2,maxcols = 2,
              showsampsize = F,showeffN = F,mainTitle = T)
  dev.off()
  
  
  ## Fit data: Length composition by source data ----
  ### *FLEET by quarters* ----
  png(file.path(paste0(path,"/Length_fit_Seine.png")),width=10,height=9,res=300,units='in')
  SSplotComps(output, subplots = c(1),kind = "LEN",fleets = 1,maxrows = 12,maxcols =12,
              showsampsize = F,showeffN = F,mainTitle = T)
  dev.off()
  
  
  ### *PELAGO spring survey* ----
  png(file.path(paste0(path,"/Length_fit_Pelago.png")),width=8,height=9,res=300,units='in')
  SSplotComps(output, subplots = c(1),kind = "LEN",fleets = 2,maxrows = 6,maxcols = 4,
              showsampsize = F,showeffN = F,mainTitle = T)
  dev.off()
  
  ### *ECOCADIZ summer survey* ----
  png(file.path(paste0(path,"/Length_fit_Ecocadiz.png")),width=8,height=9,res=300,units='in')
  SSplotComps(output, subplots = c(1),kind = "LEN",fleets = 3,maxrows = 4,maxcols = 4,
              showsampsize = F,showeffN = F,mainTitle = T)
  dev.off()
  
  ### *ECOCADIZ-RECLUTAS fall survey* ----
  
  png(file.path(paste0(path,"/Length_fit_EcocadizRecl.png")),width=8,height=9,res=300,units='in')
  SSplotComps(output, subplots = c(1),kind = "LEN",fleets = 5,maxrows = 4,maxcols = 4,
              showsampsize = F,showeffN = F,mainTitle = T)
  dev.off()
  
  ## Residuals length composition by source data
  
  ### *FLEET by quarters* ----
  png(file.path(paste0(path,"/Length_residuals_Seine.png")),width=7,height=3,res=300,units='in')
  SSplotComps(output, subplots = c(24),kind = "LEN",fleets = 1,maxrows = 12,maxcols = 5,
              showsampsize = F,showeffN = F)
  dev.off()
  
  ### *PELAGO spring survey* ----
  png(file.path(paste0(path,"/Length_residuals_Pelago.png")),width=7,height=3,res=300,units='in')
  SSplotComps(output, subplots = c(24),kind = "LEN",fleets =2,maxrows = 12,maxcols = 5,
              showsampsize = F,showeffN = F)
  dev.off()
  
  ### *ECOCADIZ summer survey* ----
  png(file.path(paste0(path,"/Length_residuals_Ecocadiz.png")),width=7,height=3,res=300,units='in')
  SSplotComps(output, subplots = c(24),kind = "LEN",fleets = 3,maxrows = 12,maxcols = 5,
              showsampsize = F,showeffN = F)
  dev.off()
  
  ### *ECOCADIZ-RECLUTAS fall survey* ----
  png(file.path(paste0(path,"/Length_residuals_EcocadizRecl.png")),width=7,height=3,res=300,units='in')
  SSplotComps(output, subplots = c(24),kind = "LEN",fleets = 5,maxrows = 12,maxcols = 5,
              showsampsize = F,showeffN = F)
  dev.off()
  
  ## Run test indices ----
  png(file.path(paste0(path,"/Runtest_residuals_indices.png")),width=7,height=7,res=300,units='in')
  sspar(mfrow = c(3, 2), plot.cex = 0.8)
  SSplotRunstest(output,subplots = "cpue", add = TRUE, legendcex = 0.8,verbose = F)
  SSplotJABBAres(output,subplots = "cpue", add = TRUE, legendcex = 0.8,verbose = F)
  dev.off()
  
  ## Run test length ----
  png(file.path(paste0(path,"/Runtest_residuals_Length.png")),width=7,height=7,res=300,units='in')
  sspar(mfrow = c(3, 2), plot.cex = 0.8)
  SSplotRunstest(output,subplots = "len", add = TRUE, legendcex = 0.8,verbose = F)
  SSplotJABBAres(output,subplots = "len", add = TRUE, legendcex = 0.8,verbose = F)
  dev.off()
  
  ## Selectivity ----
  png(file.path(paste0(path,"/Selectividad.png")),width=6,height=5,res=300,units='in')
  SSplotSelex(output,subplots =1)
  dev.off()
  
  # 
  # # tablas ----

  indices <- inputs$dat$CPUE%>%
    pivot_wider(
      names_from = "index",  # Esta columna (index) se convertirá en nombres de columnas
      values_from = c("obs", "se_log","seas")  # Estas columnas llenarán las nuevas columnas
    )

nsamp <- inputs$dat$lencomp %>%
  filter(FltSvy >= 2) %>%
  select(Yr, FltSvy, Nsamp) %>%
  pivot_wider(names_from = FltSvy, values_from = Nsamp) %>%
  rename_with(~c("year", "nm_2", "nm_3", "nm_5"), .cols = c(Yr, `2`, `3`, `5`)) %>% mutate(nm_4=NA)

combined_df <- left_join(indices, nsamp, by = "year")

  params<-output$estimated_non_dev_parameters%>%
    rownames_to_column(var = "Parameter")

  params_est<-params %>% 
    select(c(Parameter,Value,Phase,Min,Max,Init,Status,Parm_StDev,Gradient))

  natM<-inputs$ctl$natM
 
  convergency<-output$maximum_gradient_component
  like<-output$likelihoods_used

  run_cpue<-SSplotRunstest(output,subplots = "cpue")
  jaba_cpue<-SSplotJABBAres(output,subplots = "cpue")
  run_len<-SSplotRunstest(output,subplots = "len")
  jaba_len<-SSplotJABBAres(output,subplots = "len")

  # #diagnostico
  # #Convergencia Likehood RMSE_indices RMSE_tallas Rho ForcastRho
  # 
  diags<-data.frame(convergency=convergency,
                    Totallike=like$values[1],
                    RMSE_index=jaba_cpue$RMSE.perc[5],
                    RMSE_len=jaba_len$RMSE.perc[5])

  
  # input parameters biology
  
  biologypar<-inputs$ctl$MG_parms[1:9,] %>%
    mutate(Parameters = c("L_at_Amin", 
                          "L_at_Amax",
                          "VonBert_K",
                          "CV_young",
                          "CV_old",
                          "Wtlen_1", 
                          "Wtlen_2",
                          "Mat50%",
                          "Mat_slope"))%>% select(c("Parameters","LO","HI","INIT","PRIOR","PHASE"))
  #'*---------------------------------------------------------------------*
  # ## table index by surveys ----
  ft1<-indices %>%
    select(year,obs_2,obs_3,obs_4,obs_5) %>%
    arrange(year) %>%  # Ordenar por la columna 'year'
    mutate(across(c(obs_2,obs_3,obs_4,obs_5), \(x) round(x, 0))) %>%  # Redondear todas las columnas seleccionadas
    flextable()  # Crear la flextable
  
  ft1<-set_header_labels(ft1, 
                         year="year",
                         obs_2="PELAGO",
                         obs_3="ECOCADIZ",
                         obs_4="BOCADEVA",
                         obs_5="ECOCADIZ-RECLUTAS")
  
  ft1 <- add_header_row(ft1, 
                        values = c("", "Acoustic Biomass (ton) by surveys"),
                        colwidths = c(1, 4))
  
  ft1 <- colformat_double(ft1, digits=1, na_str = "")
  ft1 <- colformat_num(ft1,big.mark = "", na_str = "")
  ft1 <- align(ft1,part = "header", align = "center") 
  ft1 <- autofit(ft1)
  ft1
  
  # 
  # # table data weighting by surveys ----
  ft2<-combined_df %>%
    select(year,seas_2,se_log_2,nm_2,seas_3,se_log_3,nm_3,seas_4,se_log_4,nm_4,seas_5,se_log_5,nm_5) %>%
    arrange(year)%>%
    mutate(across(where(is.numeric), ~round(.x, 2))) %>%  # Redondear solo columnas numéricas
    flextable()

  ft2<-set_header_labels(ft2,
                         year="year",
                         seas_2="month",
                         se_log_2="cv",
                         nm_2="nm",
                         seas_3="month",
                         se_log_3="cv",
                         nm_3="nm",
                         seas_4="month",
                         se_log_4="cv",
                         nm_4="nm",
                         seas_5="month",
                         se_log_5="cv",
                         nm_5="nm")

  ft2 <- add_header_row(ft2,
                        values = c("", "PELAGO","ECOCADIZ","BOCADEVA","ECOCADIZ-RECLUTAS"),
                        colwidths = c(1,3,3,3,3))

  ft2 <- colformat_double(ft2, digits=1, na_str = "")
  ft2 <- colformat_num(ft2,big.mark = "", na_str = "")
  ft2 <- align(ft2,part = "header", align = "center")
  ft2 <- autofit(ft2)
  ft2

  ft3<-params_est %>%  # Redondear solo columnas numéricas
    flextable()
  ft3

ft4<-natM %>%
  mutate(Parameters = "natural mortality") %>%
  select(Parameters, everything()) %>% flextable()
ft4


ft6<-diags%>%
  flextable()
ft6

ft7<-run_cpue%>%
  flextable()
ft7

ft8<-jaba_cpue %>% flextable()
ft8

ft9<-run_len%>%
  flextable()
ft9

ft10<-jaba_len %>% flextable()
ft10

ft11 <-  biologypar%>% flextable()
ft11

save_as_image(ft1, path = paste0(path,"/tb_index.png"))
save_as_image(ft2, path = paste0(path,"/tb_cv_nm.png"))
save_as_image(ft3, path = paste0(path,"/tb_params_est.png"))
save_as_image(ft4, path = paste0(path,"/tb_natM.png"))
save_as_image(ft11, path = paste0(path,"/tb_biology.png"))


save_as_image(ft6, path = paste0(path,"/tb_diagnostic.png"))
save_as_image(ft7, path = paste0(path,"/tb_run_cpue.png"))
save_as_image(ft8, path = paste0(path,"/tb_jabba_cpue.png"))

save_as_image(ft9, path = paste0(path,"/tb_run_len.png"))
save_as_image(ft10, path = paste0(path,"/tb_jabba_len.png"))


save(ft1,ft2,ft3, file=paste0(path,"/tables_run.RData"))
}
  


## time series ----
# 
# stdreptlist<-data.frame(replist$derived_quants[,1:3])
# summary <- read.table(("model/run/ss_summary.sso"),header=F,sep="",na="NA",fill=T) 
# 
# year <- unique(inputs$dat$catch$year[inputs$dat$catch$year != -999])
# 
# 
# ssb<-stdreptlist %>% filter(grepl("SSB", Label)) %>% mutate(year = as.numeric(sub("SSB_", "", Label))) %>%
#   filter(!is.na(year)) %>% 
#   filter(year >= inputs$dat$styr & year <= inputs$dat$endyr) %>%  # Filtrar por el rango de años
#   select(year,Value,StdDev)
# 
# 
# recr<-stdreptlist %>% filter(grepl("Recr", Label)) %>% mutate(year = as.numeric(sub("Recr_", "", Label))) %>%
#   filter(!is.na(year)) %>% 
#   filter(year >= inputs$dat$styr & year <= inputs$dat$endyr) %>%  # Filtrar por el rango de años
#   select(year,Value,StdDev)
# 
# ft<-stdreptlist %>% filter(grepl("F", Label)) %>% mutate(year = as.numeric(sub("F_", "", Label))) %>% filter(!is.na(year)) %>% 
#   filter(year >= inputs$dat$styr & year <= inputs$dat$endyr) %>%  # Filtrar por el rango de años
#   select(year,Value,StdDev)
# 
# bt<-summary %>% filter(grepl("TotBio", V1)) %>% 
#   mutate(year = as.numeric(sub("TotBio_", "", V1))) %>% 
#   filter(!is.na(year)) %>% 
#   filter(year >= inputs$dat$styr & year <= inputs$dat$endyr) %>%  # Filtrar por el rango de años
#   select(year,V2)
# 
# catch<-summary %>% filter(grepl("TotCatch", V1)) %>% 
#   mutate(year = as.numeric(sub("TotCatch_", "", V1))) %>% 
#   filter(!is.na(year)) %>% 
#   filter(year >= inputs$dat$styr & year <= inputs$dat$endyr) %>%  # Filtrar por el rango de años
#   select(year,V2)
# 
# 
# data<-data.frame(yrs=recr$year,
#                  Rt=round(as.numeric(recr$Value),0), 
#                  BD=round(as.numeric(ssb$Value),0),
#                  Bt=round(as.numeric(bt$V2),0),
#                  Ft=round(as.numeric(ft$Value),2),
#                  Ct=round(as.numeric(catch$V2),0))
# data
# 
# rt<- data.frame(x=recr$year,
#                 y=recr$Value,
#                 lower = (recr$Value-1.96*recr$StdDev),
#                 upper = (recr$Value+1.96*recr$StdDev))%>% 
#   mutate(indicador='Rt')
# Bt<- data.frame(x=bt$year,
#                 y=as.numeric(bt$V2))%>% 
#   mutate(indicador='BT')
# 
# Ct<- data.frame(x=catch$year,
#                 y=as.numeric(catch$V2))%>% 
#   mutate(indicador='CT')
# 
# bd<- data.frame(x=ssb$year,
#                 y=ssb$Value,
#                 lower = (ssb$Value-1.96*ssb$StdDev),
#                 upper = (ssb$Value+1.96*ssb$StdDev))%>% 
#   mutate(indicador='SSB')
# 
# Ft<- data.frame(x=ft$year,
#                 y=ft$Value,
#                 lower = (ft$Value-1.96*ft$StdDev),
#                 upper = (ft$Value+1.96*ft$StdDev))%>% 
#   mutate(indicador='Ft')
# 
# p1<- ggplot(data=rt)+
#   geom_line(aes(x=x,y=y))+
#   geom_ribbon(aes(ymin=lower,ymax=upper,x=x),alpha=0.2)+
#   labs(x = '', y = "Recluitment")  +
#   scale_x_continuous(breaks = seq(from = 1960, to = 2060, by = 4)) +
#   theme_bw(base_size=9) +
#   ggtitle('')+
#   theme(plot.title = element_text(hjust = 0.5),legend.position="top")
# 
# p2<- ggplot(data=Bt)+
#   geom_line(aes(x=x,y=y))+
#   #geom_ribbon(aes(ymin=lower,ymax=upper,x=x),alpha=0.2)+
#   labs(x = '', y = "Total biomass 1+")  +
#   scale_x_continuous(breaks = seq(from = 1960, to = 2060, by = 4)) +
#   theme_bw(base_size=9) +
#   ggtitle('')+
#   theme(plot.title = element_text(hjust = 0.5),legend.position="top")
# 
# p3<- ggplot(data=bd)+
#   geom_line(aes(x=x,y=y))+
#   geom_ribbon(aes(ymin=lower,ymax=upper,x=x),alpha=0.2)+
#   labs(x = '', y = "SSB")  +
#   scale_x_continuous(breaks = seq(from = 1960, to = 2060, by = 4)) +
#   theme_bw(base_size=9) +
#   ggtitle('')+
#   theme(plot.title = element_text(hjust = 0.5),legend.position="top")
# 
# p4<- ggplot(data=Ft)+
#   geom_line(aes(x=x,y=y))+
#   geom_ribbon(aes(ymin=lower,ymax=upper,x=x),alpha=0.2)+
#   labs(x = '', y = "F")  +
#   scale_x_continuous(breaks = seq(from = 1960, to = 2060, by = 4)) +
#   theme_bw(base_size=9) +
#   ggtitle('')+
#   theme(plot.title = element_text(hjust = 0.5),legend.position="top")
# 
# p5<- ggplot(data=Ct)+
#   geom_line(aes(x=x,y=y))+
#   #geom_ribbon(aes(ymin=lower,ymax=upper,x=x),alpha=0.2)+
#   labs(x = '', y = "Catch")  +
#   scale_x_continuous(breaks = seq(from = 1960, to = 2060, by = 4)) +
#   theme_bw(base_size=9) +
#   ggtitle('')+
#   theme(plot.title = element_text(hjust = 0.5),legend.position="top")
# 
# fig<-ggarrange(p2,p1,p4,ncol=1,nrow=3,common.legend=TRUE,legend='right') 
# ggsave("report/run/SeriesTiempo.png", fig,  width=7, height=6)

setwd(wd)