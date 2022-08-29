%graph analysis for a discreate dynamical system

close all;
clear;
clc;
clf;

xlabel('x');
ylabel('y');

box on;
f = @(x)(x.^2-0.25); % iteration founction, remember to add '.'
x = 0.5; % initial value
t = 100;% iteration times, where t starts from 0

mini = x;% range
maxi = x;
for i = 0 : t
    y = f(x);
    hold on;
    plot([x,x],[x,y],'-k.');
    hold on;
    plot([x,y],[y,y],'-k.');
    hold on;
    x = y;
    mini = min(x,mini);
    maxi = max(x,maxi);
end
hold on;
fplot(f,[mini-0.1,maxi+0.1]); %draw founction
hold on;
fplot(@(x)x,[mini-0.1,maxi+0.1]);%draw y=x