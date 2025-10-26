t_start=100;
time=0:0.1:200;
W=1;
A=(1+0.242*W*(1-exp((t_start-time).*heaviside(-t_start+time)/0.4)));
% A=(1+0.242*W*(1-exp((t_start-time)/0.4)));
%A=heaviside(-t_start+time);
plot (time, A)