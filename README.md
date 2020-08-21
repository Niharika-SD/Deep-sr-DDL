## Code for Deep sr-DDL model introduced in https://arxiv.org/abs/2007.01931


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
  
Extract_Meta_Data.m 

  /KKI
    /Train  
      subject_XX.mat
    /Test
      subject_YY.mat
    /Outputs
      Loss.png #Loss curve
      B_gd.png #Basis
      Performance.mat #regression performance
      deep_sr-DDL.p #saved models
      logfile.txt
      
      
    init.mat #pre-computed initalization for basis

  /HCP
    /Train  
      subject_XX.mat
    /Test
      subject_YY.mat
    /Outputs
      Loss.png #Loss curve
      B_gd.png #Basis
      Performance.mat #regression performance
      deep_sr-DDL.p #saved models
      logfile.txt

    init.mat #pre-computed initalization for basis

