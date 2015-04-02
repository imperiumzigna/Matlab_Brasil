%EDO 01 ---> u'' + u + x = 0
%Lu - P = 0
%Lu = u'' + u
%P = x
%PontosColoc 0,25 e 0.5

syms x; %Variavel simb�lica

%Vetor com os coeficientes de u da EDO 1u'' + 0u' + 1u' + x = 0:
coef = [-1 -1 2 ];

%Termo independente P
P = x;

%Dominio do meu funcional (a,b)
a = 0;
b = 1;

%Pontos escolhidos para aplicar o metodo de coloca��o


%Chamada do m�todo da coloca��o
[aproximada,pontos] = mmq( coef, P, a, b);

disp('Solu��o Exata:')
ue = dsolve('-D2u-Du+2*u =-x','u(0) = 0,u(1) = 0','x')

uegrafico = subs(ue, x, pontos);
erro= uegrafico-subs(aproximada);
erro'
plot(pontos,uegrafico,'--b',pontos,aproximada,'or'); legend('Solu��o Exata','Solu�ao Aprox.');
title('M�todo dos M�nimos Quadrados');