fs = 10;
t = 0:1/fs:250;
f = 1/100;
m = sin(2*pi*f*t);
c = sawtooth(2*pi*(1/10)*t);
s = zeros(1,length(t));
for i=1:length(t)
    if(m(i)<c(i))
        s(i) = 1;
    else
        s(i) = 0;
    end
end
z = diff(s);
for j=1:length(z)
    if(z(j)<0)
        z(j) = 0;
    end
end
subplot(3,1,1);
plot(t,m);
xlabel("t");
ylabel("Amplitude");
title("Pulse Position Modulation");
subplot(3,1,2);
plot(t,c);
xlabel("t");
ylabel("Amplitude");
subplot(3,1,3);
plot(0:1/fs:250-1/fs,z);
xlabel("t");
ylabel("Amplitude");
