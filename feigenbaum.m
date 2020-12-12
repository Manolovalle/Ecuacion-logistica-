Nf=500 %numero ¯nal de iteraciones
Ni=450 %numero desde donde se seleccionan las iteraciones
rmin=2 %valor de R minimo
rmax=4 %valor de R maximo
r=[rmin:0.001:rmax];
N=length(r);
y=zeros(Nf,N);
z=zeros(Ni,N);
for x=1:N
y(1,x)=0.2;
for n=1:Nf;
y(n+1,x)=r(x)*y(n,x)*(1-y(n,x));
end
for w=1:Ni
z(w,x)=y(w+(Nf-Ni-1),x);
end
end
plot(r,z,'.b','markersize',1);
title('Bifurcacion de Feigenbaum');
xlabel('r');
ylabel('x(n)');