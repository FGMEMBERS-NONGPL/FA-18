

x1=1.2318;
y1=0.2871;

x2=0.2;
y2=0.78;

off=0.108277;

start=0.32;
stop=1;

angle1=atan(y1/x1);
angle2=atan(x2/y2);

start_alpha=angle1+angle2;
end_alpha=start_alpha+pi/2;

b=sqrt(x1^2+y1^2);
a=sqrt(x2^2+y2^2);

x=linspace(start,stop,9);

alpha=((x-start)/(stop-start)*(end_alpha-start_alpha)+start_alpha);

l=((a*sin(alpha)).^2 + (b+a*cos(alpha)).^2).^0.5;
beta=atan(a*sin(alpha)./(b+a*cos(alpha))) - angle1;

lprime=(l.^2 + 0.11^2).^0.5;
betaprime=beta+atan((y1-off)./l);
betaprime=360/(2*pi)*betaprime;

lprime-lprime(end)
betaprime
betaprime-betaprime(1)

% figure(1)
% plot(x,l)
% figure(2)
% plot(x,beta)

