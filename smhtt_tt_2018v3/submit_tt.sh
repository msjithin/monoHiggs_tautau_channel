


./rootcom tautau_analyzer executable_tautau
submit_condor(){
    echo "submitting on condor"
    #exit 1
    outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
    mkdir $outDir 
    ./rootcom tautau_analyzer executable_tautau
    ###########################   MC  #########################
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_00.root DY1JetsToLL_00.root -1 1000 2018 MC DY1JetsToLL_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_01.root DY1JetsToLL_01.root -1 1000 2018 MC DY1JetsToLL_01 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_02.root DY1JetsToLL_02.root -1 1000 2018 MC DY1JetsToLL_02 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_03.root DY1JetsToLL_03.root -1 1000 2018 MC DY1JetsToLL_03 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_04.root DY1JetsToLL_04.root -1 1000 2018 MC DY1JetsToLL_04 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_05.root DY1JetsToLL_05.root -1 1000 2018 MC DY1JetsToLL_05 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_06.root DY1JetsToLL_06.root -1 1000 2018 MC DY1JetsToLL_06 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_07.root DY1JetsToLL_07.root -1 1000 2018 MC DY1JetsToLL_07 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_08.root DY1JetsToLL_08.root -1 1000 2018 MC DY1JetsToLL_08 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_00.root DY2JetsToLL_00.root -1 1000 2018 MC DY2JetsToLL_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_01.root DY2JetsToLL_01.root -1 1000 2018 MC DY2JetsToLL_01 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_02.root DY2JetsToLL_02.root -1 1000 2018 MC DY2JetsToLL_02 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY3JetsToLL_00.root DY3JetsToLL_00.root -1 1000 2018 MC DY3JetsToLL_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY4JetsToLL_00.root DY4JetsToLL_00.root -1 1000 2018 MC DY4JetsToLL_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_00.root DYJetsToLL_00.root -1 1000 2018 MC DYJetsToLL_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_01.root DYJetsToLL_01.root -1 1000 2018 MC DYJetsToLL_01 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_02.root DYJetsToLL_02.root -1 1000 2018 MC DYJetsToLL_02 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_03.root DYJetsToLL_03.root -1 1000 2018 MC DYJetsToLL_03 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_04.root DYJetsToLL_04.root -1 1000 2018 MC DYJetsToLL_04 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_05.root DYJetsToLL_05.root -1 1000 2018 MC DYJetsToLL_05 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_06.root DYJetsToLL_06.root -1 1000 2018 MC DYJetsToLL_06 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_07.root DYJetsToLL_07.root -1 1000 2018 MC DYJetsToLL_07 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_08.root DYJetsToLL_08.root -1 1000 2018 MC DYJetsToLL_08 $outDir


    ###########################   DATA  #########################

    ./rootcom tautau_analyzer executable_tautau  

    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_00.root TauA_00.root -1 1000 2018 DATA TauA_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_01.root TauA_01.root -1 1000 2018 DATA TauA_01 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_02.root TauA_02.root -1 1000 2018 DATA TauA_02 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_03.root TauA_03.root -1 1000 2018 DATA TauA_03 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_04.root TauA_04.root -1 1000 2018 DATA TauA_04 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_00.root TauB_00.root -1 1000 2018 DATA TauB_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_01.root TauB_01.root -1 1000 2018 DATA TauB_01 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_02.root TauB_02.root -1 1000 2018 DATA TauB_02 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_00.root TauC_00.root -1 1000 2018 DATA TauC_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_01.root TauC_01.root -1 1000 2018 DATA TauC_01 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_02.root TauC_02.root -1 1000 2018 DATA TauC_02 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_00.root TauD_PromptReco_00.root -1 1000 2018 DATA TauD_PromptReco_00 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_01.root TauD_PromptReco_01.root -1 1000 2018 DATA TauD_PromptReco_01 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_02.root TauD_PromptReco_02.root -1 1000 2018 DATA TauD_PromptReco_02 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_03.root TauD_PromptReco_03.root -1 1000 2018 DATA TauD_PromptReco_03 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_04.root TauD_PromptReco_04.root -1 1000 2018 DATA TauD_PromptReco_04 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_05.root TauD_PromptReco_05.root -1 1000 2018 DATA TauD_PromptReco_05 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_06.root TauD_PromptReco_06.root -1 1000 2018 DATA TauD_PromptReco_06 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_07.root TauD_PromptReco_07.root -1 1000 2018 DATA TauD_PromptReco_07 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_08.root TauD_PromptReco_08.root -1 1000 2018 DATA TauD_PromptReco_08 $outDir
    ./MakeCondorFiles.csh executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_09.root TauD_PromptReco_09.root -1 1000 2018 DATA TauD_PromptReco_09 $outDir

}
submit_local(){
    echo "submitting locally"
    #exit 1
    ./rootcom tautau_analyzer executable_tautau  

    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_00.root DY1JetsToLL_00.root -1 1000 2018 MC DY1JetsToLL_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_01.root DY1JetsToLL_01.root -1 1000 2018 MC DY1JetsToLL_01 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_02.root DY1JetsToLL_02.root -1 1000 2018 MC DY1JetsToLL_02 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_03.root DY1JetsToLL_03.root -1 1000 2018 MC DY1JetsToLL_03 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_04.root DY1JetsToLL_04.root -1 1000 2018 MC DY1JetsToLL_04 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_05.root DY1JetsToLL_05.root -1 1000 2018 MC DY1JetsToLL_05 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_06.root DY1JetsToLL_06.root -1 1000 2018 MC DY1JetsToLL_06 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_07.root DY1JetsToLL_07.root -1 1000 2018 MC DY1JetsToLL_07 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_08.root DY1JetsToLL_08.root -1 1000 2018 MC DY1JetsToLL_08 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_00.root DY2JetsToLL_00.root -1 1000 2018 MC DY2JetsToLL_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_01.root DY2JetsToLL_01.root -1 1000 2018 MC DY2JetsToLL_01 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_02.root DY2JetsToLL_02.root -1 1000 2018 MC DY2JetsToLL_02 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY3JetsToLL_00.root DY3JetsToLL_00.root -1 1000 2018 MC DY3JetsToLL_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY4JetsToLL_00.root DY4JetsToLL_00.root -1 1000 2018 MC DY4JetsToLL_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_00.root DYJetsToLL_00.root -1 1000 2018 MC DYJetsToLL_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_01.root DYJetsToLL_01.root -1 1000 2018 MC DYJetsToLL_01 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_02.root DYJetsToLL_02.root -1 1000 2018 MC DYJetsToLL_02 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_03.root DYJetsToLL_03.root -1 1000 2018 MC DYJetsToLL_03 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_04.root DYJetsToLL_04.root -1 1000 2018 MC DYJetsToLL_04 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_05.root DYJetsToLL_05.root -1 1000 2018 MC DYJetsToLL_05 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_06.root DYJetsToLL_06.root -1 1000 2018 MC DYJetsToLL_06 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_07.root DYJetsToLL_07.root -1 1000 2018 MC DYJetsToLL_07 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_08.root DYJetsToLL_08.root -1 1000 2018 MC DYJetsToLL_08 

    ###########################   DATA  #########################

    ./rootcom tautau_analyzer executable_tautau  

    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_00.root TauA_00.root -1 1000 2018 DATA TauA_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_01.root TauA_01.root -1 1000 2018 DATA TauA_01 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_02.root TauA_02.root -1 1000 2018 DATA TauA_02 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_03.root TauA_03.root -1 1000 2018 DATA TauA_03 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_04.root TauA_04.root -1 1000 2018 DATA TauA_04 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_00.root TauB_00.root -1 1000 2018 DATA TauB_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_01.root TauB_01.root -1 1000 2018 DATA TauB_01 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_02.root TauB_02.root -1 1000 2018 DATA TauB_02 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_00.root TauC_00.root -1 1000 2018 DATA TauC_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_01.root TauC_01.root -1 1000 2018 DATA TauC_01 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_02.root TauC_02.root -1 1000 2018 DATA TauC_02 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_00.root TauD_PromptReco_00.root -1 1000 2018 DATA TauD_PromptReco_00 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_01.root TauD_PromptReco_01.root -1 1000 2018 DATA TauD_PromptReco_01 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_02.root TauD_PromptReco_02.root -1 1000 2018 DATA TauD_PromptReco_02 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_03.root TauD_PromptReco_03.root -1 1000 2018 DATA TauD_PromptReco_03 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_04.root TauD_PromptReco_04.root -1 1000 2018 DATA TauD_PromptReco_04 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_05.root TauD_PromptReco_05.root -1 1000 2018 DATA TauD_PromptReco_05 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_06.root TauD_PromptReco_06.root -1 1000 2018 DATA TauD_PromptReco_06 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_07.root TauD_PromptReco_07.root -1 1000 2018 DATA TauD_PromptReco_07 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_08.root TauD_PromptReco_08.root -1 1000 2018 DATA TauD_PromptReco_08 
    ./executable_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_09.root TauD_PromptReco_09.root -1 1000 2018 DATA TauD_PromptReco_09 

}

