function YY= Adrenaline(Sprint,Ex_start,Ex_stop, time)
YY=Sprint*(max(sign(time-Ex_start),0)*max(sign(Ex_stop-time),0));
end
