import os

# For sm htt samples, 
# /hdfs/store/user/caillol/SMHTT_2018_27jul_data


inputDrMC="/hdfs/store/user/jmadhusu/smhtt_2018_skimmed/SMHTT_2018_27jul_data/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("httsubmitCondor.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")


outFile.write('###########################   MC  #########################'+'\n\n')
outFile.write('./rootcom smhtt_2018 executable_smhtt_tt  '+'\n\n\n')
for j in filelistMC :
    if "data_Tau" in j[:8]:
        continue
    outFile.write("./MakeCondorFiles.csh executable_smhtt_tt "+inputDrMC+j+" "+j+" -1 1000 2018 MC "+j[:-5]+" $outDir"+"\n")
    #outFile.write("./executable_etau "+inputDrMC+j+" "+j+" -1 1000 2017 MC "+j[:-5]+" $outDir"+"\n")
outFile.write('###########################   DATA  #########################'+'\n\n')
outFile.write('./rootcom smhtt_2018 executable_smhtt_tt  '+'\n\n\n')
for j in filelistMC :
    if "data_Tau" in j[:8]:
        outFile.write("./MakeCondorFiles.csh executable_smhtt_tt "+inputDrMC+j+" "+j+" -1 1000 2018 DATA "+j[:-5]+" $outDir"+"\n")
    

outFile.close()


