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
%            Diferenciais do tipo Dy/Dx = --- com coeficientes "conhecidos".
% 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc;
clf;
% Variables
q = 1.0;               % Distribui��o dos Pontos
n = 100;                            % N�mero de Pontos
                                    
				    
% Par�metros

% Chute de alguns valores para serem os coeficientes                                    
c1 = 1.0/(2.0*pi^3.0);              % Coeficiente para o M�todo do Subdom�nio
c2 = 2.0/(pi^3.5);                  % Coeficiente para o M�todo da Coloca��o
c3 = 4.0/(pi^5.0);                  % Coeficiente para o M�todo dos M�nimos Quadrados
c4 = 4.0/(pi^5.0);                  % Coeficiente para o M�todo de Galerkin


%-----------------------------------------------------------------

% C�lculo das curvas
for i=1:1:n
  x(i) = (i-1)/(n-1); % Vetor Igualmente Espa�ado
  exata(i) = exp(2.*x(i));   % Solu��o Exata
  %
  w = 2*x(i);                             % E.D. do tipo Dy/Dx = sin(pi*x(i))
  w1(i) = c1*w;                                % M�todo dos Sub-Regi�es
  w2(i) = c2*w;                                % M�todo da Coloca��o
  w3(i) = c3*w;                                % M�todo dos M�nimos Quadrados
  w4(i) = c4*w;                                % M�todo de Galerkin
end

%-----------------------------------------------------------------
% Gr�fico
hold on;
figure(1);title('M�todos'),grid on;
plot(x,exata,'b',x,w1,'--r');
legend('Solu��o Exata','M�todo dos Subdom�nios');
