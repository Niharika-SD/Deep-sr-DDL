## Code for Deep sr-DDL model introduced in https://arxiv.org/abs/2007.01931
![sr-DDL](https://github.com/Niharika-SD/Deep-sr-DDL/blob/master/Images/LSTM-ANN_JP.PNG)

#INSTRUCTIONS

1. Run Extract_Meta_Data.m with appropriate arguments
2. Open terminal, type Run main.py

%%num_targets = 3 --> KKI
%%num_targets = 1 --> HCP

#DATA ORGANIZATION

Main directory contents:
 1. main.py - main script
 2. Alternating_Minimization.py - scripts for alternating minimization procedure
 3. Optimization_Modules.py - scripts for individual optimization steps 
 4. Helpers.py - scripts for general processing and data aggregation
 5. Quadratic_Solver.py - QP solver required at test time
 6. LSTM_ANN.py - LSTM ANN definition script

~/Data/ contents
  
~/Data/Extract_Meta_Data.m 

  ~/Data/KKI/
  ~/Data/KKI/init.mat #pre-computed initalization for basis
  ~/Data/KKI/Train/  
  ~/Data/KKI/Train/subject_XX.mat
  ~/Data/KKI/Test/
  ~/Data/KKI/Test/subject_YY.mat
  ~/Data/KKI/Outputs/
  ~/Data/KKI/Outputs/Loss.png #Loss curve
  ~/Data/KKI/Outputs/B_gd.png #Basis
  ~/Data/KKI/Outputs/Performance.mat #regression performance
  ~/Data/KKI/Outputs/deep_sr-DDL.p #saved models
  ~/Data/KKI/Outputs/logfile.txt
 
   ~/Data/HCP/init.mat #pre-computed initalization for basis
   ~/Data/HCP/Train/  
   ~/Data/HCP/Train/subject_XX.mat
   ~/Data/HCP/Test/
   ~/Data/HCP/Test/subject_YY.mat
   ~/Data/HCP/Outputs/
   ~/Data/HCP/Outputs/Loss.png #Loss curve
   ~/Data/HCP/Outputs/B_gd.png #Basis
   ~/Data/HCP/Outputs/Performance.mat #regression performance
   ~/Data/HCP/Outputs/deep_sr-DDL.p #saved models
   ~/Data/HCP/Outputs/logfile.txt

   
