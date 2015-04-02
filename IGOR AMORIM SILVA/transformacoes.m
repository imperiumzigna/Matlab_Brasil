% Transformações
% M 29
% A=[-3, 0,1]; B=[-3, 4,1]; C=[0, 4,1];D=[0,0,1];
% M 30
% A=[-2,-1,1]; B=[-2, 2,1], C=[3, 2,1]; D=[3, -1,1];
% M 31
% A=[-6,-1,1]; B=[-6, 2,1], C=[2, 2,1]; D=[2, -1,1];
% M 32
% A=[-7,-1,1]; B=[-7, 3,1], C=[4, 3,1]; D=[4,-1,1];
% Contração
resA=[0.25, 0, 0;0, 0.25, 0;0, 0, 1]*A';
resB=[0.25, 0 ,0;0, 0.25 ,0;0 ,0, 1]*B';
resC=[0.25, 0, 0;0, 0.25, 0;0, 0, 1]*C';
resD=[0.25, 0 ,0;0 ,0.25 ,0;0, 0 ,1]*D';
%
% Rotação
%rotA=[cosd(rot) -sind(rot) 0;sind(rot) cosd(rot) 0;0 0 1];
%rotB=[cosd(rot) -sind(rot) 0;sind(rot) cosd(rot) 0;0 0 1];
%rotC=[cosd(rot) -sind(rot) 0;sind(rot) cosd(rot) 0;0 0 1];
%rotD=[cosd(rot) -sind(rot) 0;sind(rot) cosd(rot) 0;0 0 1];
%
% Cisalhamento
%cisA=[1 0 0;cs 1 0;0 0 1;];
%cisB=[1 0 0;cs 1 0;0 0 1;];
%cisC=[1 0 0;cs 1 0;0 0 1;];
%cisD=[1 0 0;cs 1 0;0 0 1;];
%
% Reflexão
%refA=[-1 0 0;0 -1 0;0 0 -1];
%refB=[-1 0 0;0 -1 0;0 0 -1];
%refC=[-1 0 0;0 -1 0;0 0 -1];
%refD=[-1 0 0;0 -1 0;0 0 -1];
%


%
E=resA*A;
F=resB*B;
G=resC*C;
H=resD*D;
axis ([-10 10 -10 10]);
hold on;
fill([A(1,1) B(1,1) C(1,1) D(1,1)],[A(1,2) B(1,2) C(1,2) D(1,2)],'y');
plot([E(1,1) F(1,1) G(1,1) H(1,1)], [E(1,2) F(1,2) G(1,2) H(1,2)], 'r');
plot(A(1,1),A(1,2),'*k',B(1,1),B(1,2),'*k',C(1,1),C(1,2),'*k',D(1,1),D(1,2),'*k');
grid 
hold off;

