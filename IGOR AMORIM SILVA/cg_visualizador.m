% pvc 
function cg_visualizador(vetor)
if length(vetor)<3
    disp('erro nas dimens�es do vetor');
end
n=length(vetor)-1;
for i=1:n
 v(i)=vetor(i);   
end

malha=meshgrid(v);
plot(malha)