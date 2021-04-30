#!/bin/bash
set -e  # exit when any command fails
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT
unset DISPLAY

#./rootcom smhtt_2018 executable_smhtt_tt

submit_condor(){

    echo "submitting on condor"
    outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
    mkdir $outDir 

    ###########################   MC  #########################

    ./rootcom smhtt_2018 executable_smhtt_tt  


    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root EWKWMinus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC EWKWMinus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root EWKWPlus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC EWKWPlus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/EWKZ2Jets_ZToLL_M-50_TuneCP5_PSweights_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root EWKZ2Jets_ZToLL_M-50_TuneCP5_PSweights_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC EWKZ2Jets_ZToLL_M-50_TuneCP5_PSweights_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/EWKZ2Jets_ZToNuNu_TuneCP5_PSweights_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root EWKZ2Jets_ZToNuNu_TuneCP5_PSweights_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC EWKZ2Jets_ZToNuNu_TuneCP5_PSweights_13TeV-madgraph-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/GluGluHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root GluGluHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC GluGluHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/GluGluHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8_-102X_upgrade2018_realistic_v15-v1.root GluGluHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC GluGluHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/GluGluZH_HToWW_M125_13TeV_powheg_pythia8_TuneCP5_PSweights_-102X_upgrade2018_realistic_v15-v1.root GluGluZH_HToWW_M125_13TeV_powheg_pythia8_TuneCP5_PSweights_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC GluGluZH_HToWW_M125_13TeV_powheg_pythia8_TuneCP5_PSweights_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_13TeV-powheg-madspin-pythia8_-102X_upgrade2018_realistic_v15-v1.root ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_13TeV-powheg-madspin-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_13TeV-powheg-madspin-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/ST_t-channel_top_5f_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root ST_t-channel_top_5f_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC ST_t-channel_top_5f_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root -1 1000 2018 MC ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext1-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root -1 1000 2018 MC ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext1-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/TTToHadronic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root TTToHadronic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC TTToHadronic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/TTToHadronic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext2-v2.root TTToHadronic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext2-v2.root -1 1000 2018 MC TTToHadronic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext2-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext3-v2.root TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext3-v2.root -1 1000 2018 MC TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8_-102X_upgrade2018_realistic_v15_ext3-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/VBFHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root VBFHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15_ext1-v1.root -1 1000 2018 MC VBFHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15_ext1-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/VBFHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8_-102X_upgrade2018_realistic_v15-v1.root VBFHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC VBFHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/W1JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root W1JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC W1JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WGToLNuG_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root WGToLNuG_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC WGToLNuG_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WW_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v1.root WW_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC WW_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WW_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v2.root WW_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC WW_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15-v1.root WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15_ext1-v2.root WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15_ext1-v2.root -1 1000 2018 MC WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15_ext1-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WZ_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v3.root WZ_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v3.root -1 1000 2018 MC WZ_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v3 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WminusHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root WminusHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC WminusHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/WplusHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root WplusHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC WplusHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/ZHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root ZHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC ZHToTauTau_M125_13TeV_powheg_pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/ZZTo4L_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15-v1.root ZZTo4L_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC ZZTo4L_TuneCP5_13TeV-amcatnloFXFX-pythia8_-102X_upgrade2018_realistic_v15-v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/ZZ_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v2.root ZZ_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v2.root -1 1000 2018 MC ZZ_TuneCP5_13TeV-pythia8_-102X_upgrade2018_realistic_v15-v2 $outDir
    ###########################   DATA  #########################

    ./rootcom smhtt_2018 executable_smhtt_tt  


    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/data_Tau_Run2018A-17Sep2018.root data_Tau_Run2018A-17Sep2018.root -1 1000 2018 DATA data_Tau_Run2018A-17Sep2018 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/data_Tau_Run2018B-17Sep2018.root data_Tau_Run2018B-17Sep2018.root -1 1000 2018 DATA data_Tau_Run2018B-17Sep2018 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/data_Tau_Run2018C-17Sep2018.root data_Tau_Run2018C-17Sep2018.root -1 1000 2018 DATA data_Tau_Run2018C-17Sep2018 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/data_Tau_Run2018D-PromptReco.root data_Tau_Run2018D-PromptReco.root -1 1000 2018 DATA data_Tau_Run2018D-PromptReco $outDir
}

submit_local(){
    echo "submitting locally for testing"
    ./rootcom smhtt_2018 executable_smhtt_tt
    ./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root -1 1000 2018 MC DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1 


}


while getopts lc option
do
    case "${option}"
	in
	c) submit_condor ;;
	l) submit_local ;;
esac
done

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo "Please choose one of the options:
l : Run jobs locally
c : Run jobs on condor
    "
    read -p "Enter c or 1 :" -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Ll]$ ]]
    then
        submit_local
    elif [[ $REPLY =~ ^[Cc]$ ]]
    then
	submit_condor
    fi
    exit 1
fi
