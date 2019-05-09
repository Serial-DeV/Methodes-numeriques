clear all;close all;clc;


figure(1);
subplot(3,1,1)
TimeLoop(6360e3+0e3,200,50,1e-1);
subplot(3,1,2)
TimeLoop(6360e3+0e3,200,50,1);
subplot(3,1,3)
TimeLoop(6360e3+0e3,200,50,10);
%TimeLoop(6360e3+1e3,0,15,1e-2);