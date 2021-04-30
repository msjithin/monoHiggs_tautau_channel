
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
hadd $outDIR/DY1JetsToLL_final.root rootFiles/DY1JetsToLL_00.root rootFiles/DY1JetsToLL_01.root rootFiles/DY1JetsToLL_02.root rootFiles/DY1JetsToLL_03.root rootFiles/DY1JetsToLL_04.root rootFiles/DY1JetsToLL_05.root rootFiles/DY1JetsToLL_06.root rootFiles/DY1JetsToLL_07.root rootFiles/DY1JetsToLL_08.root 
hadd $outDIR/DY2JetsToLL_final.root rootFiles/DY2JetsToLL_00.root rootFiles/DY2JetsToLL_01.root rootFiles/DY2JetsToLL_02.root 
hadd $outDIR/DY3JetsToLL_final.root rootFiles/DY3JetsToLL_00.root 
hadd $outDIR/DY4JetsToLL_final.root rootFiles/DY4JetsToLL_00.root 
hadd $outDIR/DYJetsToLL_final.root rootFiles/DYJetsToLL_00.root rootFiles/DYJetsToLL_01.root rootFiles/DYJetsToLL_02.root rootFiles/DYJetsToLL_03.root rootFiles/DYJetsToLL_04.root rootFiles/DYJetsToLL_05.root rootFiles/DYJetsToLL_06.root rootFiles/DYJetsToLL_07.root rootFiles/DYJetsToLL_08.root 
hadd $outDIR/DYJetsToLL_M10to50_final.root rootFiles/DYJetsToLL_M10to50_00.root rootFiles/DYJetsToLL_M10to50_01.root rootFiles/DYJetsToLL_M10to50_02.root rootFiles/DYJetsToLL_M10to50_03.root 
hadd $outDIR/TauA_final.root rootFiles/TauA_00.root rootFiles/TauA_01.root rootFiles/TauA_02.root rootFiles/TauA_03.root rootFiles/TauA_04.root 
hadd $outDIR/EWKWMinus2Jets_WToLNu_final.root rootFiles/EWKWMinus2Jets_WToLNu_00.root 
hadd $outDIR/EWKWPlus2Jets_WToLNu_final.root rootFiles/EWKWPlus2Jets_WToLNu_00.root 
hadd $outDIR/EWKZ2Jets_ZToLL_final.root rootFiles/EWKZ2Jets_ZToLL_00.root 
hadd $outDIR/EWKZ2Jets_ZToNuNu_final.root rootFiles/EWKZ2Jets_ZToNuNu_00.root 
hadd $outDIR/GluGluHToTauTau_final.root rootFiles/GluGluHToTauTau_00.root rootFiles/GluGluHToTauTau_01.root 
hadd $outDIR/GluGluHToWWTo2L2Nu_final.root rootFiles/GluGluHToWWTo2L2Nu_00.root 
hadd $outDIR/GluGluZH_HToWW_final.root rootFiles/GluGluZH_HToWW_00.root 
hadd $outDIR/ST_t-channel_antitop_final.root rootFiles/ST_t-channel_antitop_00.root rootFiles/ST_t-channel_antitop_01.root rootFiles/ST_t-channel_antitop_02.root rootFiles/ST_t-channel_antitop_03.root rootFiles/ST_t-channel_antitop_04.root rootFiles/ST_t-channel_antitop_05.root rootFiles/ST_t-channel_antitop_06.root rootFiles/ST_t-channel_antitop_07.root rootFiles/ST_t-channel_antitop_10.root rootFiles/ST_t-channel_antitop_20.root rootFiles/ST_t-channel_antitop_30.root rootFiles/ST_t-channel_antitop_40.root rootFiles/ST_t-channel_antitop_50.root rootFiles/ST_t-channel_antitop_60.root rootFiles/ST_t-channel_antitop_70.root 
hadd $outDIR/ST_t-channel_top_final.root rootFiles/ST_t-channel_top_00.root rootFiles/ST_t-channel_top_01.root rootFiles/ST_t-channel_top_02.root rootFiles/ST_t-channel_top_03.root rootFiles/ST_t-channel_top_04.root rootFiles/ST_t-channel_top_05.root rootFiles/ST_t-channel_top_06.root rootFiles/ST_t-channel_top_07.root rootFiles/ST_t-channel_top_08.root rootFiles/ST_t-channel_top_09.root rootFiles/ST_t-channel_top_10.root rootFiles/ST_t-channel_top_11.root rootFiles/ST_t-channel_top_12.root rootFiles/ST_t-channel_top_13.root rootFiles/ST_t-channel_top_14.root rootFiles/ST_t-channel_top_15.root rootFiles/ST_t-channel_top_16.root rootFiles/ST_t-channel_top_17.root rootFiles/ST_t-channel_top_18.root rootFiles/ST_t-channel_top_19.root rootFiles/ST_t-channel_top_20.root 
hadd $outDIR/ST_tW_antitop_final.root rootFiles/ST_tW_antitop_00.root 
hadd $outDIR/ST_tW_top_final.root rootFiles/ST_tW_top_00.root rootFiles/ST_tW_top_01.root 
hadd $outDIR/TTTo2L2Nu_powheg_final.root rootFiles/TTTo2L2Nu_powheg_00.root rootFiles/TTTo2L2Nu_powheg_01.root rootFiles/TTTo2L2Nu_powheg_02.root rootFiles/TTTo2L2Nu_powheg_03.root rootFiles/TTTo2L2Nu_powheg_04.root rootFiles/TTTo2L2Nu_powheg_05.root rootFiles/TTTo2L2Nu_powheg_06.root rootFiles/TTTo2L2Nu_powheg_10.root rootFiles/TTTo2L2Nu_powheg_20.root rootFiles/TTTo2L2Nu_powheg_30.root rootFiles/TTTo2L2Nu_powheg_40.root rootFiles/TTTo2L2Nu_powheg_50.root rootFiles/TTTo2L2Nu_powheg_60.root rootFiles/TTTo2L2Nu_powheg_70.root 
hadd $outDIR/TTToHadronic_powheg_final.root rootFiles/TTToHadronic_powheg_00.root rootFiles/TTToHadronic_powheg_01.root rootFiles/TTToHadronic_powheg_02.root rootFiles/TTToHadronic_powheg_03.root rootFiles/TTToHadronic_powheg_05.root rootFiles/TTToHadronic_powheg_06.root rootFiles/TTToHadronic_powheg_07.root rootFiles/TTToHadronic_powheg_08.root rootFiles/TTToHadronic_powheg_10.root rootFiles/TTToHadronic_powheg_11.root rootFiles/TTToHadronic_powheg_12.root rootFiles/TTToHadronic_powheg_13.root rootFiles/TTToHadronic_powheg_14.root rootFiles/TTToHadronic_powheg_15.root rootFiles/TTToHadronic_powheg_16.root rootFiles/TTToHadronic_powheg_17.root rootFiles/TTToHadronic_powheg_18.root rootFiles/TTToHadronic_powheg_20.root rootFiles/TTToHadronic_powheg_21.root rootFiles/TTToHadronic_powheg_22.root rootFiles/TTToHadronic_powheg_23.root rootFiles/TTToHadronic_powheg_24.root rootFiles/TTToHadronic_powheg_25.root rootFiles/TTToHadronic_powheg_26.root rootFiles/TTToHadronic_powheg_27.root rootFiles/TTToHadronic_powheg_30.root rootFiles/TTToHadronic_powheg_31.root rootFiles/TTToHadronic_powheg_32.root rootFiles/TTToHadronic_powheg_33.root rootFiles/TTToHadronic_powheg_34.root rootFiles/TTToHadronic_powheg_35.root rootFiles/TTToHadronic_powheg_36.root rootFiles/TTToHadronic_powheg_37.root 
hadd $outDIR/TTToSemiLeptonic_powheg_final.root rootFiles/TTToSemiLeptonic_powheg_00.root rootFiles/TTToSemiLeptonic_powheg_01.root rootFiles/TTToSemiLeptonic_powheg_10.root rootFiles/TTToSemiLeptonic_powheg_11.root rootFiles/TTToSemiLeptonic_powheg_20.root rootFiles/TTToSemiLeptonic_powheg_21.root rootFiles/TTToSemiLeptonic_powheg_30.root rootFiles/TTToSemiLeptonic_powheg_31.root rootFiles/TTToSemiLeptonic_powheg_40.root rootFiles/TTToSemiLeptonic_powheg_41.root rootFiles/TTToSemiLeptonic_powheg_50.root rootFiles/TTToSemiLeptonic_powheg_51.root rootFiles/TTToSemiLeptonic_powheg_60.root rootFiles/TTToSemiLeptonic_powheg_70.root rootFiles/TTToSemiLeptonic_powheg_80.root rootFiles/TTToSemiLeptonic_powheg_90.root 
hadd $outDIR/TauB_final.root rootFiles/TauB_00.root rootFiles/TauB_01.root rootFiles/TauB_02.root 
hadd $outDIR/TauC_final.root rootFiles/TauC_00.root rootFiles/TauC_01.root rootFiles/TauC_02.root 
hadd $outDIR/TauD_PromptReco_final.root rootFiles/TauD_PromptReco_00.root rootFiles/TauD_PromptReco_01.root rootFiles/TauD_PromptReco_02.root rootFiles/TauD_PromptReco_03.root rootFiles/TauD_PromptReco_04.root rootFiles/TauD_PromptReco_05.root rootFiles/TauD_PromptReco_06.root rootFiles/TauD_PromptReco_07.root rootFiles/TauD_PromptReco_08.root rootFiles/TauD_PromptReco_09.root 
hadd $outDIR/VBFHToTauTau_final.root rootFiles/VBFHToTauTau_00.root 
hadd $outDIR/VBFHToWWTo2L2Nu_final.root rootFiles/VBFHToWWTo2L2Nu_00.root 
hadd $outDIR/VVTo2L2Nu_final.root rootFiles/VVTo2L2Nu_00.root rootFiles/VVTo2L2Nu_01.root 
hadd $outDIR/W1JetsToLNu_final.root rootFiles/W1JetsToLNu_00.root rootFiles/W1JetsToLNu_01.root rootFiles/W1JetsToLNu_02.root rootFiles/W1JetsToLNu_03.root rootFiles/W1JetsToLNu_04.root rootFiles/W1JetsToLNu_05.root 
hadd $outDIR/W2JetsToLNu_final.root rootFiles/W2JetsToLNu_00.root rootFiles/W2JetsToLNu_01.root rootFiles/W2JetsToLNu_02.root 
hadd $outDIR/W3JetsToLNu_final.root rootFiles/W3JetsToLNu_00.root rootFiles/W3JetsToLNu_01.root 
hadd $outDIR/W4JetsToLNu_final.root rootFiles/W4JetsToLNu_00.root rootFiles/W4JetsToLNu_01.root 
hadd $outDIR/WGToLNuG_final.root rootFiles/WGToLNuG_00.root 
hadd $outDIR/WJetsToLNu_Incl_final.root rootFiles/WJetsToLNu_Incl_00.root rootFiles/WJetsToLNu_Incl_01.root rootFiles/WJetsToLNu_Incl_02.root rootFiles/WJetsToLNu_Incl_03.root rootFiles/WJetsToLNu_Incl_04.root rootFiles/WJetsToLNu_Incl_05.root rootFiles/WJetsToLNu_Incl_06.root rootFiles/WJetsToLNu_Incl_07.root rootFiles/WJetsToLNu_Incl_08.root 
hadd $outDIR/WWTo1L1Nu2Q_final.root rootFiles/WWTo1L1Nu2Q_00.root 
hadd $outDIR/WWToLNuQQ_final.root rootFiles/WWToLNuQQ_00.root rootFiles/WWToLNuQQ_01.root 
hadd $outDIR/WWW_final.root rootFiles/WWW_00.root 
hadd $outDIR/WWZ_final.root rootFiles/WWZ_00.root 
hadd $outDIR/WZTo3LNu_final.root rootFiles/WZTo3LNu_00.root rootFiles/WZTo3LNu_01.root 
hadd $outDIR/WZZ_final.root rootFiles/WZZ_00.root 
hadd $outDIR/WminusHToTauTau_final.root rootFiles/WminusHToTauTau_00.root 
hadd $outDIR/WplusHToTauTau_final.root rootFiles/WplusHToTauTau_00.root 
hadd $outDIR/ZHToTauTau_final.root rootFiles/ZHToTauTau_00.root 
hadd $outDIR/ZJetsToNuNu_HT100-200_final.root rootFiles/ZJetsToNuNu_HT100-200_00.root rootFiles/ZJetsToNuNu_HT100-200_01.root rootFiles/ZJetsToNuNu_HT100-200_02.root 
hadd $outDIR/ZJetsToNuNu_HT1200-2500_final.root rootFiles/ZJetsToNuNu_HT1200-2500_00.root 
hadd $outDIR/ZJetsToNuNu_HT200-400_final.root rootFiles/ZJetsToNuNu_HT200-400_00.root rootFiles/ZJetsToNuNu_HT200-400_01.root rootFiles/ZJetsToNuNu_HT200-400_02.root 
hadd $outDIR/ZJetsToNuNu_HT2500-Inf_final.root rootFiles/ZJetsToNuNu_HT2500-Inf_00.root 
hadd $outDIR/ZJetsToNuNu_HT400-600_final.root rootFiles/ZJetsToNuNu_HT400-600_00.root 
hadd $outDIR/ZJetsToNuNu_HT600-800_final.root rootFiles/ZJetsToNuNu_HT600-800_00.root 
hadd $outDIR/ZJetsToNuNu_HT800-1200_final.root rootFiles/ZJetsToNuNu_HT800-1200_00.root 
hadd $outDIR/ZZTo2L2Q_final.root rootFiles/ZZTo2L2Q_00.root rootFiles/ZZTo2L2Q_01.root rootFiles/ZZTo2L2Q_02.root 
hadd $outDIR/ZZTo4L_final.root rootFiles/ZZTo4L_00.root 
hadd $outDIR/ZZZ_final.root rootFiles/ZZZ_00.root 


