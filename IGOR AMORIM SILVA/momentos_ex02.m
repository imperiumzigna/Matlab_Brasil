clear;
clc;
clf;

%
% Implementa�ao do M�todo dos Momentos
% L= Vetor com a Ordem das Derivadas [coeficientes das derivadas diminuindo em ordem 6 at� a constante]
% kcoef= Vetor com os Coeficientes da E.D.[coeficientes diminuindo at� a constante]
% a= Intervalo Inferior
% b= Intervalo Superior

syms x;
%Operador com Ordem das Derivadas
L=[0 0 0 0 2 0 0];
% Fun��o de Aproxima��o
kcoef=[0 0 0 0 1 1 5];
kconhecidos=(kcoef(1))*x^6+(kcoef(2))*x^5+(kcoef(3))*x^4+(kcoef(4))*x^3+(kcoef(5))*x^2+(kcoef(6))*x^1+(kcoef(7));
%Limites de Integra��o
a=0;
b=1;

N=2;
% Itera��o da fun��o de pondera��o
for i=1:N
    pond(i)=x-x^(i+1);
end
% Fun��es Peso
for j=1:N
    pes(j)=pond(j);
end
%Encontrando as bases do Operador
for k=1:N
    op_bases(k)=((L(1))*diff(pond(k),6))+((L(2))*diff(pond(k),5))+((L(3))*diff(pond(k),4))+((L(4))*diff(pond(k),3))+((L(5))*diff(pond(k),2))+((L(6))*diff(pond(k),1))+L(1);
end
% Matriz com os resultados da integra��o das fun��es peso vezes as bases do
% operador
for xx=1:N
    for yy=1:N
Z(xx,yy)=int(pes(xx)*op_bases(yy),a,b);
    end
end
% Substituindo meus valores kconhecidos* fun��o de pondera��o
for zz=1:N
V(zz)=int(kconhecidos*pond(zz),a,b);
end
I=inv(Z)*V';
x=linspace(0,1,:);
func=I(1)*pond(1)+I(2)*pond(2);
m=subs(func);
plot(m);
hold on;
C4=1;
exat=dsolve('D2y + y +5','y(0)=0,Dy(0)=1','x');
fp=subs(exat);
plot(fp,'--r');
title('M�todo dos Momentos'),legend('Sol. Aproximada','Sol. Exata');
