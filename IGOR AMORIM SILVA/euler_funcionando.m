%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                               M�todo de Euler                                          %                                              
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   EULER_FUNCIONANDO 
%
% Utilidade :  fun��o para resolver EDOs com um PVI
%
% Declara��o : euler_funcionando(f,a,b,ya,N,exat)
%
% Legenda :
% f - fun��o do tipo f(x,y)
% a - limite inferior 
% b - limite superior
% N - n�mero de pontos para definir o passo
% ya - PVI
% exat - solu��o exata
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exemplo
%
% f = @(x,y) y-x^2+1;
% a = 0; b = 2; n = 10; ya = 0.5;
% exata = @(x) (x+1)^2-0.5*exp(x);
%
% euler_funcionando(f,a,b,ya,N,exat)
function  euler_funcionando(f,a,b,ya,N,exat)
clc;clf;
h=(b-a)/N;
x(1)=a;
u(1)=ya;
fprintf('\n\n%%%%%%%%%%%%%%%% M�todo de Euler %%%%%%%%%%%%%%%%%');
fprintf('\n\nSolu��o\n');
fprintf('\nX\t\tU\t\tErro\n\n');
for i=2:N+1
    u(i) = u(i-1) + h*f(x(i-1),u(i-1));
    x(i)=a+(i-1)*h;
    s_exata(i) = exat(x(i));
    erro(i)= abs(s_exata(i)-u(i));
end
% Impress�o de resultados
fprintf('%.4f\t\t%.4f\t\t%.6f\n',x',u',erro');
hold on, title('M�todo de Euler'),grid on;
plot(x,u,'--b');plot(x,s_exata,'--r');
legend('Solu��o Aproximada','Solu��o Exata'),xlabel('x'),ylabel('u');
end
