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

submit_local(){
    read -p "Run jobs locally? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Submitting locally"
    fi
}

submit_condor(){
    echo "condor submit asked, Submitting on condor"
}

hadd_files(){
    echo "hadding files"
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
    read -p "Please choose one option: Local or Condor submit \n Enter l or c ? " -n 1 -r
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

# if [ $condorSubmit -eq 1 ]
# then 
#     submit_condor
# fi
# if [ $localSUbmit -eq 1 ]
# then
#     submit_local
# fi

# if [ $hadd_smhtt -eq 1 ]
# then
#     hadd_files
# fi


