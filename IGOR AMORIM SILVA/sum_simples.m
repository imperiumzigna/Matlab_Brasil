% A B C D E F G H I J K L M N

% x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14

syms A B C D E F G H I J K L M N

f= [1 1 1 1 1 1 1 1 1 1 1 1 1 1]

[A b]=  equationsToMatrix([2*A + 4*B + 10*C + 6*D + 7*G + 9*H + 2*M == 40 2*A + 4*B + 10*C + 4*E + 9*H + 2*M == 31 2*A + 4*B + 10*C + 4*E + 5*F + 8*J + 4*K + 6*N == 43 2*A + 4*B + 10*C + 4*E + 5*F + 8*J + 5*L + 6*N == 44 2*A + 4*B + 10*C + 7*I + 8*J + 4*K + 6*N == 41 2*A + 4*B + 10*C + 7*I + 8*J + 5*L + 6*N == 42])
A=double(A);
b=double(b);
Aeq=[];
beq=[];

lb=zeros(14,1);

ub=Inf(14,1);

intcon=[1;2;3;4;5;6;7;8;9;10;11;12;13;14];

[x,fval]=intlinprog(f,intcon,A,b,[],[],lb,ub)