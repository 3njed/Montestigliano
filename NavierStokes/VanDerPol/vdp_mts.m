global delta om;

om=10;    % frequency of oscillator
delta=0.3;  % strength of instability in oscillator
wI=0.01;  % initial condition


A=wI/2;
T=[0:0.001:30];

[T,Y]=ode45(@ydot_mts,T,A);

ysol=2*cos(om*T).*Y;

figure(1)
plot(T,ysol,'g')
hold off;
