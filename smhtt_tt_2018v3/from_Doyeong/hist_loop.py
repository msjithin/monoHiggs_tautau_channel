from ROOT import TFile
 
fname = 'smh2018tt_nocorrelation.root'
hnames = []
 
tfile = TFile.Open(fname)
for key in tfile.GetListOfKeys():
    h = key.ReadObj()
    if h.ClassName() == 'TH1F' or h.ClassName() == 'TH2F':
        hnames.append(h.GetName())
