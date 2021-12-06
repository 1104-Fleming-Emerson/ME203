% Austin Lopez
% HW 2
% ME 203
clc;clear all;format compact;
%% problem 1
%array x from 1 to 5 with common difference of 0.2
x=[1:0.2:5];
%to determine y=7sin(4x)
y=7*sin(4*(x))
%to determin the length  of y
L=length(y)
% the 3rd term of y
y(3)
%% Problem 2
%array E from sin(-pi/2 to cos(0) with common difference of 0..05
E=sin(-pi/2):0.05:cos(0);
% determin the legnth of E
L2=length(E)
% 10th element of E
E(10)
%% Problem 3
%define coeficients to 13x^3+182x^2-184x+2503
p=[13,182,-184,2503];
% finding the roots
roots(p)
%% Problem 4
% part a
a=(6*pi*(atan(12.5)))+4
% part b
b=5*tan(3*asin(13/5))
%% Problem 5
% givens
r=10;
phi=0:0.1:4*pi;
% Calculating x and y
x=r*(phi-sin(phi));
y=r*(1-cos(phi));
% plotting
figure(1)
plot(x,y);
xlabel('X')
ylabel('Y')
title('CYCLOID')
%% Problem 6
% given
t=[1:0.005:3];
% calculating temperature
T=6*log(t)-7*exp(-0.2*t);
% plotting
figure(2)
plot(t,T);
title('Temperature Versus Time')
xlabel('Time t(min)')
ylabel('Temperature T(Celsius)0')
%% Problem 7
% Givens
V=[20:0.01:100];
R=286.7;
T=293;
m=[1 3 7];
% calculating p for each mass
p1=(m(1)*R*T)./V;
p2=(m(2)*R*T)./V;
p3=(m(3)*R*T)./V;
% plotting
figure(3)
plot(V, p1, V, p2, V, p3)
xlabel('Volume')
ylabel('Pressure')
title('Pressure vs. Volume')
grid on
legend('m=1','m=3','m=7')

%% problem 8
% Givens
t=0:0.1:5;
b=[0.05 0.1 0.2 0.5 1 2 5 10 20 40];
% for loop to iterate over difernt b
figure(4)
for i=1:10

y=1-exp(-b(i)*t);
plot(t, y)
hold on
end
% location of 98 percent solve for t
T=-log(1-.98)./b
%plotting and lables
P=ones(length(t))*.98;
plot(t,P,'k')
xlabel('t')
ylabel('y')
legend('b=0.05', 'b=0.1', 'b=0.2', 'b=0.5', 'b=1', 'b=2', 'b=5', 'b=10', 'b=20', 'b=40','98 percent');
%% Problem 9
%givens
r=.1:.1:100;
% calcuating A and V
V=(4/3)*pi*r.^3;
A=4*pi*r.^2;
% Plotting
figure(5)
%sub plot 2x1
subplot(2,1,1)
%since the scale ranges from .1 to 100 a log log plot is useful
loglog(r,V)
subplot(2,1,2)
loglog(r,A)



