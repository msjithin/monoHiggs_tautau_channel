import os

# For sm htt samples, 
# /hdfs/store/user/caillol/SMHTT_2018_27jul_data


inputDrMC="/hdfs/store/user/jmadhusu/2018_skimmed/tautau/"
filelistMC=os.listdir(inputDrMC)
filelistMC=sorted(filelistMC)

outFile = open("submit_tt.sh", "w")
outFile.write("""
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

""")


outFile.write('###########################   MC  #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer executable_tautau  '+'\n\n\n')
for j in filelistMC :
    if "Tau" in j[:3]:
        continue
    outFile.write("./MakeCondorFiles.csh executable_tautau "+inputDrMC+j+" "+j+" -1 1000 2018 MC "+j[:-5]+" $outDir"+"\n")
    #outFile.write("./executable_etau "+inputDrMC+j+" "+j+" -1 1000 2017 MC "+j[:-5]+" $outDir"+"\n")
outFile.write('###########################   DATA  #########################'+'\n\n')
outFile.write('./rootcom tautau_analyzer executable_tautau  '+'\n\n\n')
for j in filelistMC :
     if "Tau" in j[:3]:
        outFile.write("./MakeCondorFiles.csh executable_tautau "+inputDrMC+j+" "+j+" -1 1000 2018 DATA "+j[:-5]+" $outDir"+"\n")
    

outFile.close()


