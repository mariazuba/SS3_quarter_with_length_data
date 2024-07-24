## Extract results of interest, write TAF output tables

## Before:
## After:



mkdir("output/run")

# Script information ------------------------------------------------------


# Load packages -----------------------------------------------------------

library(icesTAF)
library(r4ss)
library(tidyverse)
library(lubridate)

# Setup and read in files -----------------------------------------------------

path_esc<-"model/run" 
path.plot<-"output/run" 

#'*------------------------------------------------------------------------------------------*
### S0 ----
# Single recruitment pulse in January: 
# growth parameters: Linf=19.96, K=0.46, L0=6cm
# maturity at length = L50% = 12 cm and slope=-0.45, 
# natural mortality = 2.21, 1.3, 1.3, 1.3, 1.3.
# Age based selectivity: 1,0 for all ages, 
# Length-based selectivity (seine): two blocks (block 1989-2000, block 2001-2023)
#'*------------------------------------------------------------------------------------------*
s0_model  <- file.path(path_esc,"S0")
s0_output <- r4ss::SS_output(dir = s0_model,forecast=FALSE)
#r4ss::SS_plots(replist = s0_output, dir = path.plot,printfolder = "S0_plots")
## Recruitment scenarios ----
#'*------------------------------------------------------------------------------------------*
### S0.1 ----
# S0 + recruitment pulse in October
#'*------------------------------------------------------------------------------------------*
s0.1_model  <- file.path(path_esc,"S0.1")
s0.1_output <- r4ss::SS_output(dir = s0.1_model,forecast=FALSE)
#r4ss::SS_plots(replist = s0.1_output, dir = path.plot,printfolder = "S0.1_plots")
#'*------------------------------------------------------------------------------------------*
### S0.2 ----
# S0.1 + two recruitment pulses in July and October 
# (fixed proportions 0.3 and 0.7 - negative phase) 
#'*------------------------------------------------------------------------------------------*
s0.2_model  <- file.path(path_esc,"S0.2")
s0.2_output <- r4ss::SS_output(dir = s0.2_model,forecast=FALSE)
#r4ss::SS_plots(replist = s0.2_output, dir = path.plot,printfolder = "S0.2_plots")
#'*------------------------------------------------------------------------------------------*
### S0.3 ----
# S0.2 + two recruitment pulses in July and October 
# (model estimated fixed proportion for 1989-2023, phase=2)
#'*------------------------------------------------------------------------------------------*
s0.3_model  <- file.path(path_esc,"S0.3")
s0.3_output <- r4ss::SS_output(dir = s0.3_model,forecast=FALSE)
#r4ss::SS_plots(replist = s0.3_output, dir = path.plot,printfolder = "S0.3_plots")
#'*------------------------------------------------------------------------------------------*
### S0.4 ----
# S0.3 + two recruitment pulses in July and October 
# (model estimated variable proportion within 1989-2023 using "random walk")
#'*------------------------------------------------------------------------------------------*
s0.4_model  <- file.path(path_esc,"S0.4")
s0.4_output <- r4ss::SS_output(dir = s0.4_model,forecast=FALSE)
#r4ss::SS_plots(replist = s0.4_output, dir = path.plot,printfolder = "S0.4_plots")
#'*------------------------------------------------------------------------------------------*
### S0.5 ----
# S0.4 + four recruitment pulses in january, may, july and october
# (model estimated variable proportion within 1989-2023 using "random walk")
#'*------------------------------------------------------------------------------------------*
s0.5_model  <- file.path(path_esc,"S0.5")
s0.5_output <- r4ss::SS_output(dir = s0.5_model,forecast=FALSE)
#r4ss::SS_plots(replist = s0.5_output, dir = path.plot,printfolder = "S0.5_plots")

