# monoHiggs_tautau_channel


To analyse 2018 tautau channel with monoHiggs samples:


1. Go to 2018_skim/tautauh/analyzer
   Scripts are saved in directory src/
   Main script is tautau_analyzer.C
   sf_files need to be in this directory or keep a link
   To run locally for testing:
   ```
      bash runAnalyzer.sh
   ```
   
   To submit on condor:
   ```
      bash submit.sh 
   ```

2. To make plots:

   Go to tautaupost_analyzer/
   File copyFiles.sh needs to be edited to copy finished files from Condor submit in previous step.
   
   To make plots (this hadd the files, apply xsec weights and make plots)
   ```
   bash execute_all.sh  
   ```
