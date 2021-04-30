/////skimm_tt_2018.C
//For use with Ntuples made from ggNtuplizer
//Required arguments: 1 is folder containing input files, 2 is output file path, 3 is maxEvents (-1 to run over all events), 4 is reportEvery
//
//To compile using rootcom to an executable named 'analyze':
//$ ./rootcom skimm_tt_2018 analyze
//
//To run, assuming this is compiled to an executable named 'analyze':
//$ ./analyze /hdfs/store/user/jmadhusu/LatestNtuples/ /afs/hep.wisc.edu/user/ms/CMSSW_9_4_4/src/2017_analysis/etau/output.root -1 10000
//./analyze /hdfs/store/user/jmadhusu/MonoHiggs_MC2017/ZZZ_TuneCP5_13TeV-amcatnlo-pythia8/crab_ZZZ/180603_185329/0000/ /afs/hep.wisc.edu/user/ms/CMSSW_9_4_4/src/2017_analysis/analyzer/output.root -1 10000
//Runs over every event in the folder LatestNtuples, reporting progress every 10000 events
//and storing the resulting histograms in the file output.root.
//
//To plot, for example, single photon trigger efficiency as a function of photon pt:
//$ root -l
//root[0] TFile *f = new TFile("output.root");
//root[1] TGraphAsymmErrors *efficiency = new TGraphAsymmErrors((TH1F*)f->Get("Photon_Et_300_2"),(TH1F*)f->Get("Photon_Et_300_1"));
//root[2] efficiency->Draw("AP")
//root[3] efficiency->SetTitle("Single photon trigger efficiency")
//root[4] efficiency->GetXaxis()->SetTitle("Photon p_{T}")
//root[5] efficiency->Draw("AP")
//
#define skimm_tt_2018_cxx
#include "skimm_tt_2018.h"
#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>
#include "TH1F.h"
#include <iostream>
#include <bitset>
#include <climits>
#include <cstring>
#include "Math/Minimizer.h"
#include "Math/Factory.h"
#include "Math/Functor.h"
#include "TStopwatch.h"
#include <algorithm>
#include <vector>
#include <iterator>
#include <list>
#include <map>
#include <set>
#include "TMath.h" //M_PI is in TMath
#include "TRandom3.h"
#include <TLorentzVector.h>
#include "makeHisto.h" 

using namespace std;
using std::vector;
int main(int argc, const char* argv[])
{
  TStopwatch sw;
  sw.Start();
  
  myMap1 = new map<string, TH1F*>();
  //myMap2 = new map<string, TH2F*>();
  std::string SampleName = argv[5];
  std::string isMC  = argv[6];
  Long64_t maxEvents = atof(argv[3]);
  if (maxEvents < -1LL)
    {
      std::cout<<"Please enter a valid value for maxEvents (parameter 3)."<<std::endl;
      return 1;
    }
  int reportEvery = atof(argv[4]);
  if (reportEvery < 1)
    {
      std::cout<<"Please enter a valid value for reportEvery (parameter 4) "<<std::endl;
      return 1;
    }
  //std::string SampleName = argv[5];
  
  skimm_tt_2018 t(argv[1],argv[2], isMC);
  t.Loop(maxEvents,reportEvery, SampleName , isMC);
  delete myMap1;
  sw.Stop();
  sw.Print();
  return 0;
}

