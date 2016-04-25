global delta om;

om=10;    % frequency of oscillator
delta=0.3;  % strength of instability in oscillator
wI=0.01;  % initial condition

A=wI/2;
T=[0:0.001:30];

ysol0=2*A*cos(om*T);
ysol1=2*real(((-3*A^3+12*delta*A)/8/om)*i*exp(om*i*T)+(i*A^3/8/om)*exp(3*om*i*T)-((2*delta*A-A^3)*(1+2*i*om*T)/4/om).*(exp(om*i*T)*i));
ysol=ysol0+ysol1;

figure(1)
plot(T,ysol0,'k')
hold on;
plot(T,ysol,'b')
hold on;