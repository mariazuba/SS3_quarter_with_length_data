#V3.30
#C growth parameters are estimated
#C spawner-recruitment bias adjustment Not tuned For optimality
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
1 #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern
3 # recr_dist_method for parameters
1 # not yet implemented; Future usage:Spawner-Recruitment; 1=global; 2=by area
2 # number of recruitment settlement assignments 
0 # unused option
# for each settlement assignment:
#_GPattern	month	area	age
1	 7	1	0	#_1
1  10 1 0 #_1
#1	 10	1	0	#_2
#1	 8	1	0	#_3
#1	11	1	0	#_4
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
1 #_Nblock_Patterns
2 #_blocks_per_pattern
#_begin and end years of blocks
1989 2000 2001 2024
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#
# AUTOGEN
1 1 1 1 1 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement
#
3 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=Maunder_M;_6=Age-range_Lorenzen
#_ #_Age_natmort_by sex x growthpattern
#_Age_0	Age_1	Age_2	Age_3
2.21	1.3	1.3	1.3	#_natM1
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
0 #_Age(post-settlement)_for_L1;linear growth below this
999 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
    0	  10	       6	0	0	0	-3	0	0	   0	   0	0	0	0	#_L_at_Amin       
    5	  22	   19.96	0	0	0	-3	0	0	   0	   0	0	0	0	#_L_at_Amax       
  0.1	   2	    0.46	0	0	0	-3	0	0	   0	   0	0	0	0	#_VonBert_k       
 0.05	0.25	     0.1	0	0	0	-3	0	0	   0	   0	0	0	0	#_CV_young        
 0.05	0.25	     0.1	0	0	0	-3	0	0	   0	   0	0	0	0	#_CV_old          
   -3	   3	3.13e-06	0	0	0	-3	0	0	   0	   0	0	0	0	#_Wtlen_1         
   -3	   3	   3.278	0	0	0	-3	0	0	   0	   0	0	0	0	#_Wtlen_2         
   -3	  15	      12	0	0	0	-3	0	0	   0	   0	0	0	0	#_Mat50%          
   -3	   3	   -0.45	0	0	0	-3	0	0	   0	   0	0	0	0	#_Mat_slope       
   -3	   3	       1	0	0	0	-3	0	0	   0	   0	0	0	0	#_Eggs_alpha      
   -3	   3	       0	0	0	0	-3	0	0	   0	   0	0	0	0	#_Eggs_beta       
    0	   2	     0.3	0	0	0	-3	0	0	   0	   0	0	0	0	#_RecrDist_month_1
    0    2       0.7  0 0 0 -3  0 0    0     0  0 0 0 #_RecrDist_month_2
    1	   1	       1	0	0	0	-3	0	0	   0	   0	0	0	0	#_CohortGrowDev   
1e-07	   1	     0.5	0	0	0	-3	0	0	   0	   0	0	0	0	#_FracFemale      
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
4 #_Spawner-Recruitment; 2=Ricker; 3=std_B-H; 4=SCAA;5=Hockey; 6=B-H_flattop; 7=survival_3Parm;8=Shepard_3Parm
0 # 0/1 to use steepness in initial equ recruitment calculation
0 # future feature: 0/1 to make realized sigmaR a function of SR curvature
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn # parm_name
  5	25	 19	0	0	0	 1	0	0	0	0	0	0	0	#_SR_LN(R0)   
0.2	 1	0.9	0	0	0	-4	0	0	0	0	0	0	0	#_SR_SCAA_null
  0	 2	0.6	0	0	0	-4	0	0	0	0	0	0	0	#_SR_sigmaR   
 -5	 5	  0	0	0	0	-4	0	0	0	0	0	0	0	#_SR_regime   
  0	 0	  0	0	0	0	-4	0	0	0	0	0	0	0	#_SR_autocorr 
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1989 # first year of main recr_devs; early devs can preceed this era
2024 # last year of main recr_devs; forecast devs start in following year
1 #_recdev phase
0 # (0/1) to read 13 advanced options
#
#Fishing Mortality info
0.3 # F ballpark
-2024 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
4 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    2	1	0	0	0	0	#_ECOCADIZ   
    3	1	0	0	0	0	#_PELAGO     
    4	1	0	0	0	0	#_ECORECLUTAS