## Age selectivity scenarios ----
#'*------------------------------------------------------------------------------------------*
### S1.0 ----
# S0.2 + age-based selectivity 1.0 for all ages starting at age 1 (PELAGO)
#'*------------------------------------------------------------------------------------------*
s1.0_model  <- file.path(path_esc,"S1.0")
s1.0_output <- r4ss::SS_output(dir = s1.0_model,forecast=FALSE)
#r4ss::SS_plots(replist = s1.0_output, dir = path.plot,printfolder = "S1.0_plots")
#'*------------------------------------------------------------------------------------------*
### S1.1 ----
# S1.0 + logistic age-based selectivity (SEINE)
#'*------------------------------------------------------------------------------------------*
s1.1_model  <- file.path(path_esc,"S1.1")
s1.1_output <- r4ss::SS_output(dir = s1.1_model,forecast=FALSE)
#r4ss::SS_plots(replist = s1.1_output, dir = path.plot,printfolder = "S1.1_plots")
## Growth parameters scenarios ----
#'*------------------------------------------------------------------------------------------*
### S2.0 ----
# S0.1 + re-estimate inside de model growth parameters Linf, K and L0
#'*------------------------------------------------------------------------------------------*
s2.0_model  <- file.path(path_esc,"S2.0")
s2.0_output <- r4ss::SS_output(dir = s2.0_model,forecast=FALSE)
#r4ss::SS_plots(replist = s2.0_output, dir = path.plot,printfolder = "S2.0_plots")
#'*------------------------------------------------------------------------------------------*
### S2.1 ----
# S2.0 + fixed Linf=19.96 cm
#'*------------------------------------------------------------------------------------------*
s2.1_model  <- file.path(path_esc,"S2.1")
s2.1_output <- r4ss::SS_output(dir = s2.1_model,forecast=FALSE)
#r4ss::SS_plots(replist = s2.1_output, dir = path.plot,printfolder = "S2.1_plots")
#'*------------------------------------------------------------------------------------------*
### S2.2 ----
# S2.1 + fixed Linf=19.96 and K = 0.46
#'*------------------------------------------------------------------------------------------*
s2.2_model  <- file.path(path_esc,"S2.2")
s2.2_output <- r4ss::SS_output(dir = s2.2_model,forecast=FALSE)
#r4ss::SS_plots(replist = s2.2_output, dir = path.plot,printfolder = "S2.2_plots")
## Data weighting ----
#'*------------------------------------------------------------------------------------------*
### S3.0 ----
# S1.0 + re-estimate sample size using Francis method T.A.1.8.
#'*------------------------------------------------------------------------------------------*
s3.0_model  <- file.path(path_esc,"S3.0")
s3.0_output <- r4ss::SS_output(dir = s3.0_model,forecast=FALSE)
#r4ss::SS_plots(replist = s3.0_output, dir = path.plot,printfolder = "S3.0_plots")
## Block selectivity ----
#'*------------------------------------------------------------------------------------------*
### S4.0 ----
# S3.0 + length-based selectivity (Seine) with
# 3 blocks (block 1: 1989-2000, block 2: 2001-2010, block 3: 2010-2023)
# inflexion and L95% parameter
#'*------------------------------------------------------------------------------------------*
s4.0_model  <- file.path(path_esc,"S4.0")
s4.0_output <- r4ss::SS_output(dir = s4.0_model,forecast=FALSE)
#r4ss::SS_plots(replist = s4.0_output, dir = path.plot,printfolder = "S4.0_plots")
#'*------------------------------------------------------------------------------------------*
### S4.1 ----
# S4.0 + length-based selectivity (Seine) with
# 3 blocks (block 1: 1989-2000, block 2: 2001-2010, block 3: 2010-2023),
# only inflexion parameter.
#'*------------------------------------------------------------------------------------------*
s4.1_model  <- file.path(path_esc,"S4.1")
s4.1_output <- r4ss::SS_output(dir = s4.1_model,forecast=FALSE)
#r4ss::SS_plots(replist = s4.1_output, dir = path.plot,printfolder = "S4.1_plots")
#'*------------------------------------------------------------------------------------------*
### S5.0 ----
# S0 + stock assessment until 2023
#'*------------------------------------------------------------------------------------------*
s5.0_model  <- file.path(path_esc,"S5.0")
s5.0_output <- r4ss::SS_output(dir = s5.0_model,forecast=FALSE)
#r4ss::SS_plots(replist = s5.0_output, dir = path.plot,printfolder = "S5.0_plots")
#'*------------------------------------------------------------------------------------------*
### S5.1 ----
# S5.0 + include BOCADEVA
#'*------------------------------------------------------------------------------------------*
s5.1_model  <- file.path(path_esc,"S5.1")
s5.1_output <- r4ss::SS_output(dir = s5.1_model,forecast=FALSE)
#r4ss::SS_plots(replist = s5.1_output, dir = path.plot,printfolder = "S5.1_plots")
#'*------------------------------------------------------------------------------------------*
### S5.2 ----
# S5.1 + age maturity
#'*------------------------------------------------------------------------------------------*
# s5.2_model  <- file.path(path_esc,"S5.2")
# s5.2_output <- r4ss::SS_output(dir = s5.2_model,forecast=FALSE)
# r4ss::SS_plots(replist = s5.2_output, dir = path.plot,printfolder = "S5.2_plots")


# Write .RData ----
save(s0_output,s0.1_output,s0.2_output,s0.3_output,s0.3_output,s0.4_output,s0.5_output, 
     s1.0_output,s1.1_output,s2.0_output,s2.1_output,s2.2_output,s3.0_output,s4.0_output,
     s4.1_output,s5.0_output,s5.1_output,           
     file="./output/run/output.RData")
