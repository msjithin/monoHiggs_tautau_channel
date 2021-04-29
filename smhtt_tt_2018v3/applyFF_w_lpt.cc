#include "TF1.h"
#include "TFile.h"
#include "TString.h"

using namespace std;

class applyFF_w_lpt
{
public:
  TFile* frawff;
  TFile* fmvisclosure;
  TFile* fosssclosure;

  TF1* ff_qcd_0jet;
  TF1* ff_qcd_1jet;
  TF1* ff_qcd_2jet;

  TF1* ff_qcd_dm0_0jet;
  TF1* ff_qcd_dm0_1jet;
  TF1* ff_qcd_dm0_2jet;
  TF1* ff_qcd_dm1_0jet;
  TF1* ff_qcd_dm1_1jet;
  TF1* ff_qcd_dm1_2jet;
  TF1* ff_qcd_dm10_0jet;
  TF1* ff_qcd_dm10_1jet;
  TF1* ff_qcd_dm10_2jet;
  TF1* ff_qcd_dm11_0jet;
  TF1* ff_qcd_dm11_1jet;
  TF1* ff_qcd_dm11_2jet;

  TF1* closure_mvis_tt_qcd;
  TF1* closure_tau2pt_tt_qcd;
  TF1* closure_tau1pt_tt_qcd;
  TF1* closure_met_tt_qcd;
  TF1* closure_tau2pt_tt_qcd_0jet;
  TF1* closure_tau2pt_tt_qcd_1jet;
  TF1* closure_tau2pt_tt_qcd_2jet;
  TF1* osssclosure_qcd_low;
  TF1* osssclosure_qcd_high;

  applyFF_w_lpt(){
    //std::cout<<"applyFF_w_lpt constructed"<<endl;
    frawff = TFile::Open("sf_files/FF_lptCorrInBinsOfTauPt/FF_differential/ff_files_tt_2018/uncorrected_fakefactors_tt.root");
    ff_qcd_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_0jet");
    ff_qcd_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_1jet");
    ff_qcd_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_2jet");

    ff_qcd_dm0_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm0_0jet");
    ff_qcd_dm0_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm0_1jet");
    ff_qcd_dm0_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm0_2jet");
    
    ff_qcd_dm1_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm1_0jet");
    ff_qcd_dm1_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm1_1jet");
    ff_qcd_dm1_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm1_2jet");

    ff_qcd_dm10_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm10_0jet");
    ff_qcd_dm10_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm10_1jet");
    ff_qcd_dm10_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm10_2jet");

    ff_qcd_dm11_0jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm11_0jet");
    ff_qcd_dm11_1jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm11_1jet");
    ff_qcd_dm11_2jet=(TF1*) frawff->Get("rawFF_tt_qcd_dm11_2jet");


    fmvisclosure = TFile::Open("sf_files/FF_lptCorrInBinsOfTauPt/FF_differential/ff_files_tt_2018/FF_corrections_1.root");
    closure_mvis_tt_qcd=(TF1*) fmvisclosure->Get("closure_mvis_tt_qcd");
    closure_tau2pt_tt_qcd=(TF1*) fmvisclosure->Get("closure_tau2pt_tt_qcd");
    closure_tau1pt_tt_qcd=(TF1*) fmvisclosure->Get("closure_tau1pt_tt_qcd");
    closure_met_tt_qcd=(TF1*) fmvisclosure->Get("closure_met_tt_qcd");
    closure_tau2pt_tt_qcd_0jet=(TF1*) fmvisclosure->Get("closure_tau2pt_tt_qcd_0jet");
    closure_tau2pt_tt_qcd_1jet=(TF1*) fmvisclosure->Get("closure_tau2pt_tt_qcd_1jet");
    closure_tau2pt_tt_qcd_2jet=(TF1*) fmvisclosure->Get("closure_tau2pt_tt_qcd_2jet");

    fosssclosure  = TFile::Open("sf_files/FF_lptCorrInBinsOfTauPt/FF_differential/ff_files_tt_2018/FF_QCDcorrectionOSSS_tt.root");
    osssclosure_qcd_low=(TF1*) fosssclosure->Get("closure_OSSS_mvis_tt_qcd");
    osssclosure_qcd_high=(TF1*) fosssclosure->Get("closure_OSSS_mvis_tt_qcd_linear");

  }
  ~applyFF_w_lpt(){
    //std::cout<<"applyFF_w_lpt destructing..."<<endl;
    frawff->Close();
    fmvisclosure->Close();
    fosssclosure->Close();
  }
  float get_raw_FF(float pt, TF1* fct){
    float ff=1.0;
    ff=fct->Eval(pt);
    if (pt>100) ff=fct->Eval(100);
    return ff;
    //if (ff<0) return 0.0;
    //else if (ff>2) return 2.0;
    //else return ff;
  }

