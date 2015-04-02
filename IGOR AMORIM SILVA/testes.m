j=0.1;
D=2;
M=5.6;
g=9.8;
L = 0.6;

num= 1/j
den= [1 D/j (M*g*L)/(2*j)]

sys=tf(num,den)

T_sys=feedback(sys,1)
figure(1)
step(T_sys)
raizes=roots ([1 20 174.6])