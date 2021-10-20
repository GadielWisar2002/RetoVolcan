clear
clc
close all





%Parametros del volcan
radio=0:0.5:25;
%Almacenar datos
[u,v]=meshgrid(radio);
%Funcion parametrica del vólcan
x = u.*cos(v);
y=u.*sin(v);
z=-(u.^3/4-4000);
surf(x,y,z);

%Datos entrada

cantidad_rocas = 120;
masa_rocas = randi([1 10],1,cantidad_rocas);

theta = [];

for i=[1:120]
    if masa_rocas(i) <= 5
        theta(i)=randi([60 90],1,1)
    else
        theta(i)=randi([30 60],1,1)
    end
end

%altura inicial
z0 = 4000

%Coordenadas
x0 = 0;
y0 = 0;

%velocidad
v0 = 10;

%angulo phi s el angulo en coordenadas esfericas
phi=randi([0 90],1,120);











    

