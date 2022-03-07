mytime = datetime;
[h, m, s] = hms(mytime);
minutes = h * 60;
minutes = minutes + m;
minutes = minutes + (s / 60);
