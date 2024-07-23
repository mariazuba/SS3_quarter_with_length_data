## Preprocess data, write TAF data tables

## Before:
## After:

library(icesTAF)
library(r4ss)


mkdir("data")


# directorios ----
path.data<-"boot/data/Scenarios" 
list.files(path.data)

# Scenarios ----
#'*------------------------------------------------------------------------------------------*
### S0 ----
# Single recruitment pulse in January: 
# growth parameters: Linf=19.96, K=0.46, L0=6cm
# maturity at length = L50% = 12 cm and slope=-0.45, 
# natural mortality = 2.21, 1.3, 1.3, 1.3, 1.3.
# Age based selectivity: 1,0 for all ages, 
# Length-based selectivity (seine): two blocks (block 1989-2000, block 2001-2023)
#'*------------------------------------------------------------------------------------------*
s0_path   <- file.path(path.data, "S0")
s0_inputs <- r4ss::SS_read(dir = s0_path)
s0_dat    <- s0_inputs$dat
s0_ctl    <- s0_inputs$ctl
#'*specification*
s0_Pulsrecr<- s0_ctl$recr_dist_pattern
s0_L0      <- s0_ctl$MG_parms["L_at_Amin_Fem_GP_1",c("LO","HI","INIT","PHASE")] 
s0_Linf    <- s0_ctl$MG_parms["L_at_Amax_Fem_GP_1",c("LO","HI","INIT","PHASE")] 
s0_K       <- s0_ctl$MG_parms["VonBert_K_Fem_GP_1",c("LO","HI","INIT","PHASE")]
s0_CVyoung <- s0_ctl$MG_parms["CV_young_Fem_GP_1",c("LO","HI","INIT","PHASE")]
s0_CVold   <- s0_ctl$MG_parms["CV_old_Fem_GP_1",c("LO","HI","INIT","PHASE")]
s0_mat50   <- s0_ctl$MG_parms["Mat50%_Fem_GP_1",c("LO","HI","INIT","PHASE")]
s0_matslop <- s0_ctl$MG_parms["Mat_slope_Fem_GP_1",c("LO","HI","INIT","PHASE")]
s0_natM    <- s0_ctl$natM
s0_ageSeltypes    <- s0_ctl$age_selex_types
s0_lengthSeltypes <- s0_ctl$size_selex_types
s0_lenghSelparm   <- s0_ctl$size_selex_parms[,c("LO","HI","INIT","PHASE","Block","Block_Fxn")]
s0_block          <- s0_ctl$Block_Design
s0_blockSel.      <- s0_ctl$size_selex_parms_tv

## Recruitment scenarios ----
#'*------------------------------------------------------------------------------------------*
### S0.1 ----
# S0 + recruitment pulse in October
#'*------------------------------------------------------------------------------------------*
s0.1_path   <- file.path(path.data, "S0.1")
s0.1_inputs <- r4ss::SS_read(dir = s0.1_path)
s0.1_dat    <- s0.1_inputs$dat
s0.1_ctl    <- s0.1_inputs$ctl
#'*specification*
s0.1_Pulsrecr <- s0.1_ctl$recr_dist_pattern

#'*------------------------------------------------------------------------------------------*
### S0.2 ----
# S0.1 + two recruitment pulses in July and October 
# (fixed proportions 0.3 and 0.7 - negative phase) 
#'*------------------------------------------------------------------------------------------*
s0.2_path   <- file.path(path.data, "S0.2")
s0.2_inputs <- r4ss::SS_read(dir = s0.2_path)
s0.2_dat    <- s0.2_inputs$dat
s0.2_ctl    <- s0.2_inputs$ctl
#'*specification*
s0.2_Pulsrecr    <- s0.2_ctl$recr_dist_pattern
s0.2_autogeneration <- s0.2_ctl$time_vary_auto_generation
s0.2_Pulsrecr_p1 <- s0.2_ctl$MG_parms["RecrDist_GP_1_area_1_month_7",
                                      c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]
s0.2_Pulsrecr_p2 <- s0.2_ctl$MG_parms["RecrDist_GP_1_area_1_month_10",
                                      c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]

