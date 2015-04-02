clc;clear;
fprintf('itera��o\ttempo\n');
fid = fopen('resultados_ex1_ode23.txt', 'w');

fprintf(fid, 'Itera��o Tempo\r\n\n');
% Runge Kutta 23 ode23
for n=1:30
tic;
sol=dsolve('D2y+3*Dy+2*y=4*x^2','y(1)=1,y(2)=6','x');
t(n)=toc;
fprintf(fid,'%d\t%f\r\n',n,t(n));
fprintf('%d\t%f\n',n,t(n));
end
fclose(fid);
type resultados_ex1_ode23.txt;
plot(t,'--b');
hold on;
fprintf('itera��o\ttempo\n');
% Segunda parte
fid2 = fopen('resultados_ex1_ode45.txt', 'w');

fprintf(fid2, 'Itera��o Tempo\r\n\n');
% Runge Kutta 45 45
for n=1:30
tic;
sol=dsolve('D2y+3*Dy+2*y=4*x^2','y(1)=1,y(2)=6','x');
tnovo(n)=toc;
fprintf(fid2,'%d\t%f\r\n',n,t(n));
fprintf('%d\t%f\n',n,t(n));
end
type resultados_ex1_ode45.txt;
fclose(fid2);
plot(tnovo,'r');
% Rosembrok 23s
fid3 = fopen('resultados_ex1_Rosembrok.txt', 'w');

fprintf(fid3, 'Itera��o Tempo\r\n\n');

for n=1:30
tic;
sol=dsolve('D2y+3*Dy+2*y=4*x^2','y(1)=1,y(2)=6','x');
t_rosen(n)=toc;
fprintf(fid3,'%d\t%f\r\n',n,t(n));
fprintf('%d\t%f\n',n,t(n));
end
type resultados_ex1_Rosembrok.txt;
fclose(fid3);
plot(t_rosen,'g')
grid on,title('Desempenho'), legend('Runge Kutta -> ode23','Runge Kutta -> ode45','Rosembrok -> ode23s'),xlabel('Itera��es'),ylabel('tempo');
