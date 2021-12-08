% Emerson Fleming
% Homework 2
% 10-5-2021
clc,clear,format compact
%% Problem 1
%given
x=1:.2:5; % x starts at 1, increases by intervals of .2 up to 5
%function
y=7*sin(4*x); % function y with respect to x
%show 3rd
disp(y(3)) % shows 3rd value of incremental function

%% Problem 2
%given
a=[sin(-pi/2):.05:cos(0)];
%show 10th value
disp(a(10)) %shows 10th value of incremental function

%% Problem 3
%find roots
r=roots([13 182 -184 2503]) % 13*x^3+182*x^2-184*x+2503=0

%% Problem 4
%problem a (6π(tan^(-1)(12.5))+4):
a=(6*pi*atan(12.5))+4

%problem b (5tan(3(sin^(-1)(13/5)))):
b=5*tan(3*asin(13/5))

%% Problem 5
%given
r=10; %radius in inches
phi=[0:.01:4*pi]; %angle phi in radians

%parametric equations
x=r*(phi-sin(phi)); %x parameter
y=r*(1-cos(phi)); %y parameter

%cycloid plot
figure(5)
plot(x,y)
title('Cycloid with radius 10 in and phi between 0 and 4π')
xlabel('x=r(phi-sin(phi))')
ylabel('y=r(1-cos(phi))')
grid on
%% Problem 6
%given
t=[1:.01:3]; %time between 1 and 3 minutes

%equation
T=(6*log(t))-(7*exp(.2*t)); % Temperature in degrees Celcius

%plot of equation
figure(6)
plot(t,T) %t versus T plot
xlabel('t (minutes)')
ylabel('T (degrees Celcius)')
title('T=6ln(t)-7e^.^2^t')
grid on

%% Problem 7
%given
R=286.7; %ideal gas constant in (Nm)/(kgK)
T=293; %room temperature in K
V=[20:.01:100]; %volume in m^3; 20<=V<=100
    %masses in kg
    m1=1;
    m3=3;
    m7=7;

%pressure equations in Pa (pV=mRT)
p1=R*T*m1./V; %pressure at 1 kg mass
p2=R*T*m3./V; %pressure at 3 kg mass
p3=R*T*m7./V; %pressure at 7 kg mass

%plot of pressure vs volume
figure(7)
plot(V,p1,V,p2,V,p3) %V versus p plot
title('Volume versus pressure at masses 1, 3, and 7 kg')
xlabel('volume (m^3)')
ylabel('pressure (Pa)')
legend('mass=1kg','mass=3kg','mass=7kg')
grid on

%% Problem 8
%different b values
b3=3;
b5=5;
b25=25;
%function y=1-e^(-bt)
y1=1-exp(-b3*t); %solid state is 1 when b=1
y2=1-exp(-b5*t); %solid state is 1 when b=5
y3=1-exp(-b25*t); %solid state is 1 when b=25
figure(81)
plot(t,y1,t,y2,t,y3)
title('y(t)=1-e^-^b^t')
xlabel('t (time)')
ylabel('y(t)')
grid on
    %from looking at graph, steady state value is 1
Y1=max(y1); %max of graph should be roughly equal to steady state
Y2=max(y2); %max of graph should be roughly equal to steady state
Y3=max(y3); %max of graph should be roughly equal to steady state
    %by checking maximum values of y functions, steady state value is 1
    %98 percent of 1 is .98=y=Yn
%T (time) where y=.98=Yn and b=5
Yn=.98;
T=-log(1-Yn)/b5 %use b5
%% Problem 9
%given
r=[.1:.01:100]; %radius is between .1 and 100 meters

%equations
V=(4*pi*r.^3)/3; %volume of sphere in m^3
A=4*pi*r.^2; %surface area of sphere in m^2

%subplot of radius vs volume
figure(9)
subplot(2,1,1);
plot(r,V) %r versus V plot
loglog(r,V)
xlabel('radius (m)')
ylabel('Volume (m^3)')
title('Radius versus Volume of Sphere (log/log scale)')
grid on

%subplot of radius versus surface area
subplot(2,1,2);
plot(r,A) %r versus A plot
loglog(r,A)
xlabel('radius (m)')
ylabel('Surface Area (m^2)')
title('Radius versus Surface Area of Sphere (log/log scale)')
grid on