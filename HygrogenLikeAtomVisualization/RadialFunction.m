function Rnl = RadialFunction(n,l,Z,r)  %径向函数

epsilon0 = 8.854187817*10^(-12);    %真空介电常数
hbar = 1.054571810*10^(-34);    %约化普朗克常数
e = 1.602176621*10^(-19);   %电子电荷量
me = 9.109383561*10^(-31);  %电子质量
a0 = 4*pi*epsilon0*hbar^2/(me*e^2); %玻尔半径

A = sqrt((2*Z/(n*a0))^3*factorial(n-l-1)/(2*n*factorial(n+l))); %归一化常数
L = LaguerreL(n-l-1,2*l+1,2*Z*r/n); %连带拉盖尔多项式
Rnl = A*power(2*Z*r/n,l).*exp(-Z*r/n).*L;   %径向函数
end

function L = LaguerreL(n,a,x)   %连带拉盖尔多项式
L = 0;
for i = 0:n
    L = L + power(-1,i)*factorial(n+a)*power(x,i)/(factorial(i)*factorial(n-i)*factorial(a+i));
end
end