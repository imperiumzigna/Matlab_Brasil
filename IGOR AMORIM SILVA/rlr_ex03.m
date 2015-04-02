%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                     %  
%                                                                     %                      
%                         M�todo Rayleigh Ritz                        %      
%                                                                     %      
%                                                                     %      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Alunos: Igor Amorim Silva - 12092036 , Claudyane Ara�jo - 1209207
%
% Descri��o: Implementa��o do M�todo de Rayleigh Ritz para resolu��o de Equa��es
%            Diferenciais de Primeira e Segunda Ordem.
% 
% Obs.: Foram utilizadas apenas 3 itera��es de k... 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clf;
clc;

disp('\\\\\\\\\\\\\\\\\\\\\\ M�todo Rayleigh Ritz /////////////////////');
a=1; % Intervalo Inferior
b=2; % Intervalor Superior
n=50;
syms x;
%Condi��es de Contorno
for i=1:n
phi(i)=x^i-x^(i+1);% fun��o de aproxima��o para os respectivos valores de k
end


% Equa��o Diferencial
J=@(y)(diff(y)-2*y*x); % Colocar a E.D
A=[];
% Substitui��o dos Valores no funcional

JY=J(sum(phi));
%
% Encontranto os valores ak
 A=int(JY,a,b);
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Y=inline(A*JY);  % A*sum(phi)
   disp('Equa��o Aproximada');
      disp(Y);
% Plotagem do Gr�fico
x=a:0.01:b;
plot(Y(x),'--b');  
hold on, grid on, title('M�todo de Rayleigh Ritz');
exat=exp(x.^2);
plot(exat,'--r')
legend('Sol. Aproximada','Sol. Exata');

% ERRO
erro= exat-Y(x);
disp('Exata');
disp(exat');
disp('Aproximada');
disp(Y(x)');
disp('Erro');
disp(erro');