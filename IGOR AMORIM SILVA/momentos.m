clear
clf;
clc;
syms x;

L=input('Operador:');
a=input('Intervalor Inferior:');
c=input('Intervalo Superior:');
N=input('N�mero de Itera��es:');

k=input('Fun��o Conhecida:');
exat= input('Solu��o Exata:');
for n=1:N
b(n) =vpa(input('Fun��o de Aproxima��o:')); %Fun��o de Aproxima��o
w(n) = vpa(input('Fun��o de Pondera��o:')); %Fun�o de Pondera��o
end

for i=1:N
    for j=1:N
       Z(i,j)  = int(w(i)*L(b(j)),a,c); %Matriz das integrais da fun��o de pondera��o * o operador com a fun��o de aproxima��o substituida
      V(i)= int(k.*w(i),a,c); %Matriz  das integrais da fun��o conhecida * fun��o de pondera��o
    end
end

I=inv(Z)*V';
fx=diag(I*b);
x=a:0.1:c;

aprox=sum(subs(fx));
erro=aprox-exat;
%Gr�fico
plot(sum(subs(fx)));
hold on, title('M�todo dos Momentos');
plot(exat,'-or');
legend('Aproximada','Exata');
%impressao
fprintf('+++++++++++++++++++++++++++++M�todo dos Momentos+++++++++++++++++++++++++++\n\n');
fprintf(' Solu��o Exata                  Solu��o Aproximada                            Erro\n\n');
fprintf('%.3f\t%.4f\t%.4f\n',exat,aprox,erro);

