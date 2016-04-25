A=load('out_0.txt');
Ts=(A(2,1)-A(1,1))
Fs=1./Ts;
[spectra,freq]=pwelch(A(:,4),1000,0.5,1000,Fs);
figure(10);
plot(freq(1:20)*3.14*2,abs(spectra(1:20)),'b');