#'*------------------------------------------------------------------------------------------*
### S0.3
# S0.2 + two recruitment pulses in July and October 
# (model estimated fixed proportion for 1989-2023, phase=2)
#'*------------------------------------------------------------------------------------------*
s0.3_path   <- file.path(path.data, "S0.3")
s0.3_inputs <- r4ss::SS_read(dir = s0.3_path)
s0.3_dat    <- s0.3_inputs$dat
s0.3_ctl    <- s0.3_inputs$ctl
#'*specification*
s0.3_Pulsrecr    <- s0.3_ctl$recr_dist_pattern
s0.3_autogeneration <- s0.3_ctl$time_vary_auto_generation
s0.3_Pulsrecr_p1 <- s0.3_ctl$MG_parms["RecrDist_GP_1_area_1_month_7",
                                      c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]
s0.3_Pulsrecr_p2 <- s0.3_ctl$MG_parms["RecrDist_GP_1_area_1_month_10",
                                      c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]

#'*------------------------------------------------------------------------------------------*
### S0.4
# S0.3 + two recruitment pulses in July and October 
# (model estimated variable proportion within 1989-2023 using "random walk")
#'*------------------------------------------------------------------------------------------*
s0.4_path   <- file.path(path.data, "S0.4")
s0.4_inputs <- r4ss::SS_read(dir = s0.4_path)
s0.4_dat    <- s0.4_inputs$dat
s0.4_ctl    <- s0.4_inputs$ctl
#'*specification*
s0.4_Pulsrecr       <- s0.4_ctl$recr_dist_pattern
s0.4_autogeneration <- s0.4_ctl$time_vary_auto_generation
s0.4_Pulsrecr_p1    <- s0.4_ctl$MG_parms["RecrDist_GP_1_area_1_month_7",
                                      c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]
s0.4_Pulsrecr_p2    <- s0.4_ctl$MG_parms["RecrDist_GP_1_area_1_month_10",
                                      c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]

#'*------------------------------------------------------------------------------------------*
### S0.5
# S0.4 + four recruitment pulses in january, may, july and october
# (model estimated variable proportion within 1989-2023 using "random walk")
#'*------------------------------------------------------------------------------------------*
s0.5_path   <- file.path(path.data, "S0.5")
s0.5_inputs <- r4ss::SS_read(dir = s0.5_path)
s0.5_dat    <- s0.5_inputs$dat
s0.5_ctl    <- s0.5_inputs$ctl
#'*specification*
s0.5_Pulsrecr       <- s0.5_ctl$recr_dist_pattern
s0.5_autogeneration <- s0.5_ctl$time_vary_auto_generation
s0.5_Pulsrecr_p1    <- s0.5_ctl$MG_parms["RecrDist_GP_1_area_1_month_1",
                                         c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]
s0.5_Pulsrecr_p2    <- s0.5_ctl$MG_parms["RecrDist_GP_1_area_1_month_4",
                                         c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]
s0.5_Pulsrecr_p3    <- s0.5_ctl$MG_parms["RecrDist_GP_1_area_1_month_7",
                                         c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]
s0.5_Pulsrecr_p4    <- s0.5_ctl$MG_parms["RecrDist_GP_1_area_1_month_10",
                                         c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]


## Age selectivity scenarios ----
#'*------------------------------------------------------------------------------------------*
### S1.0
# S0.2 + age-based selectivity 1.0 for all ages starting at age 1 (PELAGO)
#'*------------------------------------------------------------------------------------------*
s1.0_path   <- file.path(path.data, "S1.0")
s1.0_inputs <- r4ss::SS_read(dir = s1.0_path)
s1.0_dat    <- s1.0_inputs$dat
s1.0_ctl    <- s1.0_inputs$ctl
#'*specification*
s1.0_Pulsrecr       <- s1.0_ctl$recr_dist_pattern
s1.0_autogeneration <- s1.0_ctl$time_vary_auto_generation
s1.0_Pulsrecr_p1    <- s1.0_ctl$MG_parms["RecrDist_GP_1_area_1_month_7",
                                      c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]
