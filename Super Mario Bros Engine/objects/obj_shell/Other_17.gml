/// @description Slow down when falling

if (gravity > 0)
    hspeed = max(0,abs(1.5)-0.1)*sign(hspeed);
else
    hspeed = max(0,abs(3)+0.1)*sign(hspeed);