-9999	0	0	0	0	0	#_terminator 
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-30	15	0.1	0	0	0	2	0	0	0	0	0	0	0	#_LnQ_base_ECOCADIZ   
-30	15	0.1	0	0	0	2	0	0	0	0	0	0	0	#_LnQ_base_PELAGO     
-30	15	0.1	0	0	0	2	0	0	0	0	0	0	0	#_LnQ_base_ECORECLUTAS
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
1	0	0	0	#_1 SEINE      
1	0	0	0	#_2 ECOCADIZ   
1	0	0	0	#_3 PELAGO     
1	0	0	0	#_4 ECORECLUTAS
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
0	0	0	0	#_1 SEINE      
0	0	0	0	#_2 ECOCADIZ   
10	0	0	0	#_3 PELAGO     
0	0	0	0	#_4 ECORECLUTAS
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-1	10	8 	0	0	0	2	0	0	0	0	0	1	1	#_SizeSel_P_1_SEINE      
-1	20	10	0	0	0	2	0	0	0	0	0	1	1	#_SizeSel_P_2_SEINE      
-1	15	10	0	0	0	3	0	0	0	0	0	0	0	#_SizeSel_P_1_ECOCADIZ   
-1	20	12	0	0	0	3	0	0	0	0	0	0	0	#_SizeSel_P_2_ECOCADIZ   
-3	15	10	0	0	0	3	0	0	0	0	0	0	0	#_SizeSel_P_1_PELAGO     
-3	20	12	0	0	0	3	0	0	0	0	0	0	0	#_SizeSel_P_2_PELAGO     
-3  15 	6 	0	0	0	3	0	0	0	0	0	0	0	#_SizeSel_P_1_ECORECLUTAS
-3 	20 	10 	0	0	0	3	0	0	0	0	0	0	0	#_SizeSel_P_2_ECORECLUTAS
#_AgeSelex
#-2	5.5	0	0	0	0	3	0	0	0	0	0	0	0	#_AgeSel_P_1_SEINE      
#-1	5.5	1	0	0	0	3	0	0	0	0	0	0	0	#_AgeSel_P_2_SEINE      
#-2	5.5	0	0	0	0	3	0	0	0	0	0	0	0	#_AgeSel_P_1_ECOCADIZ   
#-1	5.5	1	0	0	0	3	0	0	0	0	0	0	0	#_AgeSel_P_2_ECOCADIZ   
#-2 	5.5 1	0	0	0	3	0	0	0	0	0	0	0	#_AgeSel_P_1_PELAGO     
#-1 	5.5 1	0	0	0	3	0	0	0	0	0	0	0	#_AgeSel_P_2_PELAGO     
#-2	5.5	0	0	0	0	3	0	0	0	0	0	0	0	#_AgeSel_P_1_ECORECLUTAS
#-1	5.5	1	0	0	0	3	0	0	0	0	0	0	0	#_AgeSel_P_2_ECORECLUTAS
# timevary selex parameters 
#_LO  HI  INIT  PRIOR PR_SD PR_type PHASE
 -1   15  8     0     0     0       2   #_SizeSel_P_1_SEINE_1 
 -1   15  10    0     0     0       2   #_SizeSel_P_1_SEINE_2 
 -1   20  10    0     0     0       3   #_SizeSel_P_2_SEINE_1   
 -1   20  11    0     0     0       3   #_SizeSel_P_2_SEINE_2   
# info on dev vectors created for selex parms are reported with other devs after tag parameter section
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
0 # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# Input variance adjustments factors: 
#_Data_type	fleet	Value
4 1 0.170795 #0.170661  #_Variance_adjustment_list1_seine
4 2 0.266406 #0.266264  #_Variance_adjustment_list2_ecocadiz
4 3 0.204118 #0.204124  #_Variance_adjustment_list3_pelago
4 4 0.180673 #0.180860  #_Variance_adjustment_list3_ecoreclutas
-9999	0	        0	#_terminator               
#
1 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 0 changes to default Lambdas (default value is 1.0)
-9999 0 0 0 0 # terminator
#
0 # 0/1 read specs for more stddev reporting
#
999