#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Tue Aug 27 15:02:47 2024
#_bootstrap
#C ieoinputsa_ss3 model generated by ModelWizard
#_bootstrap file: 1  irand_seed: 1724763767 first rand#: 0.95364
#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1989 #_StartYr
2023 #_EndYr
4 #_Nseas
 3 3 3 3 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
1 #_Nsexes: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
3 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
5 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 SEINE  # 1
 3 1 1 1 0 PELAGO  # 2
 3 1 1 1 0 ECOCADIZ  # 3
 3 1 1 1 0 BOCADEVA  # 4
 3 1 1 1 0 ECORECLUTAS  # 5
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch_biomass(mtons):_columns_are_fisheries,year,season
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 0 0.1
-999 2 1 0 0.1
-999 3 1 0 0.1
-999 4 1 0 0.1
1989 1 1 1301.55 0.1
1989 2 1 2512.72 0.1
1989 3 1 1526.41 0.1
1989 4 1 96.7237 0.1
1990 1 1 2364.22 0.1
1990 2 1 1868.52 0.1
1990 3 1 1195.69 0.1
1990 4 1 801.681 0.1
1991 1 1 1136.44 0.1
1991 2 1 3944.45 0.1
1991 3 1 779.295 0.1
1991 4 1 281.934 0.1
1992 1 1 1090.71 0.1
1992 2 1 1365.38 0.1
1992 3 1 491.526 0.1
1992 4 1 3.53671 0.1
1993 1 1 739.4 0.1
1993 2 1 736.547 0.1
1993 3 1 170.204 0.1
1993 4 1 111.851 0.1
1994 1 1 661.668 0.1
1994 2 1 2153.77 0.1
1994 3 1 189.824 0.1
1994 4 1 87.2777 0.1
1995 1 1 197.272 0.1
1995 2 1 83.4776 0.1
1995 3 1 140.425 0.1
1995 4 1 180.682 0.1
1996 1 1 38.0642 0.1
1996 2 1 783.916 0.1
1996 3 1 526.387 0.1
1996 4 1 388.742 0.1
1997 1 1 919.094 0.1
1997 2 1 1242.06 0.1
1997 3 1 1689.81 0.1
1997 4 1 572.918 0.1
1998 1 1 1617.26 0.1
1998 2 1 1938.08 0.1
1998 3 1 2931.04 0.1
1998 4 1 2793.57 0.1
1999 1 1 2281.28 0.1
1999 2 1 1747.21 0.1
1999 3 1 1467.93 0.1
1999 4 1 669.739 0.1
2000 1 1 397.572 0.1
2000 2 1 685.465 0.1
2000 3 1 650.072 0.1
2000 4 1 697.61 0.1
2001 1 1 1059.07 0.1
2001 2 1 3019.18 0.1
2001 3 1 3108.41 0.1
2001 4 1 915.961 0.1
2002 1 1 2033.49 0.1
2002 2 1 2610.96 0.1
2002 3 1 2587.31 0.1
2002 4 1 842.212 0.1
2003 1 1 983.947 0.1
2003 2 1 2043 0.1
2003 3 1 830.963 0.1
2003 4 1 383.958 0.1
2004 1 1 1477.31 0.1
2004 2 1 1742.03 0.1
2004 3 1 1754.7 0.1
2004 4 1 699.216 0.1
2005 1 1 1462.81 0.1
2005 2 1 2347.27 0.1
2005 3 1 768.586 0.1
2005 4 1 76.4343 0.1
2006 1 1 1276.45 0.1
2006 2 1 2417.04 0.1
2006 3 1 527.05 0.1
2006 4 1 20.2022 0.1
2007 1 1 1612.59 0.1
2007 2 1 2403.79 0.1
2007 3 1 1425.43 0.1
2007 4 1 355.491 0.1
2008 1 1 538.962 0.1
2008 2 1 1028.33 0.1
2008 3 1 935.932 0.1
2008 4 1 699.388 0.1
2009 1 1 613.567 0.1
2009 2 1 1334.76 0.1
2009 3 1 1200.11 0.1
2009 4 1 144.472 0.1
2010 1 1 69.0728 0.1
2010 2 1 1812.01 0.1
2010 3 1 966.666 0.1
2010 4 1 223.133 0.1
2011 1 1 1275.51 0.1
2011 2 1 1915.06 0.1
2011 3 1 2265.35 0.1
2011 4 1 557.218 0.1
2012 1 1 1148.1 0.1
2012 2 1 2519.5 0.1
2012 3 1 1075.54 0.1
2012 4 1 28.0734 0.1
2013 1 1 392.133 0.1
2013 2 1 1685.2 0.1
2013 3 1 2556.6 0.1
2013 4 1 240.595 0.1
2014 1 1 1584.69 0.1
2014 2 1 3659.85 0.1
2014 3 1 4414.1 0.1
2014 4 1 395.531 0.1
2015 1 1 1689.87 0.1
2015 2 1 2785.26 0.1
2015 3 1 2085.21 0.1
2015 4 1 1065.58 0.1
2016 1 1 1399.08 0.1
2016 2 1 2196.6 0.1
2016 3 1 2483.22 0.1
2016 4 1 885.966 0.1
2017 1 1 1131.32 0.1
2017 2 1 2087.76 0.1
2017 3 1 1163.38 0.1
2017 4 1 225.54 0.1
2018 1 1 261.86 0.1
2018 2 1 2207.72 0.1
2018 3 1 1373.21 0.1
2018 4 1 445.321 0.1
2019 1 1 336.62 0.1
2019 2 1 1857.73 0.1
2019 3 1 1876.35 0.1
2019 4 1 846.19 0.1
2020 1 1 1179.63 0.1
2020 2 1 2433.29 0.1
2020 3 1 2763.08 0.1
2020 4 1 1162.13 0.1
2021 1 1 741.169 0.1
2021 2 1 3521.19 0.1
2021 3 1 2718.56 0.1
2021 4 1 611.025 0.1
2022 1 1 592.297 0.1
2022 2 1 2613.97 0.1
2022 3 1 2657.2 0.1
2022 4 1 861.045 0.1
2023 1 1 790.212 0.1
2023 2 1 3931.35 0.1
2023 3 1 2437.26 0.1
2023 4 1 472.377 0.1
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; 1=lognormal with bias correction; >1=df for T-dist
#_SD_Report: 0=not; 1=include survey expected value with se
#_Fleet Units Errtype SD_Report
1 1 0 0 # SEINE
2 1 0 0 # PELAGO
3 1 0 0 # ECOCADIZ
4 1 0 0 # BOCADEVA
5 1 0 0 # ECORECLUTAS
#_year month index obs err
1999 3 2 22972.5 0.25 #_orig_obs: 24763 PELAGO
2001 3 2 9711.93 0.25 #_orig_obs: 24913 PELAGO
2002 3 2 9821.5 0.25 #_orig_obs: 21335 PELAGO
2003 2 2 21197.3 0.25 #_orig_obs: 24565 PELAGO
2005 4 2 11172 0.25 #_orig_obs: 14041 PELAGO
2006 4 2 14726 0.25 #_orig_obs: 24082 PELAGO
2007 4 2 21117.8 0.25 #_orig_obs: 38020 PELAGO
2008 4 2 41773.3 0.25 #_orig_obs: 34162 PELAGO
2009 4 2 26567.1 0.25 #_orig_obs: 24745 PELAGO
2010 4 2 26999.5 0.25 #_orig_obs: 7395 PELAGO
2013 4 2 26749.6 0.25 #_orig_obs: 12700 PELAGO
2014 4 2 32904.1 0.25 #_orig_obs: 28917 PELAGO
2015 4 2 34055.6 0.25 #_orig_obs: 33100 PELAGO
2016 4 2 21427.8 0.25 #_orig_obs: 65345 PELAGO
2017 4 2 17581.5 0.25 #_orig_obs: 13797 PELAGO
2018 4 2 23196 0.25 #_orig_obs: 23473 PELAGO
2019 4 2 32368.2 0.25 #_orig_obs: 29876 PELAGO
2020 3 2 33976.1 0.25 #_orig_obs: 49787 PELAGO
2021 3 2 23560.1 0.25 #_orig_obs: 14065 PELAGO
2022 3 2 15887.3 0.25 #_orig_obs: 8972.47 PELAGO
2023 3 2 10858.6 0.25 #_orig_obs: 26785.5 PELAGO
2004 6 3 4784.23 0.3 #_orig_obs: 18177.1 ECOCADIZ
2006 6 3 8589.84 0.3 #_orig_obs: 35539.4 ECOCADIZ
2007 7 3 22854.1 0.3 #_orig_obs: 28882.1 ECOCADIZ
2009 7 3 33423.4 0.3 #_orig_obs: 21580.5 ECOCADIZ
2010 7 3 30969.9 0.3 #_orig_obs: 12338.7 ECOCADIZ
2013 8 3 46453.1 0.3 #_orig_obs: 8486.94 ECOCADIZ
2014 7 3 41525.2 0.3 #_orig_obs: 29219 ECOCADIZ
2015 7 3 24794.5 0.3 #_orig_obs: 21305.4 ECOCADIZ
2016 7 3 20441.6 0.3 #_orig_obs: 34184 ECOCADIZ
2017 7 3 37596.1 0.3 #_orig_obs: 12228.9 ECOCADIZ
2018 7 3 26774 0.3 #_orig_obs: 34907.7 ECOCADIZ
2019 7 3 37241 0.3 #_orig_obs: 57700 ECOCADIZ
2020 8 3 21662.3 0.3 #_orig_obs: 44886.9 ECOCADIZ
2023 7 3 15617.3 0.3 #_orig_obs: 9714.19 ECOCADIZ
2005 6 4 8341.87 0.3 #_orig_obs: 14673 BOCADEVA
2008 6 4 12041.7 0.32 #_orig_obs: 31527 BOCADEVA
2011 7 4 10316.6 0.4 #_orig_obs: 32757 BOCADEVA
2014 7 4 39340.9 0.3 #_orig_obs: 31569 BOCADEVA
2017 8 4 4970.76 0.61 #_orig_obs: 12392 BOCADEVA
2020 8 4 7321.05 0.43 #_orig_obs: 81466 BOCADEVA
2023 8 4 29336.9 0.62 #_orig_obs: 15138 BOCADEVA
2014 10 5 12526.4 0.2 #_orig_obs: 8113.16 ECORECLUTAS
2015 10 5 18002.3 0.2 #_orig_obs: 30826.8 ECORECLUTAS
2016 10 5 14414.8 0.2 #_orig_obs: 19860.9 ECORECLUTAS
2018 10 5 19988.4 0.2 #_orig_obs: 10493.3 ECORECLUTAS
2019 10 5 27507.9 0.2 #_orig_obs: 48397.6 ECORECLUTAS
2020 10 5 13979.9 0.2 #_orig_obs: 36070.3 ECORECLUTAS
2021 10 5 18382.7 0.2 #_orig_obs: 17512.3 ECORECLUTAS
2022 10 5 22881.8 0.2 #_orig_obs: 11912 ECORECLUTAS
2023 10 5 4915.98 0.2 #_orig_obs: 8299.64 ECORECLUTAS
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
0.5 # binwidth for population size comp 
2.5 # minimum size in the population (lower edge of first bin and size at age 0.00) 
22 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1/2) where 2 invokes new comp_comtrol format
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_Using old format for composition controls
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.0001 0 0 0 0 1 #_fleet:1_SEINE
-1 0.0001 0 0 0 0 1 #_fleet:2_PELAGO
-1 0.0001 0 0 0 0 1 #_fleet:3_ECOCADIZ
-1 0.0001 0 0 0 0 1 #_fleet:4_BOCADEVA
-1 0.0001 0 0 0 0 1 #_fleet:5_ECORECLUTAS
40 #_N_LengthBins
 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10 10.5 11 11.5 12 12.5 13 13.5 14 14.5 15 15.5 16 16.5 17 17.5 18 18.5 19 19.5 20 20.5 21 21.5 22
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 1989 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 0 5 2 2 1 0 1 1 0 1 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0
 1989 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 2 2 1 1 1 2 0 3 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 1989 9 1 0 0 17  0 0 0 0 0 1 0 0 4 4 2 2 0 0 0 0 1 0 1 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1989 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 2 2 2 1 0 0 1 1 2 1 1 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0
 1990 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 4 3 0 0 0 0 0 1 1 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0
 1990 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 5 1 1 2 1 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1990 9 1 0 0 17  0 0 0 0 0 0 0 2 5 1 2 0 0 0 0 0 1 1 0 1 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1990 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 2 4 3 3 0 2 0 0 0 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 1991 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 5 3 1 2 0 1 0 1 0 1 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0
 1991 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 4 3 2 2 1 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
 1991 9 1 0 0 17  0 0 0 0 0 0 0 1 0 2 3 0 0 0 1 0 0 1 1 4 1 0 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 12 1 0 0 17  0 0 0 0 0 0 0 0 1 1 2 1 1 0 1 0 0 3 0 1 2 0 1 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 1992 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 4 0 3 3 1 0 1 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 0 0 0 0 0 0
 1992 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 0 1 2 1 1 2 1 1 1 2 0 0 0 0 1 0 0 0 0 0 0 0 0
 1992 9 1 0 0 17  0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 2 3 1 1 1 0 0 4 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0
 1992 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 4 2 4 2 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0
 1993 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 2 0 3 2 2 1 0 1 0 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 1993 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 2 1 3 0 2 1 2 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0
 1993 9 1 0 0 17  0 0 0 0 0 0 0 2 3 3 0 1 0 0 0 0 4 0 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 12 1 0 0 17  0 0 0 0 0 0 0 0 0 1 0 5 2 1 3 0 0 0 0 0 1 0 1 0 0 0 0 1 0 0 2 0 0 0 0 0 0 0 0 0
 1994 3 1 0 0 17  1 0 0 0 0 0 0 0 0 0 0 2 0 2 4 2 1 1 1 0 0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0
 1994 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 3 4 2 1 1 0 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 9 1 0 0 17  0 0 0 0 0 0 0 1 2 2 2 0 0 0 0 1 1 0 2 1 4 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 1994 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 3 3 0 0 1 1 1 0 0 1 3 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 2 2 1 0 0 3 0 0 3 0 2 1 0 0 0 0 1 0 0 0 0 0 0 0 0
 1995 6 1 0 0 17  0 0 0 1 0 0 0 0 0 0 0 0 0 1 2 1 4 1 2 2 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 9 1 0 0 17  0 0 0 0 0 0 2 1 2 2 3 2 1 0 0 1 0 0 0 2 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 1995 12 1 0 0 17  0 0 0 0 0 0 0 0 0 1 0 5 1 1 2 0 0 0 1 0 2 0 1 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 3 2 2 1 1 2 0 0 0 2 1 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0
 1996 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 4 3 2 2 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0
 1996 9 1 0 0 17  0 0 0 0 0 0 1 2 5 1 1 0 0 0 1 0 1 0 1 0 1 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0
 1996 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 2 5 2 1 1 0 0 1 1 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 6 3 0 1 0 0 0 0 2 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
 1997 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 4 1 3 1 1 1 0 1 1 1 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0
 1997 9 1 0 0 17  0 0 0 0 0 0 1 1 3 2 3 3 0 0 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 1997 12 1 0 0 17  0 0 0 0 0 0 0 0 0 2 3 3 0 4 3 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 3 0 2 3 1 1 1 0 0 0 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0
 1998 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 4 5 3 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 9 1 0 0 17  0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 2 0 2 1 2 2 1 1 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 2 0 3 0 0 0 1 1 0 1 2 2 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 1999 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 3 1 0 2 2 1 2 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 1 1 1 1 0 1 2 1 2 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 9 1 0 0 17  0 0 0 0 0 0 1 0 6 3 1 1 0 0 0 0 0 1 0 2 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 1999 12 1 0 0 17  0 0 0 0 0 0 0 0 0 1 3 5 2 2 1 0 0 0 1 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 2 2 2 5 1 0 0 1 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 5 2 4 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 9 1 0 0 17  0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 2 3 3 4 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 2 3 0 3 1 2 0 0 0 0 2 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
 2001 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 5 4 2 1 0 1 0 0 0 0 0 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2001 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 3 2 1 3 0 0 1 1 1 0 0 0 1 0 0 1 0 0 0 0 0 0
 2001 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 2 2 1 5 1 1 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 2001 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 2 5 1 4 1 0 0 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 4 3 2 4 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0
 2002 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 4 4 2 0 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 7 1 4 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 3 1 3 2 0 0 2 0 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 2 4 4 4 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 5 3 2 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 6 1 1 2 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 3 1 0 3 2 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 4 1 3 2 2 1 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0
 2004 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 2 1 3 0 3 0 1 0 1 2 0 1 0 0 0 1 0 0 1 0 0 0 0 0 0
 2004 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 0 2 3 0 4 0 0 2 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0
 2004 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 3 3 1 2 0 2 1 0 0 1 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2005 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 2 3 2 2 2 1 1 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 5 6 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 9 1 0 0 17  0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 2 2 0 1 4 4 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 3 3 3 0 1 0 0 1 1 4 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 5 6 3 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 5 2 3 3 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 9 1 0 0 17  0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 2 1 1 1 2 3 1 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 3 4 2 1 1 0 0 2 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 3 2 1 3 1 1 2 0 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 4 2 3 1 0 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 2 1 3 4 2 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 3 0 3 2 2 2 2 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2008 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 2 0 1 2 2 2 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0
 2008 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 2 2 2 1 1 1 0 3 1 0 0 1 0 0 0 0 0 0 0 0 0
 2008 9 1 0 0 17  0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 2 2 0 1 0 2 1 4 0 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0
 2008 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 0 1 1 3 4 0 0 0 1 0 0 1 0 0 1 1 0 0 0 0 0 0 0 0 0
 2009 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 1 4 2 1 1 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0
 2009 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 2 2 3 1 0 2 1 0 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0
 2009 9 1 0 0 17  0 0 0 0 0 0 0 0 0 2 1 0 1 1 0 0 3 1 3 0 2 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 2 1 2 1 2 2 0 0 1 0 3 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 3 2 3 5 1 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 3 3 4 2 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2010 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 4 4 3 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 2 0 2 0 0 0 1 1 2 1 1 2 3 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0
 2011 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 1 3 0 0 1 1 4 0 0 2 0 0 0 0 0 0 0 0 0 0 1 0 0 0
 2011 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 3 4 0 1 0 0 3 2 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0
 2011 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 3 2 0 3 0 1 0 0 2 2 1 0 0 0 0 1 0 0 0 0 0 0 0 0
 2011 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 5 4 2 1 1 0 0 0 1 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2012 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 6 3 0 4 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 3 2 2 2 1 1 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0
 2012 9 1 0 0 17  0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 2 1 0 5 1 4 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 2 3 3 0 3 0 0 0 1 0 2 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 4 2 4 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2013 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 4 3 1 2 2 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 3 0 0 2 4 1 1 2 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2013 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 2 1 0 0 0 0 1 6 1 1 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 3 4 3 0 1 0 2 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 2 7 1 2 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 3 2 5 1 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 3 0 2 0 2 3 1 1 2 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 2 1 0 2 0 1 0 2 1 1 1 0 0 0 0 0 1 0 1 0 0 0 0 0
 2015 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 3 0 1 1 0 2 2 0 2 0 2 0 0 0 0 0 0 0 0 0 0 0 0
 2015 9 1 0 0 17  0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 4 5 2 1 2 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
 2015 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 2 2 1 2 1 0 1 5 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2016 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 4 2 1 2 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0
 2016 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 5 4 2 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 2 1 6 4 2 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2016 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 2 2 3 0 0 3 1 0 3 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 4 2 3 1 0 0 1 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 4 2 4 2 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 9 1 0 0 17  0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 2 1 2 5 1 2 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2017 12 1 0 0 17  0 0 0 0 0 0 0 0 0 1 0 0 3 2 3 0 2 1 0 1 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2018 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 5 6 1 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 3 3 4 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 3 5 2 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 2 3 0 1 3 1 0 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2019 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 4 2 1 0 0 1 3 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 2 7 1 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 9 1 0 0 17  0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 2 0 4 4 2 1 0 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0
 2019 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 2 3 3 4 0 1 0 1 1 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 6 4 1 0 1 0 2 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0
 2020 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 5 4 4 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 1 1 3 3 1 0 0 1 0 1 1 0 0 1 0 0 0 0 0 0 0 0
 2020 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 1 1 0 1 2 2 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 2 1 2 0 1 4 1 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0
 2021 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 2 1 3 1 1 2 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2021 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 3 2 2 1 4 1 1 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0
 2021 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 1 3 3 0 1 1 0 0 1 1 1 1 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0
 2022 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 4 3 0 3 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0
 2022 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 2 5 1 2 2 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
 2022 9 1 0 0 17  0 0 0 0 0 0 0 0 1 2 0 1 0 0 0 0 3 3 0 3 0 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2022 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 1 2 3 2 1 3 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 3 3 1 4 1 2 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 3 2 3 4 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 3 4 0 2 0 1 2 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0
 2023 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 4 2 3 1 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 2 1 0 0 0 5 1 0 1 2 0 0 1 2 0 0 0 1 0 1 0 0 0 0 0
 2001 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 2 2 2 0 4 2 0 0 1 0 2 0 1 0 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 2 1 5 3 2 1 1 0 1 0 0 2 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2003 2 2 0 0 20  0 0 0 0 0 0 0 0 0 0 3 1 3 5 1 1 1 0 0 0 0 1 0 0 0 2 0 0 0 1 0 0 0 1 0 0 0 0 0 0
 2005 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 2 3 7 2 2 0 2 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0
 2006 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 4 2 4 0 2 0 0 2 1 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 1 0 1 1 2 3 1 1 3 1 0 0 2 1 0 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0
 2008 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 3 1 0 0 2 3 1 1 2 1 1 1 1 0 0 0 1 0 0 0 0 0 0 0
 2009 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 2 4 2 1 0 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 2
 2010 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 2 2 1 4 3 1 0 1 1 0 2 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0
 2013 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 3 5 4 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 2 3 4 1 1 0 0 1 2 2 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0
 2015 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 3 1 0 2 2 1 0 1 2 1 1 0 2 0 2 0 0 0 0 0 0 0 0
 2016 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 1 0 2 4 2 3 2 3 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0
 2017 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 1 1 0 1 0 1 2 3 2 2 0 0 2 2 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0
 2018 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 1 4 0 3 4 2 1 2 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 0
 2019 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 1 0 0 2 0 0 1 2 2 1 0 3 3 0 2 0 0 0 0 0 0 0 0 0 0
 2020 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 3 3 1 7 0 0 1 0 1 1 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 0 4 2 2 0 0 1 1 0 4 0 2 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0
 2022 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 1 2 4 2 2 2 0 1 0 0 2 0 1 0 0 1 0 0 0 0 2 0 0 0 0 0 0 0 0
 2023 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 1 1 2 4 2 2 2 1 2 0 0 0 1 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0
 2004 6 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 1 2 2 6 5 2 3 2 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 6 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 1 3 4 4 4 2 2 5 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 7 3 0 0 26  0 0 0 0 0 3 5 5 3 1 0 0 0 1 0 0 3 3 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 7 3 0 0 26  0 0 0 0 0 3 4 12 6 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 3 0 0 26  0 0 0 0 1 4 7 4 3 2 1 0 0 0 0 1 0 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 8 3 0 0 26  0 0 0 0 0 4 4 7 6 1 0 0 0 0 0 1 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 7 3 0 0 26  0 0 0 0 1 1 3 6 4 2 0 0 0 1 1 2 1 0 1 0 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 7 3 0 0 26  0 0 0 0 2 7 8 7 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 7 3 0 0 26  0 0 0 0 2 6 7 6 3 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 7 3 0 0 26  0 0 0 0 1 2 6 8 5 2 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 7 3 0 0 26  0 0 0 0 2 3 7 8 0 1 0 0 1 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 7 3 0 0 26  0 0 0 0 0 3 9 5 5 1 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 8 3 0 0 26  0 0 0 0 1 7 2 8 2 0 0 0 0 1 0 1 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 7 3 0 0 26  0 0 0 0 0 4 3 3 1 0 0 0 0 0 2 1 4 1 4 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 10 5 0 0 18  0 0 0 0 0 0 0 3 1 4 4 0 0 2 0 0 0 0 2 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 10 5 0 0 18  0 0 0 0 0 0 1 1 2 3 5 3 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 10 5 0 0 18  0 0 0 0 0 0 0 5 2 1 6 3 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 10 5 0 0 18  0 0 0 0 0 0 2 4 1 3 4 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 10 5 0 0 18  0 0 0 0 0 0 0 1 3 4 5 1 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 10 5 0 0 18  0 0 0 0 0 0 0 0 1 6 4 2 1 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 10 5 0 0 18  0 0 0 0 0 0 0 1 1 3 8 0 2 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
 2022 10 5 0 0 18  0 0 0 0 0 0 1 1 4 4 5 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 10 5 0 0 18  0 0 0 0 0 0 2 0 0 2 3 2 0 1 0 1 1 0 3 1 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
0 #_N_age_bins
# 0 #_N_ageerror_definitions
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
# 0 0 0 0 0 0 0 #_fleet:1_SEINE
# 0 0 0 0 0 0 0 #_fleet:2_PELAGO
# 0 0 0 0 0 0 0 #_fleet:3_ECOCADIZ
# 0 0 0 0 0 0 0 #_fleet:4_BOCADEVA
# 0 0 0 0 0 0 0 #_fleet:5_ECORECLUTAS
# 0 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
# -9999  0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
# Sizefreq data. Defined by method because a fleet can use multiple methods
0 # N sizefreq methods to read (or -1 for expanded options)
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
 # Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
 # feature not yet implemented
#
999
