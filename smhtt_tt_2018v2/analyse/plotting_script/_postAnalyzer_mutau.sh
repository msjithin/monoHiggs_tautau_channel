
#!/bin/bash 
set -e 
if [ -f "f_tautau_initial.root" ]; then
    echo "deleting existing f_tautau_initial.root file ....."
    rm f_tautau_initial.root
fi
if [ "$(ls -A files_nominal)" ]; then
    echo "deleting existing files in directory files_nominal ....."
    rm files_nominal/*.root
fi


./Make.sh _postAnalyzer_mutau.C 

./_postAnalyzer_mutau.exe ../files_initial/DY1JetsToLL_M-50_final.root files_nominal/DY1JetsToLL_M-50_final.root DY1JetsToLL ZTT 0 
./_postAnalyzer_mutau.exe ../files_initial/DY1JetsToLL_M-50_final.root files_nominal/DY1JetsToLL_M-50_stitch_final.root ZTT1jet ZTTjet 0 
./_postAnalyzer_mutau.exe ../files_initial/DY2JetsToLL_M-50_final.root files_nominal/DY2JetsToLL_M-50_final.root DY2JetsToLL ZTT 0 
./_postAnalyzer_mutau.exe ../files_initial/DY2JetsToLL_M-50_final.root files_nominal/DY2JetsToLL_M-50_stitch_final.root ZTT2jet ZTTjet 0 
./_postAnalyzer_mutau.exe ../files_initial/DY3JetsToLL_M-50_final.root files_nominal/DY3JetsToLL_M-50_final.root DY3JetsToLL ZTT 0 
./_postAnalyzer_mutau.exe ../files_initial/DY3JetsToLL_M-50_final.root files_nominal/DY3JetsToLL_M-50_stitch_final.root ZTT3jet ZTTjet 0 
./_postAnalyzer_mutau.exe ../files_initial/DY4JetsToLL_M-50_final.root files_nominal/DY4JetsToLL_M-50_final.root DY4JetsToLL ZTT 0 
./_postAnalyzer_mutau.exe ../files_initial/DY4JetsToLL_M-50_final.root files_nominal/DY4JetsToLL_M-50_stitch_final.root ZTT4jet ZTTjet 0 
./_postAnalyzer_mutau.exe ../files_initial/DYJetsToLL_M-50_final.root files_nominal/DYJetsToLL_M-50_final.root DYJetsToLL ZTT 0 
./_postAnalyzer_mutau.exe ../files_initial/DYJetsToLL_M-50_final.root files_nominal/DYJetsToLL_M-50_stitch_final.root ZTTjet_inc ZTTjet 0 
./_postAnalyzer_mutau.exe ../files_initial/EWKWMinus2Jets_WToLNu_final.root files_nominal/EWKWMinus2Jets_WToLNu_final.root EWKWMinus2Jets EWKWMinus 0 
./_postAnalyzer_mutau.exe ../files_initial/EWKWPlus2Jets_WToLNu_final.root files_nominal/EWKWPlus2Jets_WToLNu_final.root EWKWPlus2Jets EWKWPlus 0 
./_postAnalyzer_mutau.exe ../files_initial/EWKZ2Jets_ZToLL_final.root files_nominal/EWKZ2Jets_ZToLL_final.root EWKZ2Jets_ZToLL EWKZ2Jets 0 
./_postAnalyzer_mutau.exe ../files_initial/EWKZ2Jets_ZToNuNu_final.root files_nominal/EWKZ2Jets_ZToNuNu_final.root EWKZ2Jets_ZToNuNu EWKZ2Jets 0 
./_postAnalyzer_mutau.exe ../files_initial/GluGluHToTauTau_M125_final.root files_nominal/GluGluHToTauTau_M125_final.root GluGluHToTauTau GluGluH 0 
./_postAnalyzer_mutau.exe ../files_initial/GluGluHToWWTo2L2Nu_M125_final.root files_nominal/GluGluHToWWTo2L2Nu_M125_final.root GluGluHToWWTo2L2Nu GluGluH 0 
./_postAnalyzer_mutau.exe ../files_initial/GluGluZH_HToWW_final.root files_nominal/GluGluZH_HToWW_final.root GluGluZH_HToWW GluGluZH 0 
./_postAnalyzer_mutau.exe ../files_initial/ST_t-channel_antitop_final.root files_nominal/ST_t-channel_antitop_final.root ST_t-channel_antitop ST_t 0 
./_postAnalyzer_mutau.exe ../files_initial/ST_t-channel_top_final.root files_nominal/ST_t-channel_top_final.root ST_t-channel_top ST_t 0 
./_postAnalyzer_mutau.exe ../files_initial/ST_tW_antitop_final.root files_nominal/ST_tW_antitop_final.root ST_tW_antitop ST_t 0 
./_postAnalyzer_mutau.exe ../files_initial/ST_tW_top_final.root files_nominal/ST_tW_top_final.root ST_tW_top ST_t 0 
./_postAnalyzer_mutau.exe ../files_initial/TTTo2L2Nu_TuneCP5_final.root files_nominal/TTTo2L2Nu_TuneCP5_final.root TTTo2L2Nu TT 0 
./_postAnalyzer_mutau.exe ../files_initial/TTToHadronic_TuneCP5_final.root files_nominal/TTToHadronic_TuneCP5_final.root TTToHadronic TT 0 
./_postAnalyzer_mutau.exe ../files_initial/TTToSemiLeptonic_TuneCP5_final.root files_nominal/TTToSemiLeptonic_TuneCP5_final.root TTToSemiLeptonic TT 0 
./_postAnalyzer_mutau.exe ../files_initial/VBFHToTauTau_M125_final.root files_nominal/VBFHToTauTau_M125_final.root VBFHToTauTau VBFH 0 
./_postAnalyzer_mutau.exe ../files_initial/VBFHToWWTo2L2Nu_M125_final.root files_nominal/VBFHToWWTo2L2Nu_M125_final.root VBFHToWWTo2L2Nu VBFH 0 
./_postAnalyzer_mutau.exe ../files_initial/VVTo2L2Nu_13TeV_final.root files_nominal/VVTo2L2Nu_13TeV_final.root VVTo2L2Nu VV 0 
./_postAnalyzer_mutau.exe ../files_initial/W1JetsToLNu_TuneCP5_final.root files_nominal/W1JetsToLNu_TuneCP5_final.root W1JetsToLNu WJets 0 
./_postAnalyzer_mutau.exe ../files_initial/W2JetsToLNu_TuneCP5_final.root files_nominal/W2JetsToLNu_TuneCP5_final.root W2JetsToLNu WJets 0 
./_postAnalyzer_mutau.exe ../files_initial/W3JetsToLNu_TuneCP5_final.root files_nominal/W3JetsToLNu_TuneCP5_final.root W3JetsToLNu WJets 0 
./_postAnalyzer_mutau.exe ../files_initial/W4JetsToLNu_TuneCP5_final.root files_nominal/W4JetsToLNu_TuneCP5_final.root W4JetsToLNu WJets 0 
./_postAnalyzer_mutau.exe ../files_initial/WJetsToLNu_TuneCP5_final.root files_nominal/WJetsToLNu_TuneCP5_final.root WJetsToLNu WJets 0 
./_postAnalyzer_mutau.exe ../files_initial/WWTo1L1Nu2Q_13TeV_final.root files_nominal/WWTo1L1Nu2Q_13TeV_final.root WWTo1L1Nu2Q VV 0 
./_postAnalyzer_mutau.exe ../files_initial/WW_TuneCP5_final.root files_nominal/WW_TuneCP5_final.root WWToLNuQQ VV 0 
./_postAnalyzer_mutau.exe ../files_initial/WZTo1L3Nu_13TeV_final.root files_nominal/WZTo1L3Nu_13TeV_final.root WZTo3LNu VV 0 
./_postAnalyzer_mutau.exe ../files_initial/WminusHToTauTau_M125_final.root files_nominal/WminusHToTauTau_M125_final.root WminusHToTauTau WminusH 0 
./_postAnalyzer_mutau.exe ../files_initial/WplusHToTauTau_M125_final.root files_nominal/WplusHToTauTau_M125_final.root WplusHToTauTau WplusH 0 
./_postAnalyzer_mutau.exe ../files_initial/ZHToTauTau_M125_final.root files_nominal/ZHToTauTau_M125_final.root ZHToTauTau ZH 0 
./_postAnalyzer_mutau.exe ../files_initial/ZZTo2L2Q_13TeV_final.root files_nominal/ZZTo2L2Q_13TeV_final.root ZZTo2L2Q VV 0 
./_postAnalyzer_mutau.exe ../files_initial/ZZTo4L_TuneCP5_final.root files_nominal/ZZTo4L_TuneCP5_final.root ZZTo4L VV 0 
./_postAnalyzer_mutau.exe ../files_initial/data_Tau_final.root files_nominal/data_Tau_final.root data_obs data_obs 0 

hadd -f f_tautau_initial.root files_nominal/*.root 
echo "*************** root file made ***************" 
sh do_make_plots.sh 
echo "*************** plots made ***************" 
