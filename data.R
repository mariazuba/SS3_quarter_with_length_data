## Preprocess data, write TAF data tables

library(icesTAF)
library(r4ss)
library(openxlsx)
library(readxl)
library(dplyr)

run_esc<-"boot/data/run/" 
esc<-list.files(run_esc)

for(i in 1:length(esc)){
  run.dir  <- paste0(run_esc,esc[i])
  inputs <- r4ss::SS_read(dir = run.dir)
  # setting 
  sigmaR<-inputs$ctl$SR_parms["SR_sigmaR", "INIT"]
  
  
  mkdir(paste0("data/run/",esc[i]))
  data_esc<<-paste0("data/run/",esc[i])
  
  Catch <- inputs$dat$catch
  index <- inputs$dat$CPUE
  
  lencomp<-inputs$dat$lencomp 
  
  
  save(inputs,  sigmaR,   
       file=paste0(data_esc,"/inputs.RData"))
  
  #'*-------------------------------------------------------------*
  wb <- createWorkbook()
  addWorksheet(wb, "lencomp")
  writeData(wb, sheet = "lencomp", x = lencomp)
  saveWorkbook(wb, paste0(data_esc,"/lencomposition.xlsx"),overwrite = TRUE)
  
  #'*-------------------------------------------------------------*
  wb <- createWorkbook()
  addWorksheet(wb, "Index")
  writeData(wb, sheet = "Index", x = index)
  saveWorkbook(wb, paste0(data_esc,"/Index.xlsx"),overwrite = TRUE)
  #'*-------------------------------------------------------------*
  #'
  #'#'*-------------------------------------------------------------*
  wb <- createWorkbook()
  addWorksheet(wb, "Catch")
  writeData(wb, sheet = "Catch", x = Catch)
  saveWorkbook(wb, paste0(data_esc,"/Catch.xlsx"),overwrite = TRUE)
  #'*-------------------------------------------------------------*
}


