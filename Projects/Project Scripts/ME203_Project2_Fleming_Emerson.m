% Emerson Fleming, Brandon Ramirez-Lopez, Gabriel Ritch
% ME 203
% Project 2
% 12-8-2021
clc,clear,format compact
% Playing with real data:
% givens
filename='Dynamic_wind.xlsx'; %calls Excel file for data
t=xlsread(filename,'C2:C119944'); %extracts time data from spreadsheet
voltage=xlsread(filename,'B2:B119944'); %extracts voltage data from spreadsheet
cal_volts=[1.1334761517302536, 1.2168838402316453,...
    1.2574484652661773, 1.28406653483074,...
    1.2945098977285117, 1.306963086494241,...
    1.3147604417015477, 1.3228523686035325,...
    1.3311519051962617, 1.3343771944501273]; %avg calibration voltages in V
cal_speed=[0,.31,.53,.68,.73,.84,.90,.96,1.02,1.10]; %avg wind speeds in m/s

%finding line of best fit with polyfit (needs fprintf command)
best_fit=polyfit(cal_volts,cal_speed,1); %finds 1st order line of best fit
V=polyval(best_fit,voltage);%finds velocity from given data
len_t=length(t);
t_i=t(1); %initial t value
t_f=t(len_t); %final t value
T=t_f-t_i; %difference between initial and final t values
TIME=linspace(0,T,len_t); %time to plot against velocity

%plotting velocity
figure(1)
plot(TIME,V) %plot time and velocity against each other
%labels
title('Velocity with respect to time')
xlabel('time (s)')
ylabel('velocity (m/s)')

%fft analysis
Fs = 1/(TIME(2)-TIME(1));            % Sampling frequency                    
Tf = 1/Fs;             % Sampling period       
L = T*1000;             % Length of signal
tf = (0:L-1)*Tf;        % Time vector
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(V,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
figure(2)
loglog(f,2*abs(Y(1:NFFT/2+1))) %use loglog scale when plotting fft
%labels
title('Fourier Frequency Transform')
xlabel('Frequency (Hz)')
ylabel('Power (W)')
%peak labels
text(.0669481,.0111081,'peak 1')
text(.0829699,.0108303,'peak 2')
text(.100136,.0102167,'peak 3')

% sum of sines using peak values
% find f1,f2,and f3 by finding inverse of x values from previous graph
f1=1/.0669481;
f2=1/.0829699;
f3=1/.100136;
%use values to find signal
sig=sin(f1.*TIME)+sin(f2.*TIME)+sin(f3.*TIME);

% Plot signal against time 0<TIME<20
figure(3)
plot(TIME,sig)
%labels
title('signal sent to fans with respect to time')
xlabel('time (s)')
ylabel('Power (W)')
xlim([0 20]) %limits time from 0 to 20