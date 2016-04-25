global delta om;

om=10;    % frequency of oscillator
delta=0.3;  % strength of instability in oscillator
wI=0.01;  % initial condition

[T,Y]=ode45(@ydot,[0,30],[wI; 0]);

figure(1)
plot(T,Y(:,1),'r')
hold on;

figure(2)
plot(Y(:,1),Y(:,2))
hold off;