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
a=input('Intervalo Inferior:'); % Intervalo Inferior
b=input('Intervalor Superior:'); % Intervalor Superior
n=input('N�mero de itera��es:');
syms x;
%Condi��es de Contorno
cc(1,1)=a;
cc(2,1)=b;
cc(1,2)=input('Condi��o de Contorno [1]:');
cc(2,2)=input('Condi��o de Contorno [2]:');
for i=1:n
phi(i)=input('Fun��o de Aproxima��o:');% fun��o de aproxima��o para os respectivos valores de k
end


% Equa��o Diferencial
J=@(y)(input('E.D.:'));% Colocar a E.D
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
x=0:0.1:1;
plot(Y(x),'--b');  
hold on, grid on, title('M�todo de Rayleigh Ritz');
exat=input('Solu��o Exata:');
plot(exat,'-og')
legend('Sol. Aproximada','Sol. Exata');

% ERRO
erro= exat-Y(x);
disp('Erro');
disp(erro);