% Emerson Fleming
% 11-1-2021
% ME 203 Section 1001
% Homework 3
clc,clear,format compact
%% Problem 1
%given
A = [0 -7 6; 5 -4 3; 10 -1 9; 15 1 0; 20 2 -1];
%plotting column 1 (time) against columns 2 and 3 (Forces)
figure(1)
plot(A(:,1), A(:,2:end))
title('Force versus Time')
xlabel('time (s)')
ylabel('Force (N)')
grid on
%% Problem 2
%given
A = [3 7 -4 12; -5 9 10 2; 6 13 8 11; 15 5 4 1];

% part A--4x3,2nd through 4th columns of A
B = A([1:4],[2:4]) %using select rows and columns of matrix A to create matrix B

% part B--3x4,2nd through 4th rows of A
C2 = A([2:4],[1:4]);
C = reshape(C2,3,4) %use reshape to change dimensions of new matrix

% part C--2x3, first two rows and last three columns of A
D2 = A([1 2],[2:4]);
D = reshape(D2,2,3)

%% Problem 3
%givens
A = [56 32; 24 -16];
B = [14 -4; 6 -2];
% part A--array product of two matrices
A_times_B = A*B
% part B--A divided by B with array right division
A_dividedby_B = A/B
% part C--B cubed element-by-element
B_cubed = B.^3

%% Problem 4
% part A--a=6π(tan^-1(12.5))+4
a = 6*pi*atan(12.5)+4

% part B--b=5tan[3(sin-1(13/5))]
b = 5*tan(3*asin(13/5))

%% Problem 5
% part A
    % -2x + y = -5
    % -2x + y = 3
disp('Part A:')
A5a = [-2 1; -2 1];
B5a = [-5; 3];
xyA = (A5a.^-1).*B5a;
disp(xyA)

% part B
    % -2x + y = 3
    % -8x + 4y = 12
disp('Part B:')
A5b = [-2 1; -8 4];
B5b = [3; 12];
xyB = (A5b.^-1).*B5b;
B = xyB([1],[1 2]);
disp(B)

% part C
    % -2x + y = -5
    % -2x + y = -5.00001
disp('part C:')
A5c = [-2 1; -2 1];
B5c = [-5; -5.00001];
xyC = (A5c.^-1).*B5c;
C = xyC([1],[1 2]);
disp(C)

% part D
    % x_1 + 5x_2 - x_3 + 6x_4 = 19
    % 2x_1 - x_2 + x_3 - 2x_4 = 7
    % -x_1 + 4x_2 - x_3 + 3x_4 = 30
    % 3x_1 - 7x_2 - 2x_3 + x_4 = -75
disp('part D:')
A5d = [1 5 -3 6; 2 -1 1 -2; -1 4 -1 3; 3 -7 -2 1];
B5d = [19; 7; 30; -75];
xyD = (A5d.^-1).*B5d;
disp(xyD)

%% Problem 6
%givens
t=[1:0.001:3]; %time in seconds
T=(6*log(t))-7*exp(0.2*t); %temperature in degrees Celsius with respect to time
%plot of function T with respect to t
figure(6)
plot(t,T);
grid on
%titles and labels
title('Temperature versus Time')
xlabel('time (minutes)')
ylabel('temperature (degrees Celsius)')

%% Problem 7
%given inputs
a = input('Enter your a value: ')
b = input('Enter your b value: ')
c = input('Enter your c value: ')
%expressions being tested on equivalency
eqn1=(a == b) & ((b == c)|(a == c))
eqn2=(a == b)|((b == c)&(a == c))
%equivalency test using if statement
if eqn1 == eqn2
    disp('The expressions are equivalent!')
else
    disp('The expressions are not equivalent, try different a, b, and c values')
end

%% Problem 8 (part A)
%given input
x=input('Enter your grade percentage: ')

% part A--nested if statement
if x >= 90
    disp('You got an A!')
end
if x <= 89 && x >= 80
    disp('You got a B!')
end
if x <= 79 && x >= 70
    disp('You got a C!')
end
if x <= 69 && x >= 60
    disp('You got a D!')
end
if x < 60
    disp('You got an F, too bad!')
end
%% Problem 8 (part B)
%given input
x=input('Enter your grade percentage: ')

%part B--elseif clauses
if x >= 90
    disp('You got an A!')
elseif x >= 80
    disp('You got a B!')
elseif x >= 70
    disp('You got a C!')
elseif x >= 60
    disp('You got a D!')
else
    disp('You got an F, too bad!')
end