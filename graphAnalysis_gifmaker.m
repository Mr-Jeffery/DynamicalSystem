%graph analysis for a discreate dynamical system

close all;
clear;
clc;
clf;

xlabel('x');
ylabel('y');

box on;
f = @(x)(x.^2-1); % iteration founction, remember to add '.'
x = 0.5; % initial value
min = -0.4;% range
max = 0.8;
t = 100;% iteration times, where t starts from 0

fplot(f,[min,max]); %draw founction
hold on;
fplot(@(x)x,[min,max]);%draw y=x

%get initial frame and form ducument, the line below would produce a gif
% pic = frame2im(getframe(gcf));
% [pic,map] = rgb2ind(pic,256);
% imwrite(pic,map,'result.gif','gif','LoopCount',inf,'DelayTime',0.5);

for i = 0 : t
    y = f(x);
    hold on;
    plot([x,x],[x,y],'-k.');
    hold on;
    plot([x,y],[y,y],'-k.');
    hold on;
%     the line below would produce a gif
%     pic = frame2im(getframe(gcf));
%     [pic,map] = rgb2ind(pic,256);
%     imwrite(pic,map,'result.gif','gif','WriteMode','append','DelayTime',0.1);
    x = y;
end