  float get_mvis_closure(float mvis, TF1* fct){
    float corr=1.0;
    corr=fct->Eval(mvis);
    if (mvis>250) corr=fct->Eval(250);
    if (corr<0 || corr>2) return 1.0;
    else return corr;
  }

  float get_lpt_closure(float lpt, TF1* fct){
    float corr=1.0;
    corr=fct->Eval(lpt);
    if (lpt>140) corr=fct->Eval(140);
    return corr;
  }

  float get_met_closure(float met, TF1* fct){
    float corr=1.0;
    corr=fct->Eval(met);
    if (corr<=0 || corr>2) return 1.0;
    else return corr;
  }

  float get_ff(float pt, float mt, float mvis, float msv, float lpt, float met, int njets, int tau_dm , float frac_tt, float frac_qcd, float frac_w, TString shift){
    float ff_qcd=1.0;
    float ff_w=0;
    float ff_tt=1.0;

    if (njets==0)
      ff_qcd=get_raw_FF(pt, ff_qcd_0jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_0jet);
    else if (njets==1)
      ff_qcd=get_raw_FF(pt, ff_qcd_1jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_1jet);
    else 
      ff_qcd=get_raw_FF(pt, ff_qcd_2jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_2jet);
    // Raw FF
    // if (njets==0){
    //   if(tau_dm==0)
    // 	ff_qcd=get_raw_FF(pt, ff_qcd_dm0_0jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_0jet);
    //   else if(tau_dm==1)
    // 	ff_qcd=get_raw_FF(pt, ff_qcd_dm1_0jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_0jet);
    //   else if(tau_dm==10)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm10_0jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_0jet);
    //   else if(tau_dm==11)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm10_0jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_0jet);
    // }
    // // if(ff_qcd==0)
    // //   cout<<"warning "<<__LINE__<<endl;
    // else if (njets==1){
    //   if(tau_dm==0)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm0_1jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_1jet);
    //   else if(tau_dm==1)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm1_1jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_1jet);
    //   else if(tau_dm==10)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm10_1jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_1jet);
    //   else if(tau_dm==11)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm10_1jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_1jet);    
    // }
    // // if(ff_qcd==0)
    // //   cout<<"warning "<<__LINE__<<endl;
    // else{
    //   if(tau_dm==0)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm0_2jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_2jet);
    //   else if(tau_dm==1)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm1_2jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_2jet);
    //   else if(tau_dm==10)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm10_2jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_2jet);
    //   else if(tau_dm==11)
    //     ff_qcd=get_raw_FF(pt, ff_qcd_dm10_2jet) * get_lpt_closure(lpt, closure_tau2pt_tt_qcd_2jet);
    // }
    // if(ff_qcd==0)
    //   cout<<"warning "<<__LINE__<<endl;
    
    //ff_qcd = ff_qcd * get_mvis_closure(mvis, closure_mvis_tt_qcd) ;
    //ff_qcd = ff_qcd * get_mvis_closure(mvis, osssclosure_qcd_high);
    if(mvis<90)
      ff_qcd = ff_qcd * get_mvis_closure(mvis, osssclosure_qcd_low);
    else
      ff_qcd = ff_qcd * get_mvis_closure(mvis, osssclosure_qcd_high);
    // if(ff_qcd==0)
    //   cout<<"warning "<<__LINE__<<endl;
    
    //ff_qcd = ff_qcd * get_lpt_closure(pt, closure_tau1pt_tt_qcd) * get_met_closure(met, closure_met_tt_qcd);
    
    //cout<<pt <<" "<<mvis<<" " << lpt << " "<<met<<" "<<njets<< " "<<tau_dm<<endl;
    //cout<< get_mvis_closure(mvis, osssclosure_qcd_low)<<" "<< get_mvis_closure(mvis, osssclosure_qcd_high) << "\n" <<endl;	
    //   }
    //cout<<"final ff = "<<ff_qcd <<endl;
    return ff_qcd;
  }
  
};
