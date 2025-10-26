clc
clear all
time=0:1000;
t_start=500;
W=1;
Out=W*(1-exp((t_start-time).*heaviside(-t_start+time)/0.004));

plot(time,Out)