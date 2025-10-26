function z = ymax(x) 
%  
speciesNames = {'Endurance','Sprint','Resistance','Energy','Adrenaline','BAR','IGF1','BMP','NRG1','Ca_CaM','PI3K','cAMP','PKA','Akt','PKC','p38','p53','p70S6K','mTOR','LKB1','ERK12','AMPK','ACC','SIRT1','MFF','PGC1a','CAMK2','FOXO','DRP1','OPA1','MFN1','MFN2','ATP_ADP','ROS','NAD_NADH','GLUT4','CPT1','Fusion','Fission'}; 
idx = find(ismember(speciesNames, x));
ymaxT = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ];
z = ymaxT(idx);
