import os

inputDrMC="/hdfs/store/user/caillol/SMHTT_2018_27jul_data/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit_smh.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")


outFile.write('###########################   MC  #########################'+'\n\n')
outFile.write('./rootcom skimm_tt_2018 executable_smhtt  '+'\n\n\n')
for j in filelistMC :
    if "data_" in j    :
        continue
    if "DY" in j[:3]:
        outFile.write("./MakeCondorFiles.csh executable_smhtt "+inputDrMC+j+"/ "+j+".root -1 1000 2018 MC "+j+" $outDir"+"\n")
        #outFile.write("./executable_etau "+inputDrMC+j+" "+j+" -1 1000 2017 MC "+j[:-5]+" $outDir"+"\n")
outFile.write('###########################   DATA  #########################'+'\n\n')
#outFile.write('./rootcom skimm_tt_2018 executable_smhtt  '+'\n\n\n')
for j in filelistMC :
     if "data_Tau" in j    :
        outFile.write("./MakeCondorFiles.csh executable_smhtt "+inputDrMC+j+"/ "+j+".root -1 1000 2018 DATA "+j+" $outDir"+"\n")
    

outFile.close()