void skimm_tt_2018::Loop(Long64_t maxEvents, int reportEvery, string SampleName, string _isMC_)
{

  
  if (fChain == 0) return;
  int nTotal;
  nTotal = 0;
  int report_=0;
  int report_test=0;
  int nInspected;
  nInspected = 0;
  float nPassedSkimmed=0;
  double nInspected_genWeighted;  
  nInspected_genWeighted = 0.0; 
  bool debug=false;  double netWeight = 1.0;
   TString sample = TString(SampleName);
  
   bool fill_hist = false;
   bool isMC = false;
   if( _isMC_=="MC" ) { isMC=true; fill_hist=true; }
   else if ( _isMC_=="data" ) { isMC=false; fill_hist=false; }
   //bool debug=true;

   Long64_t nentries = fChain->GetEntries();
   if ( isMC==true ) std::cout<<".... MC file ..... "<<std::endl;
   std::cout<<"Coming in: "<<std::endl;
   std::cout<<"nentries:"<<nentries<<std::endl;
   //Look at up to maxEvents events, or all if maxEvents == -1.
   Long64_t nentriesToCheck = nentries;
   if (maxEvents != -1LL && nentries > maxEvents)
     nentriesToCheck = maxEvents;
   nTotal = nentriesToCheck;
   Long64_t nbytes = 0, nb = 0;
   
   std::cout<<"Running over "<<nTotal<<" events."<<std::endl;
   double  eventWeight = 1.0;
   newtree=fChain->CloneTree(0);
   
   for (Long64_t jentry=0; jentry<nentriesToCheck;jentry++)
     {
       nInspected+=1;
       Long64_t ientry = LoadTree(jentry);
       if (ientry < 0) break;
       nb = fChain->GetEntry(jentry);   nbytes += nb;
       int report_i=0;
       
       bool tauPt_selection = (t1Pt>35 && t2Pt>35 && abs(t1Eta)<2.4 && abs(t2Eta)<2.4 );
       bool trigger = false;
       //if( run < 317509 )
       
       if ( DoubleMediumHPSTau40Pass
	    || DoubleTightTau35TightIDPass 
	    || DoubleMediumTau40TightIDPass 
	    || DoubleTightTau40Pass )
	 trigger = true;
       
       
       if( trigger )
	 {
	   //makeMyPlot("b", 0, 0, eventWeight);
	   TLorentzVector mytau2; 
	   mytau2.SetPtEtaPhiM(t2Pt, t2Eta, t2Phi, t2Mass);
	   TLorentzVector mytau1;
	   mytau1.SetPtEtaPhiM(t1Pt, t1Eta, t1Phi, t1Mass);
	   
	   // if ( Flag_BadChargedCandidateFilter 
	   // 	|| Flag_BadPFMuonFilter 
	   // 	|| Flag_EcalDeadCellTriggerPrimitiveFilter 
	   // 	|| Flag_HBHENoiseFilter 
	   // 	|| Flag_HBHENoiseIsoFilter 
	   // 	|| Flag_badMuons 
	   // 	|| Flag_duplicateMuons 
	   // 	|| Flag_ecalBadCalibFilter 
	   // 	|| Flag_eeBadScFilter 
	   // 	|| Flag_globalSuperTightHalo2016Filter 
	   // 	|| Flag_goodVertices ) continue;
	   int mydm1=t1DecayMode;
	   int mydm2=t2DecayMode;
	   float gen1=t1ZTTGenMatching;
	   float gen2=t2ZTTGenMatching;
	   bool signalRegion=(t1MediumDeepTau2017v2p1VSjet>0.5);
	   bool antiisoRegion=(t1VVVLooseDeepTau2017v2p1VSjet>0.5 && t1MediumDeepTau2017v2p1VSjet<0.5);
	   float iso2=(t2MediumDeepTau2017v2p1VSjet);
	   float iso1=(t1MediumDeepTau2017v2p1VSjet);
	  	  
	   //cout<< antiisoRegion <<" "<< byVVVLooseDeepVSjet_1 <<" "<< byMediumDeepVSjet_1 <<endl;

	   if(mytau1.Pt()>35 && fabs(mytau1.Eta())<2.4
	      && t1VVVLooseDeepTau2017v2p1VSe>0.5 && t1VLooseDeepTau2017v2p1VSmu>0.5
	      && (mydm1==0 || mydm1==1 || mydm1==10 || mydm1==11)
	      )
	     {
	       //makeMyPlot("c", 0, 0, eventWeight);
	       // selct taus
	       if(mytau2.Pt()>35 && fabs(mytau2.Eta())<2.4
		  && t2VVVLooseDeepTau2017v2p1VSe>0.5 && t2VLooseDeepTau2017v2p1VSmu>0.5
		  && (mydm2==0 || mydm2==1 || mydm2==10 || mydm2==11)
		  )
		 {
		   //cout<<mytau1.Pt() <<" "<<mytau2.Pt()<<endl;
		   //makeMyPlot("d", 0, 0, eventWeight);
		   // opp charge
		   newtree->Fill();
		   nPassedSkimmed+=1;
		 }
	     }
	 }
     
       
       report_test = nentriesToCheck/20;
       while (report_test>10)
	 {
	   report_test=report_test/10;
	   report_i++;
	 }
       reportEvery = report_test*pow(10,report_i);
       if (jentry%reportEvery == 0)
	 {
	   std::cout<<"Finished entry "<<jentry<<"/"<<(nentriesToCheck-1)<<std::endl;
	 }
     }
   h_nEvents->SetBinContent(2, nInspected);
   h_nEvents->SetBinContent(1, eventCount);
   cout<<"nPassedSkimmed = "<<nPassedSkimmed<<endl;
}

