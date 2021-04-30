
#!/bin/bash
set -e 
outDIR="files_initial"
if [ -d "$outDIR" ]; then
 echo "$outDIR exists"
 if [ "$(ls -A $outDIR)" ]; then
 echo "Take action $outDIR is not Empty .... removing existing files ....."
 rm $outDIR/*.root
 else
 echo " $outDIR is Empty"
 fi
else
 echo "$outDIR created"
 mkdir $outDIR
fi
hadd $outDIR/DY1JetsToLL_M-50_final.root rootFiles/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/DY2JetsToLL_M-50_final.root rootFiles/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/DY3JetsToLL_M-50_final.root rootFiles/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/DY4JetsToLL_M-50_final.root rootFiles/DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/DYJetsToLL_M-50_final.root rootFiles/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/EWKWMinus2Jets_WToLNu_final.root rootFiles/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/EWKWPlus2Jets_WToLNu_final.root rootFiles/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/EWKZ2Jets_ZToLL_final.root rootFiles/EWKZ2Jets_ZToLL_M-50_TuneCP5_PSweights_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/EWKZ2Jets_ZToNuNu_final.root rootFiles/EWKZ2Jets_ZToNuNu_TuneCP5_PSweights_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/GluGluHToTauTau_M125_final.root rootFiles/GluGluHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/GluGluHToWWTo2L2Nu_M125_final.root rootFiles/GluGluHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/GluGluZH_HToWW_final.root rootFiles/GluGluZH_HToWW_M125_13TeV_powheg_pythia8_TuneCP5_PSweights_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/ST_t-channel_antitop_final.root rootFiles/ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_13TeV-powheg-madspin-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/ST_t-channel_top_final.root rootFiles/ST_t-channel_top_5f_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/ST_tW_antitop_final.root rootFiles/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root 
hadd $outDIR/ST_tW_top_final.root rootFiles/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root 
hadd $outDIR/TTTo2L2Nu_TuneCP5_final.root rootFiles/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/TTToHadronic_TuneCP5_final.root rootFiles/TTToHadronic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/TTToHadronic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext2-v2.root 
hadd $outDIR/TTToSemiLeptonic_TuneCP5_final.root rootFiles/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext3-v2.root 
hadd $outDIR/VBFHToTauTau_M125_final.root rootFiles/VBFHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root 
hadd $outDIR/VBFHToWWTo2L2Nu_M125_final.root rootFiles/VBFHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/VVTo2L2Nu_13TeV_final.root rootFiles/VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/W1JetsToLNu_TuneCP5_final.root rootFiles/W1JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/W2JetsToLNu_TuneCP5_final.root rootFiles/W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/W3JetsToLNu_TuneCP5_final.root rootFiles/W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/W4JetsToLNu_TuneCP5_final.root rootFiles/W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/WGToLNuG_TuneCP5_final.root rootFiles/WGToLNuG_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/WJetsToLNu_TuneCP5_final.root rootFiles/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/WWTo1L1Nu2Q_13TeV_final.root rootFiles/WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/WW_TuneCP5_final.root rootFiles/WW_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/WW_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/WZTo1L1Nu2Q_13TeV_final.root rootFiles/WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/WZTo1L3Nu_13TeV_final.root rootFiles/WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/WZTo2L2Q_13TeV_final.root rootFiles/WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/WZTo3LNu_TuneCP5_final.root rootFiles/WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15-v1.root rootFiles/WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15_ext1-v2.root 
hadd $outDIR/WZ_TuneCP5_final.root rootFiles/WZ_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v3.root 
hadd $outDIR/WminusHToTauTau_M125_final.root rootFiles/WminusHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/WplusHToTauTau_M125_final.root rootFiles/WplusHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/ZHToTauTau_M125_final.root rootFiles/ZHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/ZZTo2L2Q_13TeV_final.root rootFiles/ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/ZZTo4L_TuneCP5_final.root rootFiles/ZZTo4L_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15-v1.root 
hadd $outDIR/ZZ_TuneCP5_final.root rootFiles/ZZ_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v2.root 
hadd $outDIR/data_Tau_final.root rootFiles/data_Tau_Run2018A-17Sep2018.root rootFiles/data_Tau_Run2018B-17Sep2018.root rootFiles/data_Tau_Run2018C-17Sep2018.root rootFiles/data_Tau_Run2018D-PromptReco.root 


