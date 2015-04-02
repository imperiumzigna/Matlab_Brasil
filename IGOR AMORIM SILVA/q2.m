%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                     %  
%                                                                     %                      
%                         M�todos : -> M�todo dos Subdom�nios         %      
%                                   -> M�todo da Coloca��o            %      
%                                   -> M�todo dos M�nimos Quadrados   %
%                                   -> M�todo de Galerkin             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Alunos: Igor Amorim Silva - 12092036 , Claudyane Ara�jo - 1209207
%
% Descri��o: Implementa��o dos M�todos citados para resolu��o de Equa��es
%            Diferenciais do tipo Dy/Dx = --- com coeficientes conhecidos.
% 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc;
clf;
% Variables
tam = input('Tamanho:'); %1.0;                            % length of the beam
                           % (bending) stiffness
q = input('Distribui��o dos Pontos:');%1.0;                            % Distribui��o dos Pontos

n = input('N�mero de Pontos:');% 100;                            % number of sample points
                                    
				    
% Par�metros
a = 1;                              % Abrevia��o
c1 = 1.0/(2.0*pi^3.0);              % Coeficiente para o M�todo do Subdom�nio
c2 = 1.0/(pi^4.0);                  % Coeficiente para o M�todo da Coloca��o
c3 = 4.0/(pi^5.0);                  % Coeficiente para o M�todo dos M�nimos Quadrados
c4 = 4.0/(pi^5.0);                  % Coeficiente para o M�todo de Galerkin
w1=[];w2=[];w3=[];w4=[];
%-----------------------------------------------------------------
% Calculo das curvas
for i=1:1:n
  x(i) = (i-1)/(n-1); % Vetor Igualmente Espa�ado
  exata(i) =(x(i)^4.0-2.0*x(i)^3.0+x(i))*a/24.0;   % Solu��o Exata
  %
  w =  sin(pi*x(i));                             % E.D. do tipo Dy/Dx = sin(pi*x(i))
  w1(i) = c1*a*w;                                % M�todo dos Sub-Regi�es
  w2(i) = c2*a*w;                                % M�todo da Coloca��o
  w3(i) = c3*a*w;                                % M�todo dos M�nimos Quadrados
  w4(i) = c4*a*w;                                % M�todo de Galerkin
end

%-----------------------------------------------------------------
% plot
hold on;
figure(1);title('M�todos dos Res�duos Ponderados'),grid on;
plot(x,exata,'b',x,w1,'r',x,w2,'g',x,w3,'p',x,w4,'k');
legend('Solu��o Exata','M�todo dos Subdom�nios','M�todo da Coloca��o','M�todo dos M�nimos Quadrados','M�todo de Galerkin')
