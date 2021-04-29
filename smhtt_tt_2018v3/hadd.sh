


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
cd plotting_script/
bash zttPlots.sh
