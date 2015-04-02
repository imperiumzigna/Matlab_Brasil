clear
clf;
clc;
syms x;
L=@(x) (-diff(x,2));
a=0;
c=1;
N=2;
M=N;
k=3+2*x^2;
for n=1:N
b(n) =vpa(x- x^(n+1));
w(n) = vpa(x- x^(n+1));
end

for i=1:N
    for j=1:N
 
      Z(i,j)  = int(w(i)*L(b(j)),a,c);
      V(i)= int(k.*w(i),a,c);
    end
end

I=inv(Z)*V';
fx=diag(I*b);
x=a:0.1:c;
exat= 5/3.*x-3/2*x.^2-1/6.*x.^4;
aprox=sum(subs(fx));
erro=aprox-exat;
%Gr�fico
plot(sum(subs(fx)));
hold on, title('M�todo dos Momentos');
plot(exat,'-or');
legend('Aproximada','Exata');
%impressao
disp('+++++++++++++++++++++++++++++M�todo dos Momentos+++++++++++++++++++++++++++\n\n');
disp(' Solu��o Exata');
disp(exat');
disp('Solu��o Aproximada');                            
disp(aprox');
disp('Erro');
disp(erro');

