clc
clear all
close all

num4 = conv(1.05,[0.4762 1]);
den4 = conv(conv([0.125 1],[0.5 1]),[1 1 1]);
sys4 = tf(num4,den4);
step(sys4,'r');
S4 = stepinfo(sys4);
[z4,p4] = tf2zp(num4,den4);

grid;hold on;
legend('sys4');
set(gca,'GridLineStyle',':');
set(gca,'GridAlpha',1);
set(gca,'YTick',0:1.5/20:1.5);
xlabel('Time(s)');
ylabel('Amplitude');

num1 = 1.05;
den1 = conv(conv([0.25 1],[0.5 1]),[1 1 1]);
sys1 = tf(num1,den1);
step(sys1,'g');
S1 = stepinfo(sys1);
[z1,p1] = tf2zp(num1,den1);



num2 = num4;
den2 = den1;
sys2 = tf(num2,den2);
step(sys2,'y');
S2 = stepinfo(sys2);
[z2,p2] = tf2zp(num2,den2);


num3 = [1.05 1.05];
den3 = den1;
sys3 = tf(num3,den3);
step(sys3,'b');
S3 = stepinfo(sys3);
[z3,p3] = tf2zp(num3,den3);


num5 = num4 ;
den5 = conv([0.5 1],[1 1 1]);
sys5 = tf(num5,den5);
step(sys5,'k');
S5 = stepinfo(sys5);
[z5,p5] = tf2zp(num5,den5);


num6 = 1.05;
den6 = [1 1 1];
sys6 = tf(num6,den6);
step(sys6,'m');
S6 = stepinfo(sys6);
[z6,p6] = tf2zp(num6,den6);


title('Comparison of unit step response of higher order systems');
hold off;