s1.0_Pulsrecr_p2    <- s1.0_ctl$MG_parms["RecrDist_GP_1_area_1_month_10",
                                      c("LO","HI","INIT","PHASE","dev_link","dev_minyr","dev_maxyr")]

s1.0_ageSeltypes <-s1.0_ctl$age_selex_types #age-based selectivity 1.0 for all ages starting at age 1 (PELAGO)


#'*------------------------------------------------------------------------------------------*
### S1.1
# S1.0 + logistic age-based selectivity (SEINE)
#'*------------------------------------------------------------------------------------------*
s1.1_path   <- file.path(path.data, "S1.1")
s1.1_inputs <- r4ss::SS_read(dir = s1.1_path)
s1.1_dat    <- s1.1_inputs$dat
s1.1_ctl    <- s1.1_inputs$ctl
#'*specification*
s1.1_ageSeltypes <- s1.1_ctl$age_selex_types #logistic age-based selectivity (SEINE)
s1.1_ageSelparm  <- s1.1_ctl$age_selex_parms[,c("LO","HI","INIT","PHASE","Block","Block_Fxn")]


## Growth parameters scenarios ----
#'*------------------------------------------------------------------------------------------*
### S2.0 ----
# S0.1 + re-estimate inside de model growth parameters Linf, K and L0
#'*------------------------------------------------------------------------------------------*
s2.0_path   <- file.path(path.data, "S2.0")
s2.0_inputs <- r4ss::SS_read(dir = s2.0_path)
s2.0_dat    <- s2.0_inputs$dat
s2.0_ctl    <- s2.0_inputs$ctl
#'*specification*

#'*------------------------------------------------------------------------------------------*
### S2.1 ----
# S2.0 + fixed Linf=19.96 cm
#'*------------------------------------------------------------------------------------------*
s2.1_path   <- file.path(path.data, "S2.1")
s2.1_inputs <- r4ss::SS_read(dir = s2.1_path)
s2.1_dat    <- s2.1_inputs$dat
s2.1_ctl    <- s2.1_inputs$ctl
#'*specification*



#'*------------------------------------------------------------------------------------------*
### S2.2 ----
# S2.1 + fixed Linf=19.96 and K = 0.46
#'*------------------------------------------------------------------------------------------*
s2.2_path   <- file.path(path.data, "S2.2")
s2.2_inputs <- r4ss::SS_read(dir = s2.2_path)
s2.2_dat    <- s2.2_inputs$dat
s2.2_ctl    <- s2.2_inputs$ctl
#'*specification*



## Data weighting ----
#'*------------------------------------------------------------------------------------------*
### S3.0 ----
# S1.0 + re-estimate sample size using Francis method T.A.1.8.
#'*------------------------------------------------------------------------------------------*
s3.0_path   <- file.path(path.data, "S3.0")
s3.0_inputs <- r4ss::SS_read(dir = s3.0_path)
s3.0_dat    <- s3.0_inputs$dat
s3.0_ctl    <- s3.0_inputs$ctl
#'*specification*



## Block selectivity ----
#'*------------------------------------------------------------------------------------------*
### S4.0 ----
# S3.0 + length-based selectivity (Seine) with
# 3 blocks (block 1: 1989-2000, block 2: 2001-2010, block 3: 2010-2023)
# inflexion and L95% parameter
#'*------------------------------------------------------------------------------------------*
s4.0_path   <- file.path(path.data, "S4.0")
s4.0_inputs <- r4ss::SS_read(dir = s4.0_path)
s4.0_dat    <- s4.0_inputs$dat
s4.0_ctl    <- s4.0_inputs$ctl
#'*specification*


#'*------------------------------------------------------------------------------------------*
### S4.1 ----
# S4.0 + length-based selectivity (Seine) with
# 3 blocks (block 1: 1989-2000, block 2: 2001-2010, block 3: 2010-2023),
# only inflexion parameter.
#'*------------------------------------------------------------------------------------------*
s4.1_path   <- file.path(path.data, "S4.1")
s4.1_inputs <- r4ss::SS_read(dir = s4.1_path)
s4.1_dat    <- s4.1_inputs$dat
s4.1_ctl    <- s4.1_inputs$ctl
#'*specification*


