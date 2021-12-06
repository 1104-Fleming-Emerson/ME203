% hw_3 Solutions
% ME 203, Section 1001
% Austin Lopez
%% HW 3 Problem #1
clc, clear all, format compact, close all

%Matrix A
A=[0,-7,6;5,-4,3;10,-1,9;15,1,0;20,2,-1];

% Plot
figure(1)
 plot(A(:,1),A(:,2),A(:,1),A(:,3))
 xlabel('Time in seconds')
 ylabel('Force in newtons')

%% HW 3 Problem #2

% Matrix A
A=[3,7,-4,12;-5,9,10,2;6,13,8,11;15,5,4,1];

% a.) 4 X 3 array
B=A(1:4,2:4)
% b.) 3 X 4 array
C=A(2:4,1:4)
% c.) 2 X 3 array
D=A(1:2,2:4)

%% HW 3 Problem #3

% Matrix A and B
A=[56,32;24,-16];
B=[14,-4;6,-2];

% a.)
a=A.*B
% b.)
b=A./B
% c.)
c=B.^3

%% HW 3 Problem #4

% a.)
a=6*pi*atan(12.5)+4
% b.)
b=5*tan(3*asin(13/5))

%% HW 3 Problem #5

% a.)
A1=[-2,1;-2,1];
B1=[-5;3];

% Checking Solutions
x1=rank(A1)

z1=rank([A1,B1])
% x1 and z1 does not equal, so no solution for a.)

% b.)
A2=[-2,1;-8,4];
B2=[3;12];

% Checking Solutions
x2=rank(A2)
z2=rank([A2,B2])
% x2 and z2 equals 1 so there's a solution to b.)

% Finding General Solution
GenSolution1=rref([A2,B2])
% Would equal x=0.5y-1.5

% c.)
A3=[-2,1;-2,1];
B3=[-5;-5.00001];
% Checking Solutions
x3=rank(A3)
z3=rank([A3,B3])
% x3 and z3 does not equal so there's no solution for c.)

% d.)
A4=[1,5,-1,6;2,-1,1,-2;-1,4,-1,3;3,-7,-2,1];
B4=[19;7;30;-75];
% Checking Solutions
x4=rank(A4)
z4=rank([A4,B4])
% x4 and z4 equal so there's a solution
% Solution
Solution=A4\B4
% So, x1=5,x2=14.625,x3=-12.125,x4=-11.875

%% HW 3 Problem #6

% Interval
t=[1:0.1:3];
T=6*log(t)-7*exp(0.2*t);
% Plot
figure(2)
plot(t,T)
xlabel('Time in minutes')
ylabel('Celsius')
title('Time vs. Celsius')

%% HW 3 Problem #7

% 1.) (a == b) & ((b == c)|(a == c))
a1=13;
b1=13;
c1=2;
(a1 == b1) & ((b1 == c1)|(a1 == c1))

% 2.)
a2=13;
b2=13;
c2=2;
(a2 == b2)|((b2 == c2)&(a2 == c2))

% 1.) and 2.) are not equivalent

%% HW 3 Problem #8

% Input
x=input('Enter Grade value from 0 to 100 " nested if statement" : ');

disp('Grade Given')
% a.) nested if statements
if(x>0) & (x<=100)
    if x>=90
        disp('A')
    end
    if (x<=89) & (x>=80)
        disp('B')
    end
    if(x<=79) & (x>=70)
        disp('C')
    end
    if(x<=69) & (x>=60)
        disp('D')
    end
    if x<60
        disp('F')
    end
end

% b.) else if statements
x=input('Enter Grade value from 0 to 100 "else if statement": ');
disp('Grade Given')

if(x>0) & (x<=100)
    if x>=90
        disp('A')
    elseif (x<=89) & (x>=80)
        disp('B')
    elseif (x<=79) & (x>=70)
        disp('C')
    elseif(x<=69) & (x>=60)
        disp('D')
    else
        disp('F')
    end
end






