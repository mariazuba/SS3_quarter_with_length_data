#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Tue Aug 27 14:50:18 2024
#_bootstrap
#C ieoinputsa_ss3 model generated by ModelWizard
#_bootstrap file: 1  irand_seed: 1724763018 first rand#: -0.782736
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
1989 1 1 1254.51 0.1
1989 2 1 2409.95 0.1
1989 3 1 1531.63 0.1
1989 4 1 100.002 0.1
1990 1 1 2167.84 0.1
1990 2 1 1283.3 0.1
1990 3 1 1168.64 0.1
1990 4 1 746.878 0.1
1991 1 1 1063.42 0.1
1991 2 1 4135.35 0.1
1991 3 1 795.883 0.1
1991 4 1 260.757 0.1
1992 1 1 1138.06 0.1
1992 2 1 1194.82 0.1
1992 3 1 541.112 0.1
1992 4 1 3.60706 0.1
1993 1 1 735.674 0.1
1993 2 1 769.736 0.1
1993 3 1 153.987 0.1
1993 4 1 117.643 0.1
1994 1 1 905.745 0.1
1994 2 1 1963.07 0.1
1994 3 1 181.439 0.1
1994 4 1 97.5035 0.1
1995 1 1 192.712 0.1
1995 2 1 72.0967 0.1
1995 3 1 138.854 0.1
1995 4 1 154.085 0.1
1996 1 1 44.2873 0.1
1996 2 1 687.789 0.1
1996 3 1 465.168 0.1
1996 4 1 356.596 0.1
1997 1 1 816.629 0.1
1997 2 1 1133.64 0.1
1997 3 1 2020.25 0.1
1997 4 1 678.773 0.1
1998 1 1 1781.65 0.1
1998 2 1 1918.05 0.1
1998 3 1 2787.91 0.1
1998 4 1 2645.8 0.1
1999 1 1 1693.57 0.1
1999 2 1 2116.98 0.1
1999 3 1 1673.33 0.1
1999 4 1 746.904 0.1
2000 1 1 403.084 0.1
2000 2 1 642.798 0.1
2000 3 1 710.304 0.1
2000 4 1 530.639 0.1
2001 1 1 1021.46 0.1
2001 2 1 3429.04 0.1
2001 3 1 2906.94 0.1
2001 4 1 1304.36 0.1
2002 1 1 1900.15 0.1
2002 2 1 3025.79 0.1
2002 3 1 2483.74 0.1
2002 4 1 836.428 0.1
2003 1 1 988.615 0.1
2003 2 1 2834.48 0.1
2003 3 1 1144.78 0.1
2003 4 1 364.178 0.1
2004 1 1 1242.95 0.1
2004 2 1 2755.36 0.1
2004 3 1 1149.25 0.1
2004 4 1 599.518 0.1
2005 1 1 1442.31 0.1
2005 2 1 2168.94 0.1
2005 3 1 773.581 0.1
2005 4 1 100.482 0.1
2006 1 1 1328.72 0.1
2006 2 1 2716.57 0.1
2006 3 1 401.161 0.1
2006 4 1 23.0329 0.1
2007 1 1 1353.81 0.1
2007 2 1 2565.52 0.1
2007 3 1 1182.75 0.1
2007 4 1 380.729 0.1
2008 1 1 648.977 0.1
2008 2 1 966.806 0.1
2008 3 1 817.653 0.1
2008 4 1 567.447 0.1
2009 1 1 577.607 0.1
2009 2 1 1574.97 0.1
2009 3 1 902.232 0.1
2009 4 1 122.849 0.1
2010 1 1 62.947 0.1
2010 2 1 1629.99 0.1
2010 3 1 864.143 0.1
2010 4 1 252.364 0.1
2011 1 1 1304.78 0.1
2011 2 1 2531.06 0.1
2011 3 1 1985.54 0.1
2011 4 1 604.736 0.1
2012 1 1 1167.17 0.1
2012 2 1 2534.76 0.1
2012 3 1 1221.79 0.1
2012 4 1 24.0752 0.1
2013 1 1 440.359 0.1
2013 2 1 2049.23 0.1
2013 3 1 3127.49 0.1
2013 4 1 237.232 0.1
2014 1 1 1788.15 0.1
2014 2 1 4187.14 0.1
2014 3 1 3041.24 0.1
2014 4 1 504.202 0.1
2015 1 1 1870.53 0.1
2015 2 1 2798.4 0.1
2015 3 1 1789.36 0.1
2015 4 1 1102.55 0.1
2016 1 1 1159.84 0.1
2016 2 1 1781.28 0.1
2016 3 1 2446.41 0.1
2016 4 1 873.209 0.1
2017 1 1 1082.32 0.1
2017 2 1 2508.75 0.1
2017 3 1 1020.65 0.1
2017 4 1 238.315 0.1
2018 1 1 244.844 0.1
2018 2 1 2360.91 0.1
2018 3 1 1528.59 0.1
2018 4 1 477.934 0.1
2019 1 1 318.867 0.1
2019 2 1 1452.97 0.1
2019 3 1 1725.05 0.1
2019 4 1 949.885 0.1
2020 1 1 1100.63 0.1
2020 2 1 2412.86 0.1
2020 3 1 2604.83 0.1
2020 4 1 1011.58 0.1
2021 1 1 571.879 0.1
2021 2 1 2771.13 0.1
2021 3 1 2922.23 0.1
2021 4 1 529.841 0.1
2022 1 1 480.772 0.1
2022 2 1 2353.11 0.1
2022 3 1 2894.51 0.1
2022 4 1 609.838 0.1
2023 1 1 1057.83 0.1
2023 2 1 3891.18 0.1
2023 3 1 2201.87 0.1
2023 4 1 529.011 0.1
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
1999 3 2 21049 0.25 #_orig_obs: 24763 PELAGO
2001 3 2 33497.6 0.25 #_orig_obs: 24913 PELAGO
2002 3 2 26712 0.25 #_orig_obs: 21335 PELAGO
2003 2 2 15092.7 0.25 #_orig_obs: 24565 PELAGO
2005 4 2 10016 0.25 #_orig_obs: 14041 PELAGO
2006 4 2 15459.8 0.25 #_orig_obs: 24082 PELAGO
2007 4 2 19686.7 0.25 #_orig_obs: 38020 PELAGO
2008 4 2 21627.3 0.25 #_orig_obs: 34162 PELAGO
2009 4 2 24893.4 0.25 #_orig_obs: 24745 PELAGO
2010 4 2 22665.7 0.25 #_orig_obs: 7395 PELAGO
2013 4 2 34018.1 0.25 #_orig_obs: 12700 PELAGO
2014 4 2 34173.4 0.25 #_orig_obs: 28917 PELAGO
2015 4 2 20176.6 0.25 #_orig_obs: 33100 PELAGO
2016 4 2 19362.9 0.25 #_orig_obs: 65345 PELAGO
2017 4 2 28221.8 0.25 #_orig_obs: 13797 PELAGO
2018 4 2 52993.3 0.25 #_orig_obs: 23473 PELAGO
2019 4 2 31711.4 0.25 #_orig_obs: 29876 PELAGO
2020 3 2 34103.1 0.25 #_orig_obs: 49787 PELAGO
2021 3 2 27847.9 0.25 #_orig_obs: 14065 PELAGO
2022 3 2 25944.9 0.25 #_orig_obs: 8972.47 PELAGO
2023 3 2 10643 0.25 #_orig_obs: 26785.5 PELAGO
2004 6 3 26341.6 0.3 #_orig_obs: 18177.1 ECOCADIZ
2006 6 3 10334.8 0.3 #_orig_obs: 35539.4 ECOCADIZ
2007 7 3 31629.1 0.3 #_orig_obs: 28882.1 ECOCADIZ
2009 7 3 18064 0.3 #_orig_obs: 21580.5 ECOCADIZ
2010 7 3 11374.4 0.3 #_orig_obs: 12338.7 ECOCADIZ
2013 8 3 21575.5 0.3 #_orig_obs: 8486.94 ECOCADIZ
2014 7 3 36191.6 0.3 #_orig_obs: 29219 ECOCADIZ
2015 7 3 29832.6 0.3 #_orig_obs: 21305.4 ECOCADIZ
2016 7 3 16487.3 0.3 #_orig_obs: 34184 ECOCADIZ
2017 7 3 22155.7 0.3 #_orig_obs: 12228.9 ECOCADIZ
2018 7 3 44508.7 0.3 #_orig_obs: 34907.7 ECOCADIZ
2019 7 3 22406.4 0.3 #_orig_obs: 57700 ECOCADIZ
2020 8 3 43380.9 0.3 #_orig_obs: 44886.9 ECOCADIZ
2023 7 3 16934.3 0.3 #_orig_obs: 9714.19 ECOCADIZ
2005 6 4 21249.9 0.3 #_orig_obs: 14673 BOCADEVA
2008 6 4 22614.2 0.32 #_orig_obs: 31527 BOCADEVA
2011 7 4 22013.2 0.4 #_orig_obs: 32757 BOCADEVA
2014 7 4 34656.9 0.3 #_orig_obs: 31569 BOCADEVA
2017 8 4 4503.36 0.61 #_orig_obs: 12392 BOCADEVA
2020 8 4 30052.2 0.43 #_orig_obs: 81466 BOCADEVA
2023 8 4 7712.47 0.62 #_orig_obs: 15138 BOCADEVA
2014 10 5 23808.7 0.2 #_orig_obs: 8113.16 ECORECLUTAS
2015 10 5 20049.3 0.2 #_orig_obs: 30826.8 ECORECLUTAS
2016 10 5 19627 0.2 #_orig_obs: 19860.9 ECORECLUTAS
2018 10 5 33261.8 0.2 #_orig_obs: 10493.3 ECORECLUTAS
2019 10 5 31625 0.2 #_orig_obs: 48397.6 ECORECLUTAS
2020 10 5 22051.9 0.2 #_orig_obs: 36070.3 ECORECLUTAS
2021 10 5 15649.9 0.2 #_orig_obs: 17512.3 ECORECLUTAS
2022 10 5 14832.2 0.2 #_orig_obs: 11912 ECORECLUTAS
2023 10 5 10505 0.2 #_orig_obs: 8299.64 ECORECLUTAS
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
 1989 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 2 1 0 3 1 1 0 1 1 1 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0
 1989 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 1 2 1 0 0 1 1 1 1 0 4 0 0 0 1 0 0 0 0 0 0 0 0 0
 1989 9 1 0 0 17  0 0 0 0 0 0 0 1 2 0 1 0 0 1 0 0 0 3 2 1 2 1 0 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0
 1989 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 4 2 0 0 0 0 0 0 2 2 3 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0
 1990 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 4 1 0 2 0 0 0 0 0 3 2 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0
 1990 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 3 1 3 1 0 0 0 1 1 0 0 1 0 1 1 0 0 0 1 0 0 0 0 0
 1990 9 1 0 0 17  0 0 0 0 0 0 0 0 1 7 1 0 1 0 0 0 0 0 1 2 1 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 1990 12 1 0 0 17  0 0 0 0 0 0 0 0 1 2 4 2 4 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 1991 3 1 0 0 17  0 0 0 1 0 0 0 0 0 0 0 0 0 0 6 3 1 0 0 3 0 2 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 1991 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 3 4 1 2 2 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0
 1991 9 1 0 0 17  0 0 0 0 0 0 0 1 2 1 1 0 0 0 0 1 2 1 2 1 0 0 0 2 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 1991 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 3 3 2 3 2 0 0 0 0 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 4 1 1 0 0 0 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 4 1 1 3 2 0 1 0 0 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 1992 9 1 0 0 17  0 0 0 0 0 0 1 0 0 2 1 0 1 0 0 0 1 1 3 1 1 1 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 4 1 0 0 2 0 1 1 2 2 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 2 0 1 0 0 1 1 3 1 1 3 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 4 1 2 0 0 2 1 1 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 1993 9 1 0 0 17  0 0 0 0 0 0 0 3 1 3 1 0 0 0 0 0 0 2 0 3 0 2 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0
 1993 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 4 4 0 0 1 0 0 0 2 0 0 1 0 0 2 0 0 0 0 0 1 0 0 0 0 0 0 0
 1994 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 1 3 6 2 0 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 4 3 7 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 1994 9 1 0 0 17  0 0 0 0 0 0 0 0 1 1 1 0 0 1 0 1 0 0 2 3 3 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 12 1 0 0 17  0 0 0 0 0 0 0 0 1 0 0 1 2 0 3 0 0 3 3 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 4 1 1 2 1 0 2 0 1 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 1995 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 2 1 1 2 1 1 2 2 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0
 1995 9 1 0 0 17  0 0 0 0 0 0 2 0 3 5 1 0 0 0 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0
 1995 12 1 0 0 17  0 0 0 0 0 0 0 0 0 1 1 3 3 1 0 0 1 0 0 1 1 2 0 1 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0
 1996 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 5 1 4 0 1 1 0 0 1 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 1996 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 3 1 3 2 1 1 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0 0 0 0 0
 1996 9 1 0 0 17  0 0 0 0 0 0 1 1 1 2 1 1 0 0 1 1 2 1 0 1 1 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 12 1 0 0 17  0 0 0 0 0 0 0 0 0 1 0 3 3 4 1 1 0 0 0 1 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 3 1 0 0 17  0 0 0 0 0 0 0 0 0 1 1 0 0 2 4 2 1 1 0 0 0 1 0 1 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 7 1 2 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 9 1 0 0 17  0 0 0 0 0 0 0 2 3 4 1 0 0 0 0 0 0 0 1 2 1 1 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
 1997 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 6 3 1 2 2 0 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 3 1 2 2 3 1 0 0 0 0 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 2 3 6 1 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 9 1 0 0 17  0 0 0 0 0 0 0 1 2 0 1 0 0 0 0 0 1 3 2 1 2 0 2 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0
 1998 12 1 0 0 17  0 0 0 0 0 0 0 1 0 0 2 0 2 1 0 0 2 0 3 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 2 4 1 1 1 0 0 0 0 0 3 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 2 4 2 2 1 0 0 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 1999 9 1 0 0 17  0 0 0 0 0 0 0 2 4 1 1 0 0 0 0 0 0 0 1 1 2 1 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 3 3 1 1 2 1 1 0 0 3 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 0 4 6 2 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2000 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 4 5 1 1 1 0 0 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2000 9 1 0 0 17  0 0 0 0 0 0 2 0 1 3 3 0 1 0 0 1 1 0 1 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 12 1 0 0 17  0 0 0 0 0 0 0 0 1 0 1 2 5 0 2 2 0 0 0 0 2 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 4 1 2 1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 1 2 1 1 0 2 1 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 9 1 0 0 17  0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 2 3 2 2 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 4 2 1 0 2 2 1 0 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 4 6 3 0 0 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 3 4 5 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 2 3 3 3 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 12 1 0 0 17  0 0 0 0 1 0 0 0 0 1 0 0 0 1 0 1 0 1 4 0 2 3 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 4 2 1 0 1 3 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2003 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 1 4 2 2 2 0 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 3 2 2 2 1 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 1 2 0 0 0 0 4 3 0 1 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 2 2 0 1 1 3 2 0 0 1 1 0 0 1 0 0 0 0 0 0 1 0 0 0
 2004 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 5 0 1 2 1 1 0 2 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0
 2004 9 1 0 0 17  0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 2 0 1 4 0 1 1 3 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0
 2004 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 1 2 1 1 1 1 3 0 1 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0
 2005 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 0 4 3 3 1 0 0 1 2 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
 2005 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 3 6 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
 2005 9 1 0 0 17  0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 3 2 5 1 0 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 2 0 3 1 2 2 2 1 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 4 3 1 3 3 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 3 2 6 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 1 2 4 4 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 3 4 1 1 0 1 0 4 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 2 1 2 3 2 0 0 0 1 0 0 0 2 2 1 0 0 0 1 0 0 0 0 0 0 0 0 0
 2007 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 4 2 3 3 0 0 0 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0 6 3 3 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
 2007 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 2 1 3 4 2 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2008 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 2 2 0 0 2 2 1 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 4 0 3 2 1 0 1 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 3 1 2 2 0 1 1 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 2 0 2 2 4 2 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0
 2009 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 1 1 0 1 0 1 2 1 0 1 1 0 1 0 2 0 1 0 0 0 0 0 0 0
 2009 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 2 2 5 0 2 0 0 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0
 2009 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 2 1 0 0 1 3 2 1 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0
 2009 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 2 0 1 1 0 0 1 0 2 1 1 2 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 3 5 0 3 0 1 0 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2010 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 3 3 3 1 0 0 0 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0
 2010 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 3 2 1 1 4 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 12 1 0 0 17  0 0 0 0 0 0 0 0 1 0 0 1 2 3 2 2 1 0 1 1 0 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 3 2 4 2 1 1 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 6 3 1 2 0 1 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 2011 9 1 0 0 17  1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 2 3 3 4 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 3 0 1 1 2 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 3 3 2 1 1 0 3 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 4 1 5 0 2 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2012 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 2 2 2 4 3 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 2 1 1 0 1 0 1 0 1 3 2 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 0 1 3 3 4 0 0 0 1 0 0 0 3 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
 2013 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 3 3 2 2 1 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2013 9 1 0 0 17  0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 2 2 1 1 3 2 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0
 2013 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 2 0 2 0 0 1 2 2 2 1 0 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 1 3 2 2 0 0 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0
 2014 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 3 1 8 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 4 4 2 1 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2014 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 3 0 1 0 0 3 2 3 0 0 1 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2015 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 3 4 2 3 1 2 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 5 3 4 0 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 9 1 0 0 17  0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 1 2 1 5 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 2 3 1 1 1 1 1 3 1 0 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2016 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 7 2 2 2 0 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 5 3 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 2 4 1 3 3 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 2 2 1 2 0 1 3 1 0 0 0 2 1 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0
 2017 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 2 3 5 4 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0
 2017 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 4 4 2 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 3 1 1 3 2 1 3 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2017 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 1 0 1 0 3 1 3 3 0 0 1 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 4 5 2 0 0 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2018 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 2 6 1 3 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 2 0 3 3 1 0 1 0 0 2 0 0 0 0 0 0 0 1 0 0 0 0 1 0
 2018 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 2 0 1 1 5 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 1 0 0 3 1 0 3 1 0 2 2 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 4 2 3 0 0 2 1 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0
 2019 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 3 3 2 0 1 0 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2019 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 2 0 1 1 3 1 1 1 2 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 4 2 3 3 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 3 6 1 0 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 3 1 1 3 4 0 0 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0
 2020 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 2 4 0 4 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 3 0 2 1 1 0 3 1 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 4 1 0 2 1 1 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 0 0 2 2 3 2 1 1 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2021 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 2 0 0 2 2 0 3 3 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2022 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 3 2 1 0 2 0 1 0 0 0 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0
 2022 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 4 2 0 2 1 0 1 0 2 1 1 0 1 0 0 0 0 1 0 0 0 0 0 0 0
 2022 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 2 1 3 1 5 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0
 2022 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 1 3 2 0 0 1 1 2 1 2 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 1 0
 2023 3 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 2 0 5 3 2 0 0 1 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0
 2023 6 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 5 5 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 9 1 0 0 17  0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 1 2 3 3 1 3 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 12 1 0 0 17  0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 0 0 2 3 2 1 0 1 3 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 2 3 1 1 1 1 2 1 0 1 2 2 2 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 2001 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 1 3 1 4 2 0 0 1 0 1 1 2 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0
 2002 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 1 0 1 4 4 1 3 4 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 2 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 1 3 0 0 1 2 1 2 1 3 3 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 4 2 6 1 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2006 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 3 5 6 0 2 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 4 2 0 0 20  0 0 0 0 1 0 0 0 0 0 0 0 0 0 3 2 1 4 3 1 1 0 0 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2008 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 1 1 0 1 0 1 3 5 2 0 1 0 0 1 0 0 0 0 0 0 0 0 0
 2009 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 4 2 1 2 2 0 1 0 0 0 2 2 0 0 1 0 0 0 0 1 0 0 0 0
 2010 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 2 6 4 1 1 0 0 0 0 2 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
 2013 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 3 2 3 0 2 2 1 1 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 1
 2014 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 3 2 2 2 2 0 0 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
 2015 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 0 4 3 2 4 1 0 2 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 1 0 0 3 1 2 4 4 0 0 0 0 2 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 3 1 1 2 2 1 0 0 2 2 0 0 1 0 2 0 0 0 0 0 0 0 0 0
 2018 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 2 2 3 1 2 1 3 1 1 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0
 2019 4 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 2 3 0 3 2 3 1 0 2 0 1 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2020 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 2 2 2 6 1 1 0 0 1 1 0 0 0 0 1 0 2 0 0 0 0 0 0 0 0 0 0
 2021 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 4 1 1 2 2 1 2 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2022 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 3 1 0 3 1 1 0 4 0 0 1 0 0 0 0 0 0 0 0 0 1 0 1 0
 2023 3 2 0 0 20  0 0 0 0 0 0 0 0 0 0 0 0 1 2 4 4 3 1 0 1 0 0 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 6 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 1 2 2 2 1 1 9 2 2 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 6 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 5 6 6 2 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 3 4 4 5 1 4 0 0 0 2 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
 2009 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 3 2 5 3 1 1 0 3 1 0 0 0 0 1 0 0 1 1 0 1 0 0 0 0
 2010 7 3 0 0 26  0 0 0 0 0 0 0 0 0 1 2 1 0 0 3 3 2 2 5 2 1 1 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 1 0 0
 2013 8 3 0 0 26  0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 0 3 5 3 6 3 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0
 2014 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 1 6 5 3 3 2 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 2015 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 1 6 3 5 2 1 1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 3 4 5 5 3 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 1 0 1 1 2 2 2 6 5 1 1 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 4 6 7 0 1 2 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 7 1 4 6 1 1 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 8 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 1 1 4 3 3 8 5 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 7 3 0 0 26  0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 6 3 0 6 2 0 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0
 2014 10 5 0 0 18  0 0 0 0 0 1 1 0 2 2 6 3 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 10 5 0 0 18  0 0 0 0 0 0 0 2 5 4 2 3 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 10 5 0 0 18  0 0 0 0 0 0 0 1 2 3 3 4 2 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 10 5 0 0 18  0 0 0 0 0 1 1 2 0 5 2 4 0 0 0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 10 5 0 0 18  0 0 0 0 0 0 1 1 5 3 0 2 2 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 10 5 0 0 18  0 0 0 0 0 0 0 0 3 5 5 4 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 10 5 0 0 18  0 0 0 0 0 0 1 1 0 1 6 3 1 0 0 1 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2022 10 5 0 0 18  0 0 0 0 0 0 1 1 1 3 6 3 2 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2023 10 5 0 0 18  0 0 0 0 0 0 1 3 1 1 3 0 3 1 1 0 0 0 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
