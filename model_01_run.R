## Run analysis, write model results

## Before:
## After:

library(icesTAF)

#setwd("..")
old_wd <- getwd()

mkdir("model/run")
path_esc<-"model/run"
# libraries
library(r4ss) 
library(reshape2)
library(readxl)
library(openxlsx)
library(dplyr)
library(kableExtra)
library(devtools)
library(ss3diags)

# directorios ----
path.data<-"boot/data/run" 
list.files(path.data)
# Scenarios ----
#'*------------------------------------------------------------------------------------------*
### S0 ----
#'*------------------------------------------------------------------------------------------*
s0_path   <- file.path(path.data, "S0") 
s0_model  <- file.path(path_esc)
cp(s0_path, s0_model)
cp("boot/software/ss3", "model/run/S0")
wd <- paste0(getwd(),"/model/run/S0")
#setwd(wd)
system(wd)
system(paste0("chmod 755 ",wd,"/ss3"))
r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
setwd(old_wd)
#' 
#' ## Recruitment scenarios ----
#' #'*------------------------------------------------------------------------------------------*
#' ### S0.1 ----
#' # S0 + recruitment pulse in October
#' #'*------------------------------------------------------------------------------------------*
#' s0.1_path   <- file.path(path.data, "S0.1")
#' cp(s0.1_path, "model/run")
#' cp("boot/software/ss3", "model/run/S0.1")
#' wd <- paste0(getwd(),"/model/run/S0.1")
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' #'*------------------------------------------------------------------------------------------*
#' ### S0.2 ----
#' # S0.1 + two recruitment pulses in July and October 
#' # (fixed proportions 0.3 and 0.7 - negative phase) 
#' #'*------------------------------------------------------------------------------------------*
#' s0.2_path   <- file.path(path.data, "S0.2")
#' cp(s0.2_path, "model/run")
#' cp("boot/software/ss3", "model/run/S0.2")
#' wd <- paste0(getwd(),"/model/run/S0.2")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' #'*------------------------------------------------------------------------------------------*
#' ### S0.3 ----
#' # S0.2 + two recruitment pulses in July and October 
#' # (model estimated fixed proportion for 1989-2023, phase=2)
#' #'*------------------------------------------------------------------------------------------*
#' s0.3_path   <- file.path(path.data, "S0.3")
#' cp(s0.3_path, "model/run")
#' cp("boot/software/ss3", "model/run/S0.3")
#' wd <- paste0(getwd(),"/model/run/S0.3")
#' 
#' setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' #'*------------------------------------------------------------------------------------------*
#' ### S0.4 ----
#' # S0.3 + two recruitment pulses in July and October 
#' # (model estimated variable proportion within 1989-2023 using "random walk")
#' #'*------------------------------------------------------------------------------------------*
#' s0.4_path   <- file.path(path.data, "S0.4")
#' cp(s0.4_path, "model/run")
#' cp("boot/software/ss3", "model/run/S0.4")
#' wd <- paste0(getwd(),"/model/run/S0.4")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' #'*------------------------------------------------------------------------------------------*
#' ### S0.5 ----
#' # S0.4 + four recruitment pulses in january, may, july and october
#' # (model estimated variable proportion within 1989-2023 using "random walk")
#' #'*------------------------------------------------------------------------------------------*
#' s0.5_path   <- file.path(path.data, "S0.5")
#' cp(s0.5_path, "model/run")
#' cp("boot/software/ss3", "model/run/S0.5")
#' wd <- paste0(getwd(),"/model/run/S0.5")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' ## Age selectivity scenarios ----
#' #'*------------------------------------------------------------------------------------------*
#' ### S1.0 ----
#' # S0.2 + age-based selectivity 1.0 for all ages starting at age 1 (PELAGO)
#' #'*------------------------------------------------------------------------------------------*
#' s1.0_path   <- file.path(path.data, "S1.0")
#' cp(s1.0_path, "model/run")
#' cp("boot/software/ss3", "model/run/S1.0")
#' wd <- paste0(getwd(),"/model/run/S1.0")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' #'*------------------------------------------------------------------------------------------*
#' ### S1.1 ----
#' # S1.0 + logistic age-based selectivity (SEINE)
#' #'*------------------------------------------------------------------------------------------*
#' s1.1_path   <- file.path(path.data, "S1.1")
#' cp(s1.1_path, "model/run")
#' cp("boot/software/ss3", "model/run/S1.1")
#' wd <- paste0(getwd(),"/model/run/S1.1")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' ## Growth parameters scenarios ----
#' #'*------------------------------------------------------------------------------------------*
#' ### S2.0 ----
#' # S0.1 + re-estimate inside de model growth parameters Linf, K and L0
#' #'*------------------------------------------------------------------------------------------*
#' s2.0_path   <- file.path(path.data, "S2.0")
#' cp(s2.0_path, "model/run")
#' cp("boot/software/ss3", "model/run/S2.0")
#' wd <- paste0(getwd(),"/model/run/S2.0")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' #'*------------------------------------------------------------------------------------------*
#' ### S2.1 ----
#' # S2.0 + fixed Linf=19.96 cm
#' #'*------------------------------------------------------------------------------------------*
#' s2.1_path   <- file.path(path.data, "S2.1")
#' cp(s2.1_path, "model/run")
#' cp("boot/software/ss3", "model/run/S2.1")
#' wd <- paste0(getwd(),"/model/run/S2.1")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' 
#' 
#' #'*------------------------------------------------------------------------------------------*
#' ### S2.2 ----
#' # S2.1 + fixed Linf=19.96 and K = 0.46
#' #'*------------------------------------------------------------------------------------------*
#' s2.2_path   <- file.path(path.data, "S2.2")
#' cp(s2.2_path, "model/run")
#' cp("boot/software/ss3", "model/run/S2.2")
#' wd <- paste0(getwd(),"/model/run/S2.2")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' 
#' ## Data weighting ----
#' #'*------------------------------------------------------------------------------------------*
#' ### S3.0 ----
#' # S1.0 + re-estimate sample size using Francis method T.A.1.8.
#' #'*------------------------------------------------------------------------------------------*
#' s3.0_path   <- file.path(path.data, "S3.0")
#' cp(s3.0_path, "model/run")
#' cp("boot/software/ss3", "model/run/S3.0")
#' wd <- paste0(getwd(),"/model/run/S3.0")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' 
#' ## Block selectivity ----
#' #'*------------------------------------------------------------------------------------------*
#' ### S4.0 ----
#' # S3.0 + length-based selectivity (Seine) with
#' # 3 blocks (block 1: 1989-2000, block 2: 2001-2010, block 3: 2010-2023)
#' # inflexion and L95% parameter
#' #'*------------------------------------------------------------------------------------------*
#' s4.0_path   <- file.path(path.data, "S4.0")
#' cp(s4.0_path, "model/run")
#' cp("boot/software/ss3", "model/run/S4.0")
#' wd <- paste0(getwd(),"/model/run/S4.0")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' #'*------------------------------------------------------------------------------------------*
#' ### S4.1 ----
#' # S4.0 + length-based selectivity (Seine) with
#' # 3 blocks (block 1: 1989-2000, block 2: 2001-2010, block 3: 2010-2023),
#' # only inflexion parameter.
#' #'*------------------------------------------------------------------------------------------*
#' s4.1_path   <- file.path(path.data, "S4.1")
#' cp(s4.1_path, "model/run")
#' cp("boot/software/ss3", "model/run/S4.1")
#' wd <- paste0(getwd(),"/model/run/S4.1")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' #'*------------------------------------------------------------------------------------------*
#' ### S5.0 ----
#' # S0 + stock assessment until 2023
#' #'*------------------------------------------------------------------------------------------*
#' s5.0_path   <- file.path(path.data, "S5.0")
#' cp(s5.0_path, "model/run")
#' cp("boot/software/ss3", "model/run/S5.0")
#' wd <- paste0(getwd(),"/model/run/S5.0")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' #'*------------------------------------------------------------------------------------------*
#' ### S5.1 ----
#' # S5.0 + include BOCADEVA
#' #'*------------------------------------------------------------------------------------------*
#' s5.1_path   <- file.path(path.data, "S5.1")
#' cp(s5.1_path, "model/run")
#' cp("boot/software/ss3", "model/run/S5.1")
#' wd <- paste0(getwd(),"/model/run/S5.1")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' #'*------------------------------------------------------------------------------------------*
#' ### S5.2 ----
#' # S5.1 + age maturity (este no funcionó, revisar!!!)
#' #'*------------------------------------------------------------------------------------------*
#' s5.2_path   <- file.path(path.data, "S5.2")
#' cp(s5.2_path, "model/run")
#' cp("boot/software/ss3", "model/run/S5.2")
#' wd <- paste0(getwd(),"/model/run/S5.2")
#' 
#' #setwd(wd)
#' system(wd)
#' system(paste0("chmod 755 ",wd,"/ss3"))
#' r4ss::run(dir=wd, exe="ss3", skipfinished=FALSE, show_in_console =T)
#' setwd(old_wd)
#' 
#' 
