%% This script tests the linear regression 
% script against the polyfit function of matlab

clear all;
close all;

% create test signal
N = 1000;
xl = [0 3];
x = xl(2)*rand(N,1);
y = x + (rand(N,1)-.5);

% standart polyfit
tic
p = polyfit(x,y,1)
toc

% linear regression;
tic
[lg] = linearReg(x,y)
toc

figure
plot(x,y,'.')
hold all;
plot(xl, polyval(p, xl));
plot(xl, polyval(lg, xl));