void skimm_tt_2018::BookHistos(const char* file2)
{
  fileName = new TFile(file2, "RECREATE");
  h_nEvents=new TH1F("nEvents", "nEvents", 5, 0, 5);
  
  //tree = new TTree("eventTree","eventTree");
  //tree->Branch("run_",&run_);
  //tree->Branch("event_",&event_); 
  //tree->Branch("lumis_",&lumis_); 
  //makeOutputTree(tree);
  fileName->cd();
  
}

//Fill the sequential histos at a particular spot in the sequence


void skimm_tt_2018::fillHistos(int histoNumber, double event_weight, int higgs_Index)
{
  
  //h_HiggsPt[histoNumber]->Fill(mcPt->at(higgs_Index),event_weight);

}

double skimm_tt_2018::delta_R(float phi1, float eta1, float phi2, float eta2)
{
  double deltaeta = abs(eta1 - eta2);
  double deltaphi = DeltaPhi(phi1, phi2);
  double deltar   = sqrt(deltaeta*deltaeta + deltaphi*deltaphi);
  return deltar;
  
}


float skimm_tt_2018::pTvecsum_F(TLorentzVector a, TLorentzVector b, TLorentzVector c) {
  float pt_vecSum = (a + b+ c).Pt();
  return pt_vecSum;
}
double skimm_tt_2018::DeltaPhi(double phi1, double phi2)
//Gives the (minimum) separation in phi between the specified phi values
//Must return a positive value
{
  double pi = TMath::Pi();
  double dphi = phi1-phi2;
  if(dphi>pi) dphi  -= 2.0*pi;
  if(dphi<= -1*pi) dphi +=  2.0*pi;
  return fabs(dphi);
}

float skimm_tt_2018::TMass_F(float LepPt, float LepPhi , float met, float metPhi) {
  //return  sqrt(2.0*LepPt*met*(1.0-cos(DeltaPhi(LepPhi, metPhi))));
  return sqrt(pow(LepPt + met, 2) - pow(LepPt* cos(LepPhi) + met * cos(metPhi), 2) - pow(LepPt * sin(LepPhi) + met * sin(metPhi), 2));
}

