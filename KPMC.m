function dx=KPMC(t,x)
%--Parámetros--%
L=2e-3;
R=10;
C=10e-6;
Uin=32;
d=0.381;%Ciclo de trabajo del 40%
%--Matriz de variables de estado--%
dx=zeros(2,1);
%--Representación de estados--%
dx(1)= -((1/L)*x(2))+((Uin/L)*d);
dx(2)=((1/C)*x(1))-((1/(R*C))*x(2));