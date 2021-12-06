% Emerson Fleming
% 11-12-2021
% ME 203 Section 1001
% Homework 4

%% Problem 1 (Part A)--calculate B by using a for loop
clc,clear,format compact

%given
A=[3 5 -4; -8 -1 33; -17 6 -9];

%for loop to find B
for i=1:length(A) %uses rows 1 through 3 of array A; length function allows code to still work if A is expanded to more rows
    for j=1:length(A) %uses columns 1 through 3 of array A; length function allows code to still work if A is expanded to more columns
        if A(i,j)>=1 %if statement finds elements greater than or equal to 1 (no less than 1)
            B(i,j)=log(A(i,j)); %array elements in A greater than or equal to 1 will have natural log taken in array B
        else
            B(i,j)=A(i,j)+20; %array elements in A less than 1 will have 20 added to them in array B
        end %since greater than, equal to, and less than have been taken care of, no other statements are necessary
    end
end
B %end code with B so command window displays final answer array B

%% Problem 1 (Part B)--calculate B without a loop
clc,clear,format compact

%given
A=[3 5 -4; -8 -1 33; -17 6 -9];

%calculating B without a loop
    %since we can't use a for loop, we can create an if statement for each
    %individual number in array A to build array B
A11=A(1,1); %finds array element in A at first row and first column
if A11>=1 %if this element is greater than or equal to 1
    B11=log(A11); %then take natural log of element for corresponding point in array B
else %otherwise
    B11=A11+20; %add 20 to the element if it's less than 1 for corresponding point in array B
end %repeat this process for each point in array A
A12=A(1,2);
if A12>=1
    B12=log(A12);
else
    B12=A12+20;
end
A13=A(1,3);
if A13>=1
    B13=log(A13);
else
    B13=A13+20;
end
A21=A(2,1);
if A21>=1
    B21=log(A21);
else
    B21=A21+20;
end
A22=A(2,2);
if A22>=1
    B22=log(A22);
else
    B22=A22+20;
end
A23=A(2,3);
if A23>=1
    B23=log(A23);
else
    B23=A23+20;
end
A31=A(3,1);
if A31>=1
    B31=log(A31);
else
    B31=A31+20;
end
A32=A(3,2);
if A32>=1
    B32=log(A32);
else
    B32=A32+20;
end
A33=A(3,3);
if A33>=1
    B33=log(A33);
else
    B33=A33+20;
end
%once all corresponding values for array B have been found, build a 3x3
%array using the corresponding values B11-B33
B=[B11 B12 B13; B21 B22 B23; B31 B32 B33]
%outcome values are identical; the code works!

%% Problem 2--inserting image of table from script
clc,clear,format compact

%provided code to solve for k,b,x,y
k = 1; %initial value k
b = -2; %initial value b
x = -1; %initial value x
y = -2; %initial value y

%provided code to solve for k,b,x,y
while k <= 3 k,
b, x, y
y = x^2 - 3;
if y < b
b = y;
end
x = x + 1;
k = k + 1;
end
%only three values produced for k,b,x,y each; table only needs 3 rows

%displaying table of results image
img=imread('Problem_2_ME203_HW4.png'); %draws out image of table of results
image(img); %displays image when code runs

%% Problem 3--using switch to find frictional force
clc,clear,format compact

% input W (weight of object)
W=input('Enter the weight of the object: '); %accepts numerical input for weight W

%input for static coefficient of friction
disp('ACCEPTABLE INPUTS: metal on metal, wood on wood, metal on wood, rubber on concrete') %provides user with list of acceptable inputs for following command
Objects_of_Friction=input('Enter the objects in friction with each other: ','s'); %accepts text input to decide friction coefficient mu

%switch command that finds input objects of friction 
%and multiplies them by input W to find F (frictional force)
switch Objects_of_Friction
    case {'metal on metal'} %mu=.2
        F=.2*W
    case {'wood on wood'} %mu=.35
        F=.35*W
    case {'metal on wood'} %mu=.4
        F=.4*W
    case {'rubber on concrete'} %mu=.7
        F=.7*W
    otherwise
        disp('Unknown materials; check spelling and materials and try again')
        F=NaN
end

%% Problem 4--using polyfit to find coefficients
clc,clear,format compact

%function: y=ax^3+bx^2+cx+d

%input statements for (xi,yi), i=1,2,3,4
x1=input('Enter the value of x1: ');
y1=input('Enter the value of y1: ');
x2=input('Enter the value of x2: ');
y2=input('Enter the value of y2: ');
x3=input('Enter the value of x3: ');
y3=input('Enter the value of y3: ');
x4=input('Enter the value of x4: ');
y4=input('Enter the value of y4: ');

%create arrays x and y based on input values of xi and yi
x=[x1,x2,x3,x4]; %array x from xi inputs
y=[y1,y2,y3,y4]; %array y from yi inputs

%use x and y arrays for polyfit
f=polyfit(x,y,3); %3rd degree polynomial denoted with "3",x and y arrays used to find coefficients
a=f(1) %denotes coefficient a in function
b=f(2) %denotes coefficient b in function
c=f(3) %denotes coefficient c in function
d=f(4) %denotes coefficient d in function

%% Problem 5--minimum distance and closest-to-origin time of parameter function
clc,clear,format compact

%for loop
i=1; %iteration in loop starts at i=1
for t=[0:.001:4];
    x=(5.*t)-10; %x function in terms of t
    y=(25.*t.^2)-(120.*t)+144; %y function in terms of t
    d(i)=sqrt((x.^2)+(y.^2)); %distance between two points (x1,y1) and (x2,y2)
    i=i+1; %iteration i increases by 1 each run through for loop
end
%calculating minimum distance d and closest time t
min_distance=min(d) %finds the minimum value of distance d
wheret=find(d==min(d)); %use find function to locate where min(d) is in array d (gives t location)
tmin=wheret*.001%multiply by spacing in array t (.001) to find time t where d is closest to origin