submit_hadd(){
    echo "Hadding files"
    #exit 1
    count=`ls *.root | wc -l`
    if [ $count == 44 ]
    then 
	echo true
	rm mine_rootfile/*.root
	mv *.root mine_rootfile/
	echo "root files moved"

	
	cd mine_rootfile/
	rm DY1.root DY2.root DY3.root DY4.root DY.root Data.root
	hadd DY1.root DY1JetsToLL*.root
	hadd DY2.root DY2JetsToLL*.root
	hadd DY3.root DY3JetsToLL*.root
	hadd DY4.root DY4JetsToLL*.root
	hadd DY.root  DYJetsToLL*.root
	hadd Data.root Tau*.root	
	cd ..
    fi    
    
    read -p "Make plots?   " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[yY]$ ]]
    then
	make_plots
    fi
}


make_plots(){
    echo "making plots"
    #exit 1
    cd plotting_script/
    bash zttPlots.sh
    cd ..
}


while getopts chlp option
do
    case "${option}"
	in
	c) submit_condor ;;
	h) submit_hadd ;;
	l) submit_local ;;
	p) make_plots ;;
esac
done

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo "Please choose one of the options:
l : Run jobs locally
c : Run jobs on condor
h : hadd files that were returned from condor
p : make plots
    "
    read -p "Enter l , c , h , p :" -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Ll]$ ]]
    then
        submit_local
    elif [[ $REPLY =~ ^[Cc]$ ]]
    then
	submit_condor
    elif [[ $REPLY =~ ^[Hh]$ ]]
    then
	submit_hadd
    elif [[ $REPLY =~ ^[Pp]$ ]]
    then
	make_plots
    fi
    exit 1
fi