void skimm_tt_2018::makeMyPlot( string histNumber , int tau1Index, int tau2Index, float event_weight){
  string hNumber = histNumber;
  int ele_select=-1;
  std::vector<int> tmpCand; tmpCand.clear();
  if(tau1Index>-1)
    tau1Index=tau1Index;
  else
    tau1Index=0;
  if(tau2Index>-1)
    tau2Index=tau2Index;
  else
    tau2Index=0;
  plotFill("tau1Pt_"+hNumber,  t1Pt , 30 , 40 , 180,  event_weight);
  plotFill("tau1Eta_"+hNumber, t1Eta, 22, -2.1, 2.1,  event_weight);
  plotFill("tau1Phi_"+hNumber, t1Phi, 30, -3.14, 3.14,  event_weight);

  plotFill("tau2Pt_"+hNumber,  t2Pt  , 30 , 40 , 120,  event_weight);
  plotFill("tau2Eta_"+hNumber, t2Eta , 22, -2.1, 2.1, event_weight);
  plotFill("tau2Phi_"+hNumber, t2Phi , 30, -3.14, 3.14,  event_weight);
  
  plotFill("tau1DecayMode_"+hNumber,  t1DecayMode ,  12, 0, 12, event_weight);
  plotFill("tau2DecayMode_"+hNumber,  t2DecayMode ,  12, 0, 12, event_weight);
  int decayModeFinding_2=0;
  plotFill("decayModeFinding_"+hNumber, t1DecayModeFindingNewDMs , 4, 0, 2,  event_weight);
  //decayModeFinding_2

  plotFill("tau1Iso_"+hNumber, t1MediumDeepTau2017v2p1VSjet, 4, -1, 2,  event_weight);
  plotFill("tau1rawiso_"+hNumber, t1DeepTau2017v2p1VSjetraw, 20, 0, 1,  event_weight);
  plotFill("tau2Iso_"+hNumber, t2MediumDeepTau2017v2p1VSjet, 4, -2, 2,  event_weight);
  plotFill("tau2rawiso_"+hNumber, t2DeepTau2017v2p1VSjetraw, 20, 0, 1,  event_weight);

  plotFill("nJet_"+hNumber, jetVeto30 , 8, 0, 8,  event_weight);
  
  int triggerBin1, triggerBin2, triggerBin3, triggerBin4;
  triggerBin1=triggerBin2=triggerBin3=triggerBin4=0;
  if( DoubleMediumHPSTau35Pass )  triggerBin4=4;
  if( DoubleTightTau35TightIDPass )  triggerBin3=3;
  if( DoubleMediumTau40TightIDPass )  triggerBin2=2;
  if( DoubleTightTau40Pass )  triggerBin1=1;
  if(triggerBin1>0)
    plotFill("trigger_"+hNumber, triggerBin1 , 5, 0, 5,  event_weight);
  if(triggerBin2>0)
    plotFill("trigger_"+hNumber, triggerBin2 , 5, 0, 5,  event_weight);
  if(triggerBin3>0)
    plotFill("trigger_"+hNumber, triggerBin3 , 5, 0, 5,  event_weight);
  if(triggerBin4>0)
    plotFill("trigger_"+hNumber, triggerBin4 , 5, 0, 5,  event_weight);
  
  plotFill("mass1_"+hNumber, t1Mass , 50, 0, 0.05,  event_weight);
  plotFill("mass2_"+hNumber, t2Mass , 25, 0, 2.5,  event_weight);
  
  plotFill("genmatch1_"+hNumber, t1ZTTGenMatching , 7, 0, 7,  event_weight);
  plotFill("genmatch2_"+hNumber, t1ZTTGenMatching , 7, 0, 7,  event_weight);

  TLorentzVector my_tau2P4;
  my_tau2P4.SetPtEtaPhiM(t2Pt, t2Eta, t2Phi, t2Mass);
  TLorentzVector my_tau1P4;
  my_tau1P4.SetPtEtaPhiM(t1Pt, t1Eta, t1Phi, t1Mass);
  TLorentzVector my_metP4;
  my_metP4.SetPtEtaPhiM(type1_pfMetEt,0,type1_pfMetPhi,0);

  double deltaPhi = DeltaPhi(t1Phi, t2Phi);
  double deltaEta = fabs(my_tau1P4.Eta() - my_tau2P4.Eta());
  plotFill("deltaPhi_"+hNumber, deltaPhi , 30, -3.14, 3.14,  event_weight);
  plotFill("deltaEta_"+hNumber, deltaEta ,  25, -2.5, 2.5,  event_weight);
  double deltaR = my_tau1P4.DeltaR(my_tau2P4);
  plotFill("deltaR_"+hNumber, deltaR , 30, 0, 6,  event_weight);

  double vismass = (my_tau1P4 + my_tau2P4).M();
  plotFill("visMass_"+hNumber, vismass,  30, 0, 300,  event_weight);
  double higgsPt = pTvecsum_F(my_tau1P4, my_tau2P4, my_metP4);
  plotFill("higgsPt_"+hNumber, higgsPt ,  30, 0, 230,  event_weight);
  plotFill("met_"+hNumber, my_metP4.Pt() , 30, 0, 150,  event_weight);
  plotFill("metPhi_"+hNumber, my_metP4.Phi() , 30, -3.14, 3.14,  event_weight);
  double mT_eleMet = TMass_F( my_tau1P4.Pt(),my_tau1P4.Phi(),my_metP4.Pt(), my_metP4.Phi()  );
  plotFill("mT_eMet_"+hNumber,  mT_eleMet , 30, 0, 150, event_weight);
  int nEvent=1;
  plotFill("nEvents_"+hNumber, nEvent , 3, 0.0, 3.0,  event_weight);
  plotFill("eventWeight_"+hNumber, event_weight , 20, 0.0 , 2.0,  1.0 );
  //cout<<"     elePt_"<<hNumber<<" = "<< elePt->at(tmpCand[0])<<endl;
  plotFill("event_"+hNumber, evt/1000000, 1000, 0.0, 1000, event_weight);
}



