clc
clear
n1 = 3 ;
n2 = 5 ;
alpha_1 = 20 *pi /180 ;
alpha_2 = 30 *pi /180 ;
initial = [alpha_1 ; alpha_2] ;
syms x1 x2 
f1=(1-2*cos(n1*x1)+2*cos(n1*x2));
f2=(1-2*cos(n2*x1)+2*cos(n2*x2));
f1_initial=(1-2*cos(n1*alpha_1)+2*cos(n1*alpha_2));
f2_initial=(1-2*cos(n2*alpha_1)+2*cos(n2*alpha_2));
fun_initial=[f1_initial ; f2_initial];
j=[subs(diff(f1,x1),alpha_1), subs(diff(f1,x2),alpha_2); subs(diff(f2,x1),alpha_1), subs(diff(f2,x2),alpha_2)];
j= double(j);
j_inverse=inv(j);
alpha_new=( [alpha_1 ; alpha_2] - j_inverse * fun_initial )  * 180 / pi ;
alpha_1_new=alpha_new(1,1)  ;
alpha_2_new=alpha_new(2,1)  ;
t1=alpha_1_new * 0.02 /360 ;
t2=alpha_2_new * 0.02 /360 ;
t0=1e-9;