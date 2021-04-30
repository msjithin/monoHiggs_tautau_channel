set -e

inFile=f_tautau_initial.root
#inFile=$1
declare -a plotList=("tau1Pt" "tau1Eta" "tau1Phi" "tau2Pt" "tau2Eta" "tau2Phi" "tau1Charge" "tau1DecayMode" "tau2DecayMode" "tau2Charge" "tau1Iso" "tau2Iso" "tau1Charge" "tau2Charge" "deltaR" "deltaPhi" "deltaEta" "nJet" "met" "metLongXaxis" "metPhi" "mT_tauMet" "visMass" "higgsPt" "trigger" "tau1rawiso" "tau2rawiso" "nVtx" "genmatch1" "genmatch2") 
declare -a indexList=("_5" "_6" "_7")

if [ -f "eventYield.csv" ]; then
    echo "removing eventYield file"
    rm eventYield.csv
fi


for i in "${plotList[@]}"
do
    for j in "${indexList[@]}"
    do 
	hist=$i$j
	echo "$hist"
	#python only_fbkg_makeplot.py -in $inFile -name $hist -cat 0 -ch tautau -xaxis $hist -year 2018 &
	python makeplot.py -in $inFile -name $hist -cat 0 -ch tautau -xaxis $hist -year 2018 &
	#python makeplot_fbkg.py -in $inFile -name $hist -cat 0 -ch tautau -xaxis $hist -year 2018 &
    done
    wait
done

wait
python makeplot.py -in $inFile -name cutflow_n -cat 0 -ch tautau -xaxis "cutflow" -lY  -year 2018 
