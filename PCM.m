fs = 10;
t = 0:1/fs:100;
f = 1/100;
m = 8*sin(2*pi*f*t);
ns = m+8;
lev = 16;
pos = 1;
index = 1;
for t=1:1000
    a = ns(t);
    a = round(a);
    qt(t) = round(a);
    b = dec2bin(a,4);
    c = 1;
    for ind=1:4
        x(index) = b(c);
        c = c+1;
        index = index+1;
    end
    pos = pos+1;
end
for i=1:3600
    f(i) = str2num(x(i));
end
subplot(3,1,1);
plot(0:1/fs:100,m);
xlabel('t');
ylabel('Amplitude');
title('Message signal');
subplot(3,1,2);
plot(0:1/fs:100-1/fs,qt);
xlabel('t');
ylabel('Amplitude');
title('Quantized signal');
subplot(3,1,3);
plot(f);
axis([0 3600 -1 2]);
xlabel('t');
ylabel('Amplitude');
title('PCM signal');
        