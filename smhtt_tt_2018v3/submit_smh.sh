
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom skimm_tt_2018 executable_smhtt  


./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1/ DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2/ DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1/ DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2/ DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1/ DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2/ DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1/ DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1/ DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
###########################   DATA  #########################

./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018A-17Sep2018/ data_Tau_Run2018A-17Sep2018.root -1 1000 2018 DATA data_Tau_Run2018A-17Sep2018 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018B-17Sep2018/ data_Tau_Run2018B-17Sep2018.root -1 1000 2018 DATA data_Tau_Run2018B-17Sep2018 $outDir
./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018C-17Sep2018/ data_Tau_Run2018C-17Sep2018.root -1 1000 2018 DATA data_Tau_Run2018C-17Sep2018 $outDir
#./MakeCondorFiles.csh executable_smhtt /hdfs/store/user/caillol/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco/ data_Tau_Run2018D-PromptReco.root -1 1000 2018 DATA data_Tau_Run2018D-PromptReco $outDir
