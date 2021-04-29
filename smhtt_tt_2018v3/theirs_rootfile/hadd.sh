	
rm DY.root DY1.root DY2.root DY3.root DY4.root Data.root

hadd DY.root smhtt_DYJetsToLL_v1.root
hadd DY1.root smhtt_DY1JetsToLL*.root
hadd DY2.root smhtt_DY2JetsToLL*.root
hadd DY3.root smhtt_DY3JetsToLL*.root
hadd DY4.root smhtt_DY4JetsToLL*.root
hadd Data.root smhtt_data_Tau*.root 
