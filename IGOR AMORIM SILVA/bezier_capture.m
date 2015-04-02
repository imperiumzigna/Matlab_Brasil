% BEZIER_CAPTURE
% Versão muito comentada :)
% Descrição: Criação de curva de Bézier interativa,
% baseado no algoritmo proposto por Casteljau
% Igor Amorim Silva
% Computação Gráfica 2014.2
% Licença: GPL 3.0
% Implementação baseada em algoritmos em algoritmos compartilhados na Comunidade Matlab

% Lembrete: Plágio é "CRIME"...

% Definição das configurações da figure
Bezier_fig=figure(...
'Name','Curva de Bezier',...
'NumberTitle','Off',...
'Visible','off',...
'DoubleBuffer','on',...
'BackingStore','off',...
'Units','normalized',...
'Position',[0.51 .5 .38 .38],...
'Color',[.8 .8 .8]);
%

% Configuração das opções de visualização
axes(...
'HandleVisibility','on','Visible',...
'on','DrawMode','fast',...
'Color','none');
%

% Criação da figura de configurações básicas
figure(Bezier_fig);
axis([0 1 0 1]);
axis square;
hold on;
title('Defina os pontos de controle sobre a figura')
xlabel('Pressione o mouse no ponto escolhido');
grid;
%
% Valores iniciais para alocação
pto=1;
button=1;
%
% Loop para plotar os pontos quando clicados
while button==1,
    [P(pto,1),P(pto,2),button]=ginput(1);
    plot(P(pto,1),P(pto,2),'kO');
    if pto~=1
        plot([P(pto,1),P(pto-1,1),P(pto,2),P(pto-1,2)],'k');
    end
    pto=pto+1;
end

% Declarações básicas e callback para o mouse
m=length(P);
title('Pressione o botão direito do mouse para calcular')
xlabel('');
T=waitforbuttonpress;
%
% Prepara os pontos clicados para serem transformados em uma curva de
% Bézier
Q=P;
%

% Prepara os pontos da curva de Bézier
for k=1:m-1,
    for i=1:m-k,
        Q(i,1:2)=0.5.*Q(i,1:2)+0.5.*Q(i+1,1:2);
        plot(Q(i,1),Q(i,2),'ro');
        if i~=1
            plot([Q(i-1,1),Q(i,1)],[Q(i-1,2),Q(i,2)],'r');
        end
        
    end
end
plot(Q(1,1),Q(1,2),'bo');
T=waitforbuttonpress;
hold on
%

% Plot da curva de Bézier
for tau=0:0.01:1,
    Q=P;
    for k=1:m,
        for i=1:m-k,
            Q(i,1:2)=(1-tau).*Q(i,1:2)+tau.*Q(i+1,1:2);
        end
    end
    
    
    plot(Q(1,1),Q(1,2),'b.');
end
%

% Redesenha 
drawnow;
%            
        



