
for time=0:1:1500
Energy = Input(time,1,0,0,1000,1100,0.6,10) ;
scatter (time, act(Energy,0.7,1.4,0.5))
time
hold on
end