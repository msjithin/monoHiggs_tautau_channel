import os

filelist=os.listdir("rootFiles")
samplelist=[]
filelist.sort()
res = [] 
for x in filelist:
    x=x.split('_')
    if x[0] == 'ST':
        x = x[0]+"_"+x[1]+"_"+x[2]
    else:
        x = x[0]+"_"+x[1]
    if x not in res:
        res.append(x)
    
#print(res)
outFile = open("hadd_files.sh", "w")
outFile.write(
"""
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
"""
)

for i in res :
    filestr=''
    for j in filelist :
        #tmp = j[:-8]
        if i in j :
            filestr+='rootFiles/'+j+' '
    outFile.write('hadd $outDIR/{}_final.root {}\n'.format(i, filestr))

outFile.write(
"""

"""
)
print("""
output written to hadd_files.sh 
do  ' bash hadd_files.sh '
"""
)
outFile.close()
