#!/bin/bash
set -e  # exit when any command fails
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT
unset DISPLAY

nEvents=-1
sample='dy'
plottingOn=0
condorSubmit=0
localSUbmit=0
hadd_smhtt=0
./rootcom smhtt_2018 executable_smhtt_tt

submit_local(){
    read -p "Run jobs locally? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Submitting locally"
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root theirs_rootfile/smhtt_DY1JetsToLL_v1.root $nEvents 1000 2018 MC DY1_v1
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root theirs_rootfile/smhtt_DY1JetsToLL_v2.root $nEvents 1000 2018 MC DY1_v2
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root theirs_rootfile/smhtt_DY2JetsToLL_v1.root $nEvents 1000 2018 MC DY2_v1
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root theirs_rootfile/smhtt_DY2JetsToLL_v2.root $nEvents 1000 2018 MC DY2_v2
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root theirs_rootfile/smhtt_DY3JetsToLL_v1.root $nEvents 1000 2018 MC DY3_v1
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root theirs_rootfile/smhtt_DY3JetsToLL_v2.root $nEvents 1000 2018 MC DY3_v2
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root theirs_rootfile/smhtt_DY4JetsToLL_v1.root $nEvents 1000 2018 MC DY4_v1
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root theirs_rootfile/smhtt_DYJetsToLL_v1.root $nEvents 1000 2018 MC DY_v1

	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018A-17Sep2018.root theirs_rootfile/smhtt_data_TauA.root $nEvents 1000 2018 DATA data_tau
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018B-17Sep2018.root theirs_rootfile/smhtt_data_TauB.root $nEvents 1000 2018 DATA data_tau
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018C-17Sep2018.root theirs_rootfile/smhtt_data_TauC.root $nEvents 1000 2018 DATA data_tau
	# ./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D-PromptReco.root theirs_rootfile/smhtt_data_TauD.root $nEvents 1000 2018 DATA data_tau
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_1.root theirs_rootfile/smhtt_data_TauD_1.root $nEvents 1000 2018 DATA data_tau
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_2.root theirs_rootfile/smhtt_data_TauD_2.root $nEvents 1000 2018 DATA data_tau
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_3.root theirs_rootfile/smhtt_data_TauD_3.root $nEvents 1000 2018 DATA data_tau
        ./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_4.root theirs_rootfile/smhtt_data_TauD_4.root $nEvents 1000 2018 DATA data_tau
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_5.root theirs_rootfile/smhtt_data_TauD_5.root $nEvents 1000 2018 DATA data_tau
	./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_6.root theirs_rootfile/smhtt_data_TauD_6.root $nEvents 1000 2018 DATA data_tau
        ./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_7.root theirs_rootfile/smhtt_data_TauD_7.root $nEvents 1000 2018 DATA data_tau
        ./executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_8.root theirs_rootfile/smhtt_data_TauD_8.root $nEvents 1000 2018 DATA data_tau
	
	read -p "hadd Combine files?" -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	    cd theirs_rootfile
	    rm DY.root DY1.root DY2.root DY3.root DY4.root Data.root
	    hadd DY.root smhtt_DYJetsToLL_v1.root
	    hadd DY1.root smhtt_DY1JetsToLL*.root
	    hadd DY2.root smhtt_DY2JetsToLL*.root
	    hadd DY3.root smhtt_DY3JetsToLL*.root
	    hadd DY4.root smhtt_DY4JetsToLL*.root
	    hadd Data.root smhtt_data_Tau*.root 	    
	    cd ..
	fi
    fi
}

submit_condor(){
    echo "condor submit asked, Submitting on condor"
    outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
    mkdir $outDir 
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018A-17Sep2018.root smhtt_data_TauA.root -1 1000 2018 DATA data_tauA $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018B-17Sep2018.root smhtt_data_TauB.root -1 1000 2018 DATA data_tauB $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018C-17Sep2018.root smhtt_data_TauC.root -1 1000 2018 DATA data_tauC $outDir
    #./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D-PromptReco.root smhtt_data_TauD.root -1 1000 2018 DATA data_tauD $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_1.root smhtt_data_TauD_1.root -1 1000 2018 DATA data_tauD1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_2.root smhtt_data_TauD_2.root -1 1000 2018 DATA data_tauD2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_3.root smhtt_data_TauD_3.root -1 1000 2018 DATA data_tauD3 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_4.root smhtt_data_TauD_4.root -1 1000 2018 DATA data_tauD4 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_5.root smhtt_data_TauD_5.root -1 1000 2018 DATA data_tauD5 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_6.root smhtt_data_TauD_6.root -1 1000 2018 DATA data_tauD6 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_7.root smhtt_data_TauD_7.root -1 1000 2018 DATA data_tauD7 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/data_Tau_Run2018D_8.root smhtt_data_TauD_8.root -1 1000 2018 DATA data_tauD8 $outDir

    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root smhtt_DY1JetsToLL_v1.root $nEvents 1000 2018 MC DY1_v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root smhtt_DY1JetsToLL_v2.root $nEvents 1000 2018 MC DY1_v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root smhtt_DY2JetsToLL_v1.root $nEvents 1000 2018 MC DY2_v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root smhtt_DY2JetsToLL_v2.root $nEvents 1000 2018 MC DY2_v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root smhtt_DY3JetsToLL_v1.root $nEvents 1000 2018 MC DY3_v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v2.root smhtt_DY3JetsToLL_v2.root $nEvents 1000 2018 MC DY3_v2 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root smhtt_DY4JetsToLL_v1.root $nEvents 1000 2018 MC DY4_v1 $outDir
    ./MakeCondorFiles.csh executable_smhtt_tt /hdfs/store/user/jmadhusu/smhtt_2018_skimmed/from_Doyeong/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_-102X_upgrade2018_realistic_v15-v1.root smhtt_DYJetsToLL_v1.root $nEvents 1000 2018 MC DY_v1 $outDir

}

hadd_files(){
    echo "hadding files"
    mv smhtt_*.root theirs_rootfile/
    cd theirs_rootfile
    rm DY.root DY1.root DY2.root DY3.root DY4.root Data.root

    hadd DY.root smhtt_DYJetsToLL_v1.root
    hadd DY1.root smhtt_DY1JetsToLL*.root
    hadd DY2.root smhtt_DY2JetsToLL*.root
    hadd DY3.root smhtt_DY3JetsToLL*.root
    hadd DY4.root smhtt_DY4JetsToLL*.root
    hadd Data.root smhtt_data_Tau*.root

    cd ..
}

while getopts n:s:pchl option
do
    case "${option}"
	in
	n) nEvents=${OPTARG};;
	p) plottingOn=1 ;;
	s) sample=${OPTARG};;
	c) submit_condor ;;
	h) hadd_files ;;
	l) submit_local ;;
esac
done

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo "Please choose one of the options:
l : Run jobs locally
c : Run jobs on condor
h : hadd files that were returned from condor
    "
    read -p "Enter l or c or h :" -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Ll]$ ]]
    then
        submit_local
    elif [[ $REPLY =~ ^[Cc]$ ]]
    then
	submit_condor
    elif [[ $REPLY =~ ^[Hh]$ ]]
    then
	hadd_files
    fi
    exit 1
fi

