
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom skimm_tt_2018 executable_smhtt  

./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D_1.root -1 1000 2018 DATA data_Tau_Run2018D_1 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D_2.root -1 1000 2018 DATA data_Tau_Run2018D_2 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D_3.root -1 1000 2018 DATA data_Tau_Run2018D_3 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D_4.root -1 1000 2018 DATA data_Tau_Run2018D_4 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D_5.root -1 1000 2018 DATA data_Tau_Run2018D_5 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D_6.root -1 1000 2018 DATA data_Tau_Run2018D_6 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D_7.root -1 1000 2018 DATA data_Tau_Run2018D_7 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D_8.root -1 1000 2018 DATA data_Tau_Run2018D_8 $outDir
